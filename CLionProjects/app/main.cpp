#include <iostream>
#include "calculater.h"
#include "GL/glew.h"
#include "GLFW/glfw3.h"
#include <math.h>
#include <vector>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

void ErrCallback(int code,const char* msg) {

}

GLFWwindow* window;

struct Size {
    float x;
    float y;
};

Size SCREEN_SIZE = {
        .x = 1024,
        .y = 768,
};

class Shader {
public:
    Shader(const std::string &vs, const std::string &fs) {
        this->prog = this->createShader(vs, fs);
    }

    ~Shader() {
        glDeleteProgram(prog);
    }

    void Use() {
        glUseProgram(prog);
    }

private:
    GLint compileShader(const char* shader, GLenum type) {
        GLint vertexShader = glCreateShader(type);
        glShaderSource(vertexShader, 1, &shader, NULL);
        glCompileShader(vertexShader);
        GLint status;
        glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &status);
        if (status == GL_FALSE) {
            char buf[1024];
            GLint len;
            glGetShaderInfoLog(vertexShader, 1024, &len, buf);
            glDeleteShader(vertexShader);
            std::cerr<<buf<<std::endl;
            exit(1);
        }
        return vertexShader;
    }


    GLuint createShader(const std::string &vertexShaderSrc, const std::string &fragShaderSrc) {
        GLint vertexShader = compileShader(vertexShaderSrc.c_str(), GL_VERTEX_SHADER);
        GLint fragShader = compileShader(fragShaderSrc.c_str(), GL_FRAGMENT_SHADER);
        GLuint p = glCreateProgram();
        glAttachShader(p, vertexShader);
        glAttachShader(p, fragShader);
        glLinkProgram(p);
        GLint status;
        glGetProgramiv(p, GL_LINK_STATUS, &status);
        if (status == GL_FALSE) {
            std::cerr<<"link err"<<std::endl;
            exit(1);
        }
        glDeleteShader(vertexShader);
        glDeleteShader(fragShader);
        return p;
    }

public:
    GLuint prog;
};

struct Attrib {
    enum Enum {
        Position,
        Color,
        TexCoord,
    };
};

struct AttribType {
    enum Type {
        Float,
        Uint8,
    };

    static GLenum GLType(AttribType::Type type) {
        switch (type) {
            case Float:
                return GL_FLOAT;
            case Uint8:
                return GL_UNSIGNED_BYTE;
        }
    }

    static int TypeBytes(AttribType::Type type) {
        switch (type) {
            case Float:
                return sizeof(float);
            case Uint8:
                return sizeof(uint8_t);
        }
    }
};

class VertexDecl {
public:
    VertexDecl() {

    }

    VertexDecl& Add(Attrib::Enum attrib, int num, AttribType::Type type, bool normalize = false) {
        layouts.push_back({.attrib = attrib, .num = num, .type = type, .normalize = normalize});
        return *this;
    }

    void GL_Bind() {
        int stride = Stride();
        int32_t offset = 0;
        for (const _Layout& layout: layouts) {
            // 这里和glsl中的layout & location 相关
            std::cout << layout.attrib << std::endl;
            std::cout << layout.normalize << std::endl;
            std::cout << layout.num << std::endl;
            std::cout << layout.type << std::endl;
            std::cout << "~~~~~~~~~~~~" << std::endl;

            glVertexAttribPointer(layout.attrib, layout.num, AttribType::GLType(layout.type), layout.normalize?GL_TRUE:GL_FALSE, stride, (void*)((intptr_t)offset));
            offset += AttribType::TypeBytes(layout.type) * layout.num;
        }
    }

    void GL_EnableAttribs() {
        for (const _Layout& layout: layouts) {
            glEnableVertexAttribArray(layout.attrib);
        }
    }

    void GL_DisableAttribs() {
        for (const _Layout& layout: layouts) {
            glDisableVertexAttribArray(layout.attrib);
        }
    }

