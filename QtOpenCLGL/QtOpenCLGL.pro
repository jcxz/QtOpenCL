TEMPLATE = lib
TARGET = QtOpenCLGL

QT += opengl
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

OBJECTS_DIR = $${DESTDIR}/.obj
MOC_DIR = $${DESTDIR}/.obj
UI_DIR = $${DESTDIR}/.obj
RCC_DIR = $${DESTDIR}/.obj

INCLUDEPATH += $$PWD/../QtOpenCL
LIBS += -L$${DESTDIR}
LIBS += -lQtOpenCL

include(../OpenCL_libs.pri)

no_cl_gl {
    DEFINES += QT_NO_CL_OPENGL
}

HEADERS += \
    qclcontextgl.h

SOURCES += \
    qclcontextgl.cpp

PRIVATE_HEADERS += \
    qcl_gl_p.h

HEADERS += $$PRIVATE_HEADERS
DEFINES += QT_BUILD_CLGL_LIB
