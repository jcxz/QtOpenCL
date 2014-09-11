# Tento pri file definuje umiestnenie OpenCL hlavickovych suborov a kniznic

QT += concurrent

include($$PWD/OpenCL_libs.pri)

INCLUDEPATH += $$PWD

CONFIG(debug, debug|release) {
    LIBS += -L$$PWD/bin/debug
} else {
    LIBS += -L$$PWD/bin/release
}

LIBS += -lQtOpenCL -lQtOpenCLGL
