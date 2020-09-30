# Copy this to 'local.mk' in the repository root.
# Individual entries must be uncommented to take effect.

# By default, the installation prefix is '/usr/local'.
# CMAKE_EXTRA_FLAGS += -DCMAKE_INSTALL_PREFIX=/usr/local/nvim-latest

# These CFLAGS can be used in addition to those specified in CMakeLists.txt:
# CMAKE_EXTRA_FLAGS="-DCMAKE_C_FLAGS=-ftrapv -Wlogical-op"
CMAKE_EXTRA_FLAGS += "-DCMAKE_C_FLAGS='-O3 -static'"
CMAKE_EXTRA_FLAGS += "-DCMAKE_EXE_LINKER_FLAGS=-static"

# By default, the jemalloc family of memory allocation functions are used.
# Uncomment the following to instead use libc memory allocation functions.
CMAKE_EXTRA_FLAGS += -DENABLE_JEMALLOC=OFF

CMAKE_EXTRA_FLAGS += -DCMAKE_C_COMPILER=clang
CMAKE_EXTRA_FLAGS += -DCMAKE_CXX_COMPILER=clang++

DEPS_CMAKE_FLAGS += -DCMAKE_C_COMPILER=clang
DEPS_CMAKE_FLAGS += -DCMAKE_CXX_COMPILER=clang++

# Sets the build type; defaults to Debug. Valid values:
#
# - Debug:          Disables optimizations (-O0), enables debug information.
#
# - RelWithDebInfo: Enables optimizations (-Og or -O2) with debug information.
#
# - MinSizeRel:     Enables all -O2 optimization that do not typically
#                   increase code size, and performs further optimizations
#                   designed to reduce code size (-Os).
#                   Disables debug information.
#
# - Release:        Same as RelWithDebInfo, but disables debug information.
#
CMAKE_BUILD_TYPE := Release

# Log levels: 0 (DEBUG), 1 (INFO), 2 (WARNING), 3 (ERROR)
# Default is 1 (INFO) unless CMAKE_BUILD_TYPE is Release or RelWithDebInfo.
# CMAKE_EXTRA_FLAGS += -DMIN_LOG_LEVEL=1

# By default, nvim uses bundled versions of its required third-party
# dependencies.
# Uncomment these entries to instead use system-wide installations of
# them.
#
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_BUSTED=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_DEPS=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_JEMALLOC=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_LIBTERMKEY=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_LIBUV=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_LIBVTERM=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_LUAJIT=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_LUAROCKS=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_MSGPACK=OFF
# DEPS_CMAKE_FLAGS += -DUSE_BUNDLED_UNIBILIUM=OFF

# By default, bundled libraries are statically linked to nvim.
# This has no effect for non-bundled deps, which are always dynamically linked.
# Uncomment these entries to instead use dynamic linking.
#
# CMAKE_EXTRA_FLAGS += -DLIBTERMKEY_USE_STATIC=OFF
# CMAKE_EXTRA_FLAGS += -DLIBUNIBILIUM_USE_STATIC=OFF
# CMAKE_EXTRA_FLAGS += -DLIBUV_USE_STATIC=OFF
# CMAKE_EXTRA_FLAGS += -DLIBVTERM_USE_STATIC=OFF
# CMAKE_EXTRA_FLAGS += -DLUAJIT_USE_STATIC=OFF
# CMAKE_EXTRA_FLAGS += -DMSGPACK_USE_STATIC=OFF
#
#
# .DEFAULT_GOAL := nvim
#
# Run doxygen over the source code.
# Output will be in build/doxygen
#
# doxygen:
# 	doxygen src/Doxyfile
