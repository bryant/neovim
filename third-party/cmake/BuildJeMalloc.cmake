if(WIN32)
  message(STATUS "Building jemalloc in Windows is not supported (skipping)")
  return()
endif()

if(ARM_CROSS)
    set(CONFIGURE_HOST_FLAG "--host=${CROSS_TARGET}")
endif()

ExternalProject_Add(jemalloc
  PREFIX ${DEPS_BUILD_DIR}
  URL ${JEMALLOC_URL}
  DOWNLOAD_DIR ${DEPS_DOWNLOAD_DIR}/jemalloc
  DOWNLOAD_COMMAND ${CMAKE_COMMAND}
    -DPREFIX=${DEPS_BUILD_DIR}
    -DDOWNLOAD_DIR=${DEPS_DOWNLOAD_DIR}/jemalloc
    -DURL=${JEMALLOC_URL}
    -DEXPECTED_SHA256=${JEMALLOC_SHA256}
    -DTARGET=jemalloc
    -DUSE_EXISTING_SRC_DIR=${USE_EXISTING_SRC_DIR}
    -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake/DownloadAndExtractFile.cmake
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ${DEPS_BUILD_DIR}/src/jemalloc/configure
    CC=${DEPS_C_COMPILER} --prefix=${DEPS_INSTALL_DIR} ${CONFIGURE_HOST_FLAG}
  BUILD_COMMAND ""
  INSTALL_COMMAND ${MAKE_PRG} install_include install_lib)

list(APPEND THIRD_PARTY_DEPS jemalloc)
