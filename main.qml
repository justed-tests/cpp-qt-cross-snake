import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Scene3D 2.0

Item {
  id: mainView

  property int score: 0
  readonly property alias window: mainView

  width: 1280
  height: 768
  visible: true
  //focus: true

  Keys.onEscapePressed: {
    Qt.quit()
  }

  Rectangle {
    id: hud

    color: "#31363b"
    height: 60

    anchors {
      left: parent.left
      right: parent.right
      top: parent.top
    }

    Label {
      id: snakeSizeText
      anchors.centerIn: parent
      font.pointSize: 25
      color: "white"
      text: "Score: " + score
    }
  }

  Scene3D {
    id: scene
    anchors {
      top: hud.bottom
      bottom: parent.bottom
      left: parent.left
      right: parent.right
    }

    focus: true
    aspects: "input"

    GameArea {}
  }
}
