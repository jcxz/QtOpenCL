win32 {
    x86 {
        INCLUDEPATH += "$$(AMDAPPSDKROOT)\include"
        LIBS += -L"$$(AMDAPPSDKROOT)\lib\x86"
        LIBS += -lOpenCL
    } else {
        INCLUDEPATH += "$$(AMDAPPSDKROOT)\include"
        LIBS += -L"$$(AMDAPPSDKROOT)\lib\x86_64"
        LIBS += -lOpenCL
    }
}

macx {
    LIBS += -framework OpenCL
}

unix:!macx {
    LIBS += -lOpenCL
}
