cmake -G Ninja \
    -D CMAKE_INSTALL_PREFIX=/home/bryant/usr \
    -D DEPS_PREFIX=/home/bryant/3rd/neovim/deps/usr \
    -D LUA_PRG=/home/bryant/3rd/neovim/deps/host/bin/luajit \
    -D CMAKE_C_COMPILER=arm-unknown-linux-gnueabihf-gcc \
    -D CMAKE_C_FLAGS=-O3 \
    -D CMAKE_EXE_LINKER_FLAGS='-Wl,-Bstatic,-L,/usr/lib/arm-linux-gnueabihf,-ltinfo,-Bdynamic' \
    -D MSGPACK_USE_STATIC=ON \
    -D LIBTERMKEY_USE_STATIC=ON \
    -D UNIBILIUM_USE_STATIC=ON \
    -D LIBUV_USE_STATIC=ON \
    -D LIBVTERM_USE_STATIC=ON \
    -D LUAJIT_USE_STATIC=ON \
    -D MSGPACK_USE_STATIC=ON \
    ..