    int Stride() {
        int acc = 0;
        for (const _Layout& layout: layouts) {
            acc += AttribType::TypeBytes(layout.type) * layout.num;
        }
        return acc;
    }

private:
    struct _Layout {
        Attrib::Enum attrib;
        int num;
        AttribType::Type type;
        bool normalize;
    };
    std::vector<_Layout> layouts;
};

struct Texture {
    enum Wrap {
        Repeat = GL_REPEAT,
        Clamp = GL_CLAMP_TO_EDGE,
    };

    enum Filter {
        Nearest = GL_NEAREST,
        Linear = GL_LINEAR,
    };
};

struct Material {
public:
    Material(const std::string &vs, const std::string &fs) {
        shader = new Shader(vs, fs);
    }

    void SetTexture(const std::string &name, const std::string &filename, Texture::Wrap wrap) {
        textureName = name;
        int width;
        int height;
        int nrChannels;
        stbi_set_flip_vertically_on_load(1);
        uint8_t *data = stbi_load(filename.c_str(), &width, &height, &nrChannels, 0);
        assert(data);
        texWidth = width;
        texHeight = height;
        glGenTextures(1, &texture);
        glBindTexture(GL_TEXTURE_2D, texture);

        //对于repeat来说，必须要是2的N次方才不会崩溃
        if (wrap == Texture::Repeat) {
            float nPowderof2 = log2(width);
            if(nPowderof2 - (int)nPowderof2 > 0){assert(0);}
        }

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wrap);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wrap);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

        GLenum  format;
        if(nrChannels == 3){
            format = GL_RGB;
        }else if (nrChannels == 4){
            format = GL_RGBA;
        }else if (nrChannels == 1){
            format = GL_LUMINANCE;
        }

        if(format == GL_LUMINANCE || format == GL_RGB){
            glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
        }else{
            glPixelStorei(GL_UNPACK_ALIGNMENT, 4);
        }

        glTexImage2D(GL_TEXTURE_2D, 0, format, width, height, GL_FALSE,
                     GL_RGB, GL_UNSIGNED_BYTE, data);
        glPixelStorei(GL_UNPACK_ALIGNMENT, 4);
        glBindTexture(GL_TEXTURE_2D, 0);
        stbi_image_free(data);
    }

    void GL_Apply() {
        shader->Use();
        if(texture){
            int slot = 1;
            glActiveTexture(GL_TEXTURE0 + slot);
            glBindTexture(GL_TEXTURE_2D, texture);
            GLint loc = glGetUniformLocation(shader->prog, "tex0");
            glUniform1i(loc, slot);
        }
    }

    std::string textureName;
    Shader *shader;
    GLuint  texture;
    float texWidth;
    float texHeight;
};


struct Mesh {
    GLuint VAO;
    GLuint VBO;
    GLuint EBO; //index
    Material *material;
    int indicesCount;

    VertexDecl vertexDecl;

    template<typename T>
    void Setup(std::vector<T> vertices, const std::vector<uint16_t> &indices) {
        VertexDecl &decl = T::decl;
        this->vertexDecl = decl;

        glGenBuffers(1, &this->VBO);
        glBindBuffer(GL_ARRAY_BUFFER, this->VBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(T)*vertices.size(), vertices.data(), GL_STATIC_DRAW);
        glBindBuffer(GL_ARRAY_BUFFER, 0);

        glGenBuffers(1, &this->EBO);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, this->EBO);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size()*sizeof(uint16_t), indices.data(), GL_STREAM_DRAW);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);

        this->indicesCount = indices.size();

        glGenVertexArrays(1, &this->VAO);

        glBindVertexArray(this->VAO);
        glBindBuffer(GL_ARRAY_BUFFER, this->VBO);
        decl.GL_EnableAttribs();
        decl.GL_Bind();
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, this->EBO);
        glBindVertexArray(0);
    }

    void SetMaterial(Material *material) {
        this->material = material;
    }

    void GL_Apply(glm::mat4 &mvp) {
        this->material->GL_Apply();
        //周期性地变换滤镜
//        glUniform1f(glGetUniformLocation(material->shader->prog, "strength"),
//                    (sin(glfwGetTime())+1.0)/2);

//        glUniformMatrix4fv(
//                glGetUniformLocation(material->shader->prog, "MVP"),
//                1,
//                GL_FALSE,
//                glm::value_ptr(mvp)
//        );

        glBindVertexArray(this->VAO);
        glDrawElements(GL_TRIANGLES, this->indicesCount, GL_UNSIGNED_SHORT, 0);
        glUseProgram(0);
        glBindVertexArray(0);
    }
};

