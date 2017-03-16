TEMPLATE = app

QT += qml quick
 
CONFIG += c+=11

SOURCES += main.cpp

HEADERS +=

RESOURCES += \
          snake.qrc

#

target.files = snake
target.path = ./builds

INSTALS += target
