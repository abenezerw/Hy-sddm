import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "Components"

Item {
  id: root

  height: Screen.height
  width: Screen.width
  
  Rectangle {
    id: background
    anchors.fill: parent
    z: 0
    color: config.base
  }
  
  Image {
    id: backgroundImage
    anchors.fill: parent
    fillMode: Image.PreserveAspectCrop
    visible: true
    source: "/home/ben/.cache/hyde/wall.set"  // Path to your wallpaper
    asynchronous: false
    cache: true
    mipmap: true
    clip: true
  }
  
  Item {
    id: mainPanel
    z: 3
    anchors.fill: parent  // Fill the parent without margins

    Clock {
      id: time
      visible: config.ClockEnabled == "true" ? true : false
    }
    
    LoginPanel {
      id: loginPanel
      anchors.fill: parent
    }
  }
}

