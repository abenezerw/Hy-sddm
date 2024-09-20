import QtQuick 2.15
import SddmComponents 2.0

Item {
  id: root
  anchors.fill: parent

  // TIME
  Text {
    id: timeLabel
    text: Qt.formatTime(new Date(), "hh:mm")
    color: config.text
    font.family: "JetBrainsMono Nerd Font"
    font.pixelSize: 90
    anchors {
      right: parent.right
      top: parent.top
    }
    anchors.rightMargin: 30  // Positioning from the right
    anchors.topMargin: 0      // No margin from the top
    horizontalAlignment: Text.AlignRight
    verticalAlignment: Text.AlignTop
  }

  // DATE
  Text {
    id: dateLabel
    text: Qt.formatDate(new Date(), "dddd, dd MMMM yyyy")
    color: config.text
    font.family: "JetBrainsMono Nerd Font"
    font.pixelSize: 25
    anchors {
      right: parent.right
      top: timeLabel.bottom  // Align below timeLabel without extra spacing
    }
    anchors.rightMargin: 30   // Positioning from the right
    anchors.topMargin: 0      // No margin from the top
    horizontalAlignment: Text.AlignRight
    verticalAlignment: Text.AlignTop
  }
}

