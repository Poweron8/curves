CONFIG -= qt

TEMPLATE = lib
DEFINES += CURVES_LIBRARY

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    circle.cpp \
    curve.cpp \
    ellipse.cpp \
    helix.cpp \
    point.cpp

HEADERS += \
    circle.h \
    curve.h \
    curves.h \
    curves_global.h \
    ellipse.h \
    helix.h \
    point.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    curves.pro.user
