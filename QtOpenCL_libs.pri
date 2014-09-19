# Tento pri file definuje umiestnenie OpenCL hlavickovych suborov a kniznic

QT += concurrent

include($$PWD/OpenCL_libs.pri)

INCLUDEPATH += $$PWD

CONFIG(debug, debug|release) {
    QTOPENCL_LIBS_DIR = $$PWD/bin/debug
} else {
    QTOPENCL_LIBS_DIR = $$PWD/bin/release
}

CONFIG(dbgsyms) {
    QTOPENCL_LIBS_DIR = $${QTOPENCL_LIBS_DIR}_dbgsyms
}

x86 {
  QTOPENCL_LIBS_DIR = $${QTOPENCL_LIBS_DIR}_x86
}

LIBS += -L$${QTOPENCL_LIBS_DIR}
LIBS += -lQtOpenCL -lQtOpenCLGL
