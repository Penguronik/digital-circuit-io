QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Backend/circuitcomponent.cpp \
    Backend/gates.cpp \
    Backend/pinbase.cpp \
    Backend/pinin.cpp \
    Backend/pinout.cpp \
    Frontend/body.cpp \
    Frontend/graphicscircuitcomponent.cpp \
    Frontend/graphicscircuitcomponent_copy.cpp \
    Frontend/graphicscircuitio.cpp \
    Frontend/graphicsgates.cpp \
    Frontend/graphicspinbase.cpp \
    Frontend/graphicspinin.cpp \
    Frontend/graphicspinout.cpp \
    Frontend/main.cpp \
    Frontend/mainwindow.cpp \
    Frontend/scene.cpp \
    Frontend/view.cpp \
    Frontend/wire.cpp

HEADERS += \
    Backend/circuitcomponent.h \
    Backend/gates.h \
    Backend/pinbase.h \
    Backend/pinin.h \
    Backend/pinout.h \
    Frontend/body.h \
    Frontend/constants.h \
    Frontend/graphicscircuitcomponent.h \
    Frontend/graphicscircuitio.h \
    Frontend/graphicsgates.h \
    Frontend/graphicspinbase.h \
    Frontend/graphicspinin.h \
    Frontend/graphicspinout.h \
    Frontend/mainwindow.h \
    Frontend/scene.h \
    Frontend/view.h \
    Frontend/wire.h

FORMS +=

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
