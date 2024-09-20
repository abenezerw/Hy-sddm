import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {
  id: userField
  height: inputHeight
  width: inputWidth
  selectByMouse: true
  echoMode: TextInput.Normal
  selectionColor: config.overlay0
  renderType: Text.NativeRendering
  font {
    family: config.Font
    pointSize: config.FontSize
    bold: true
  }
  color: config.text
  horizontalAlignment: Text.AlignHCenter
  placeholderText: "Username"
  text: userModel.lastUser

  // Modify the background to make it transparent and more rounded
  background: Rectangle {
    id: userFieldBackground
    color: "transparent" // Makes the background fully transparent
    radius: 10 // Increased radius for a more rounded appearance
    // Removed border properties to eliminate borders
  }

  states: [
    State {
      name: "focused"
      when: userField.activeFocus
      PropertyChanges {
        target: userFieldBackground
        color: "transparent" // Keep it transparent when focused
      }
    },
    State {
      name: "hovered"
      when: userField.hovered
      PropertyChanges {
        target: userFieldBackground
        color: "transparent" // Keep it transparent on hover
      }
    }
  ]
  
  transitions: Transition {
    PropertyAnimation {
      properties: "color"
      duration: 300
    }
  }
}