struct Pos {
    float x;
    float y;
    float z;
};

struct TexCoord {
    float u;
    float v;
};

struct SimpleVertexAttrib {
    Pos position;
    uint32_t color; //little-endian, [0xFF, 0x00, 0xFF, 0x00]
    TexCoord uv;

    static void Init() {
        decl.Add(Attrib::Position, 3, AttribType::Float)
                .Add(Attrib::Color, 4, AttribType::Uint8, true)
                .Add(Attrib::TexCoord, 2, AttribType::Float);
    }

    static VertexDecl decl;
};

VertexDecl SimpleVertexAttrib::decl;

class MeshRenderer {
public:
    enum PolygonMode {
        FILL = GL_FILL,
        LINE = GL_LINE,
    };

    MeshRenderer() {
//        stbi_set_flip_vertically_on_load(1);
    }

    void Render(Mesh *mesh, glm::mat4 &mvp, MeshRenderer::PolygonMode mode = PolygonMode::FILL) {
        if (mode != PolygonMode::FILL) {
            glPolygonMode(GL_FRONT_AND_BACK, (GLenum)mode);
        }

        mesh->GL_Apply(mvp);

        if (mode != PolygonMode::FILL) {
            glPolygonMode(GL_FRONT_AND_BACK, PolygonMode::FILL);
        }
    }
};

Mesh *mesh;
MeshRenderer *renderer;

void setup() {
    renderer = new MeshRenderer;
    //
    SimpleVertexAttrib::Init();

//    std::vector<SimpleVertexAttrib> vertices = {
//            {{-1, -1, 0}, 0xFF000000, {0, 0}}, // left-bottom black
//            {{1, -1, 0}, 0xFFFF0000, {1, 0}}, // right-bottom blue
//            {{1, 1, 0}, 0xFF00FF00, {1, 1}}, // top-right green
//            {{-1, 1, 0}, 0xFF0000FF, {0, 1}}, // top-left red
//    };
//    std::vector<SimpleVertexAttrib> vertices = {
//            {{-0.5, -0.5, 0}, 0xFF000000}, // left-bottom black
//            {{0.5, -0.5, 0}, 0xFFFF0000}, // right-bottom blue
//            {{0.5, 0.5, 0}, 0xFF00FF00}, // top-right green
//            {{-0.5, 0.5, 0}, 0xFF0000FF}, // top-left red
//    };
//    std::vector<uint16_t > indices = {
//            0, 1, 2,
//            2, 3, 0,
//    };

    std::vector<SimpleVertexAttrib> vertices;
    std::vector<uint16_t> indices;

    int div_count = 100;
    vertices.push_back({{0,0,0}, 0xFFFFFFFF, {0.5f, 0.5f}});
    for(int i = 0; i < div_count; ++i){
        double angle = M_PI * 2/div_count;
        float y = sin(i*angle);
        float x = cos(i*angle);
        vertices.push_back({{x, y ,0}, 0xFFFFFFFF, {x/2+0.5f, y/2+0.5f}});
    }
    for(int i = 1; i <= div_count; ++i){
        indices.push_back(0);
        indices.push_back((uint16_t)i);
        indices.push_back((uint16_t)(i+1));
    }
    indices.push_back(0);
    indices.push_back(1);
    indices.push_back((uint16_t)div_count);


    std::string vs = R"(#version 330 core
            layout (location = 0) in vec3 aPos;
            layout (location = 1) in vec4 aColor;
            layout (location = 2) in vec2 aTexCoord;
//            uniform mat4 MVP;

            out vec4 vColor;
            out vec2 vTexCoord;
            void main()
            {
// MVP *
               gl_Position = vec4(aPos, 1.0);
               vColor = aColor;
               vTexCoord = aTexCoord;
            })";

    std::string fs = R"(#version 330 core
            out vec4 FragColor;
            in vec4 vColor;
            uniform float strength;

            void main()
            {
                float gray = dot(vColor.rgb, vec3(0.299, 0.587, 0.114));
//                FragColor = vec4(vec3(gray), 1.0);
                //测试滤镜强度
                FragColor = mix(vec4(vec3(gray), 1.0), vColor, strength);
            })";

    std::string samplerfs = R"(#version 330 core
            out vec4 FragColor;
            in vec4 vColor;
            in vec2 vTexCoord;

            uniform sampler2D tex0;
            void main()
            {
                FragColor = texture(tex0, vTexCoord) * vColor;
//                FragColor = vColor;
            })";

    mesh = new Mesh();
