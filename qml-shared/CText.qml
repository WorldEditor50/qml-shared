import QtQuick 2.0

Rectangle {
    id: root
    width: 128
    height: 16
    color: "#F0F0F0"
    property color textColor: "black"
    property int fontSize: 16
    property string content: "text"
    Text {
        text: root.content
        font.pixelSize: fontSize
        font.family: "Microsoft YaHei"
        color: textColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
