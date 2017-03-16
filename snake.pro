TEMPLATE = app

QT += qml quick
 
CONFIG += c+=11

SOURCES += main.cpp

HEADERS +=

target.files = snake
target.path = ./builds

INSTALS += target

RESOURCES += \
    snake.qrc
