TEMPLATE = lib
TARGET = QtOpenCL

QT += concurrent

gcov {
    CONFIG += staticlib
} else {
    CONFIG += dll
}
CONFIG += warn_on

win32 {
    CONFIG(debug, debug|release) {
        DESTDIR = ../bin/debug
    } else {
        DESTDIR = ../bin/release
    }
    !static:DEFINES += QT_MAKEDLL
} else {
    CONFIG(debug, debug|release) {
        DESTDIR = ../lib/debug
    } else {
        DESTDIR = ../lib/release
    }
}

dbgsyms {
  QMAKE_CXXFLAGS += -g
  QMAKE_LFLAGS_RELEASE -= -Wl,-s
  DESTDIR = $${DESTDIR}_dbgsyms
}

x86 {
  DESTDIR = $${DESTDIR}_x86
}

OBJECTS_DIR = $${DESTDIR}/.obj
MOC_DIR = $${DESTDIR}/.obj
UI_DIR = $${DESTDIR}/.obj
RCC_DIR = $${DESTDIR}/.obj

include(../OpenCL_libs.pri)

HEADERS += \
    qclbuffer.h \
    qclcommandqueue.h \
    qclcontext.h \
    qcldevice.h \
    qclevent.h \
    qclglobal.h \
    qclimage.h \
    qclimageformat.h \
    qclkernel.h \
    qclmemoryobject.h \
    qclplatform.h \
    qclprogram.h \
    qclsampler.h \
    qcluserevent.h \
    qclvector.h \
    qclworksize.h

SOURCES += \
    qclbuffer.cpp \
    qclcommandqueue.cpp \
    qclcontext.cpp \
    qcldevice.cpp \
    qclevent.cpp \
    qclimage.cpp \
    qclimageformat.cpp \
    qclkernel.cpp \
    qclmemoryobject.cpp \
    qclplatform.cpp \
    qclprogram.cpp \
    qclsampler.cpp \
    qcluserevent.cpp \
    qclvector.cpp \
    qclworksize.cpp

PRIVATE_HEADERS += \
    qclext_p.h

HEADERS += $$PRIVATE_HEADERS
DEFINES += QT_BUILD_CL_LIB

opencl_1_1 {
    DEFINES += QT_OPENCL_1_1
}
