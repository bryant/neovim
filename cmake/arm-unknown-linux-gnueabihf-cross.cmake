#
# Mingw-w64 cross compiler toolchain
#
# - The usual CMAKE variables will point to the cross compiler
# - HOST_EXE_LINKER, HOST_C_COMPILER, HOST_EXE_LINKER_FLAGS,
#   HOST_C_FLAGS point to a host compiler
#

set(ARM_CROSS "ON")
set(CROSS_TARGET "arm-unknown-linux-gnueabihf")

# toolchain prefix
set(ARM_TOOLCHAIN_PATH "")

# the name of the target operating system
set(CMAKE_SYSTEM_NAME Linux)

set(TOOLCHAIN_PREFIX ${CROSS_TARGET})
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_RC_COMPILER ${TOOLCHAIN_PREFIX}-windres)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_RC_COMPILER ${TOOLCHAIN_PREFIX}-windres)

#set(CMAKE_FIND_ROOT_PATH "${MINGW_PREFIX_PATH}/mingw")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# We need a host compiler too - assuming mildly sane Unix
# defaults here
set(HOST_C_COMPILER cc)
set(HOST_EXE_LINKER ld)

set(HOST_C_FLAGS -m32)
set(HOST_EXE_LINKER_FLAGS -m32)
