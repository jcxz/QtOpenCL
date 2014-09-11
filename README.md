#What is this project ?#

This is my personal clone of QtOpenCL library. QtOpenCL is in my opinion a very
well designed library to ease the pain of programming OpenCL applications, however
it has not been updated for a while. In this project I took the original code
and fixed some errors and compiler warnings to make the code compile under Qt 5
and C++ 11. Over time I would also like to add some features of my own as I see
a need for them in my other projects.

#How to compile ?#

I tried to make the compilation and usage of the library in other projects as
simple as I could. On my machine I use 32-bit version of AMD's OpenCL SDK, thus
I preset the OpenCL SDK path to whereever AMDAPPSDKROOT environment variable
points to. To change this simply edit the file named OpenCL_libs.pri with your
own paths (note: macs should be fine even without doing this).

#How to use ?#

To use the library simple add this to your qmake project file (only change
PATH_TO_QTOPENCL_LIBS to anything appropriate for your system):

include(PATH_TO_QTOPENCL_LIBS/QtOpenCL_libs.pri)

this line will already take care of adding the correct include paths and settings
for both QtOpenCL and OpenCL SDK libraries.   