//    Material *material = new Material(vs ,fs);
    Material *material = new Material(vs ,samplerfs);
    material->SetTexture("tex0", "/Users/cjfire/Desktop/CLionProjects/app/flag.png",
                         Texture::Wrap::Clamp);
    mesh->SetMaterial(material);
    mesh->Setup(vertices, indices);
}

void render() {
    int width, height;

    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    glClearColor(0.1, 0.1, 0.1, 1);
    glClear(GL_COLOR_BUFFER_BIT);

    float posx = 100;
    static float posy = 0;
    float vel = 30;
    posy = glfwGetTime() * vel;
    float viewWidth = 100;
    float viewHeight = 50;

    glm::mat4 indentity = glm::mat4(1.0f);
    glm::mat4 projection = glm::ortho(0.0f, (float)width, 0.0f, (float)height, -1.0f, 1.0f);
    glm::mat4 trans = glm::translate(glm::mat4(1.0f), glm::vec3(posx, posy, 0.0f));
    glm::mat4 rotte = glm::rotate(glm::mat4(1.0f), (float)(glfwGetTime()/M_PI), glm::vec3(0.0f, 0.0f, 1.0f));
    glm::mat4 scale = glm::scale(glm::mat4(1.0f), glm::vec3(viewWidth, viewHeight, 1.0f));

    glm::mat4 MVP = indentity * projection * trans * rotte * scale;

    renderer->Render(mesh, MVP);
}


int main() {
    glfwSetErrorCallback(ErrCallback);
    if (!glfwInit()) {
        std::cerr << "glfw init failed" << std::endl;
        exit(1);
    }

    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);
    window = glfwCreateWindow((int)SCREEN_SIZE.x, (int)SCREEN_SIZE.y, "OpenGL Tutorial", NULL, NULL);
    if(!window)
        throw std::runtime_error("glfwCreateWindow failed. Can your hardware handle OpenGL 3.2?");
    glfwMakeContextCurrent(window);

    glewExperimental = true;
    if (glewInit() != GLEW_OK) {
        std::cerr << "glew init failed" << std::endl;
        exit(1);
    }

    glfwSwapInterval(1);
    setup();

    while (!glfwWindowShouldClose(window))
    {
        double t = glfwGetTime();
//        glClearColor(sin(t), cos(t), 0, 1);
//        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(1, 1, 0, 1);
        glClear(GL_COLOR_BUFFER_BIT);

        float ratio;
        int width, height;

        glfwGetFramebufferSize(window, &width, &height);
        ratio = width / (float) height;

        glViewport(0, 0, width, height);
        render();

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwDestroyWindow(window);

    glfwTerminate();

    std::cout << "Hello, World!" << std::endl;
    std::cout << calculater::Add(10, 20) << std::endl;
    return 0;
}