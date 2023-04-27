import QtQuick 2.0

Rectangle {
    id: root
    width: 300
    height: 200
    color: "lightblue"
    CMoveArea {
        control: parent
        mask: false
        anchors.fill: parent
    }
}
