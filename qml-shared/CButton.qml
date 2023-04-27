import QtQuick 2.0
import QtQuick.Controls 2.5

Button {
    id: root
    width: 100
    height: 50
    property int radius: 10
    /* background color */
    property color normalBackgroundColor: "#F0F0F0"
    property color hoverBackgroundColor: "#E3E3E3"
    property color pressedBackgroundColor: "#D5D5D5"
    property color disableBackgroundColor: "#a6a6a6"
    /* border color */
    property color normalBorderColor: "transparent"
    property color hoverBorderColor: "#1E90FF"
    property color pressedBorderColor: "#D5D5D5"
    property color disableBorderColor: "#a6a6a6"
    /* text */
    property color textColor: "black"
    property int fontSize: 16
    property string content: "text"

    /* text */
    contentItem: Text {
        text: root.content
        color: root.textColor
        font.family: "Micrisoft YaHei"
        font.pixelSize: root.fontSize
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    /* background */
    background: Rectangle {
        anchors.fill: parent
        border.width: 2
        radius: root.radius
        color: {
            if (root.enabled === false) {
                return root.disableBackgroundColor
            } else if (root.pressed) {
                return root.pressedBackgroundColor
            } else if (root.hovered) {
                return root.hoverBackgroundColor
            } else {
                return root.normalBackgroundColor
            }
        }

        border.color: {
            if (root.enabled === false) {
                return root.disableBorderColor
            } else if (root.pressed) {
                return root.pressedBorderColor
            } else if (root.hovered) {
                return root.hoverBorderColor
            } else {
                return root.normalBorderColor
            }
        }

    }
}
