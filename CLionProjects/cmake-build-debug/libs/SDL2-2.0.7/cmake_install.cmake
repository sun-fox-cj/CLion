# Install script for directory: /Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/libSDL2d.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.a")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/libSDL2d.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2d.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/libSDL2maind.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2maind.a")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets.cmake"
         "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/CMakeFiles/Export/SDL2.framework/Resources/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources" TYPE FILE FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/CMakeFiles/Export/SDL2.framework/Resources/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources" TYPE FILE FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/CMakeFiles/Export/SDL2.framework/Resources/SDL2Targets-debug.cmake")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/SDL2.framework/Resources" TYPE FILE FILES
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/SDL2Config.cmake"
    "/Users/tom/Downloads/CLionProjects/cmake-build-debug/SDL2ConfigVersion.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_assert.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_atomic.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_audio.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_bits.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_blendmode.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_clipboard.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_android.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_iphoneos.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_macosx.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_minimal.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_pandora.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_psp.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_windows.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_winrt.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_config_wiz.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_copying.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_cpuinfo.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_egl.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_endian.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_error.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_events.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_filesystem.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_gamecontroller.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_gesture.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_haptic.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_hints.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_joystick.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_keyboard.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_keycode.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_loadso.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_log.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_main.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_messagebox.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_mouse.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_mutex.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_name.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengl.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengl_glext.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengles.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengles2.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengles2_gl2.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengles2_gl2ext.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengles2_gl2platform.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_opengles2_khrplatform.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_pixels.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_platform.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_power.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_quit.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_rect.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_render.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_revision.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_rwops.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_scancode.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_shape.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_stdinc.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_surface.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_system.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_syswm.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_assert.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_common.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_compare.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_crc32.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_font.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_fuzzer.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_harness.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_images.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_log.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_md5.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_memory.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_test_random.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_thread.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_timer.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_touch.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_types.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_version.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_video.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/SDL_vulkan.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/begin_code.h"
    "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/include/close_code.h"
    "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/include/SDL_config.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
      execute_process(COMMAND /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E create_symlink
      "libSDL2-2.0.dylib" "libSDL2.dylib")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/libSDL2.dylib")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/sdl2.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/tom/Downloads/CLionProjects/cmake-build-debug/libs/SDL2-2.0.7/sdl2-config")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/aclocal/sdl2.m4")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/aclocal" TYPE FILE FILES "/Users/tom/Downloads/CLionProjects/libs/SDL2-2.0.7/sdl2.m4")
endif()

