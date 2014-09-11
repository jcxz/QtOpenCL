win32 {
    INCLUDEPATH += "$$(AMDAPPSDKROOT)\include"
    LIBS += -L"$$(AMDAPPSDKROOT)\lib\x86"
    LIBS += -lOpenCL
}

macx {
    LIBS += -framework OpenCL
}
