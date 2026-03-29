import QtQuick
import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import QtQuick.Layouts

PanelWindow {
  id: root
  width: Quickshell.screens[0].width
  height: Quickshell.screens[0].height

  color: "transparent"

  visible: true

  WlrLayershell.layer: WlrLayer.Bottom

  Rectangle {
    id: widgetBackground
    width: 320
    height: 140
    color: "#FF222222"
    radius: 10

    anchors.left: parent.left
    anchors.top: parent.top
    anchors.margins: 30

    border {
      color: "#FF666666"
      width: 3
    }

    RowLayout {
      anchors.left: parent.left
      anchors.top: parent.top
      anchors.margins: 30
      spacing: 20

      Layout.alignment: Qt.AlignLeft

      SystemClock {
        id: clock
        precision: SystemClock.Seconds
        enabled: true
      }


      ColumnLayout {
        anchors.left: parent.left
        anchors.top: parent.top
        spacing: 4

        Layout.alignment: Qt.AlignLeft

        Text {
          id: timeText
          text: Qt.formatDateTime(clock.date, "hh:mm")
          color: "white"
          font.pixelSize: 32
          font.bold: true

          style: Text.Outline
          styleColor: "#80000000"
        }

        Text {
          id: "bat"
          color: "#e0e0e0"
          font.pixelSize: 24

          style: Text.Outline
          styleColor: "#80000000"

          Process {
            command: ["cat", "/sys/class/power_supply/BAT1/capacity"]
            running: true

            stdout: StdioCollector {
              onStreamFinished: bat.text = this.text.trim() + "%"
            }
          }
        }
      }

      Rectangle {
        width: 1
        height: 60
        color: "#ffffff"
        opacity: 0.3
      }

      Text {
        id: dateText
        text: Qt.formatDateTime(clock.date, "dd. MM. yyyy")
        color: "white"
        font.pixelSize: 16

        style: Text.Outline
        styleColor: "#80000000"
      }

    }
  }
}
