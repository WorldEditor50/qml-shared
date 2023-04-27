import QtQuick 2.12
import QtQuick.Window 2.12
import "qml-shared"

Window {
    id:window
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")

    CButton {
        id:cbtn
        x:window.width/2
        y:window.height/2
    }

    CMoveRect {
        id: moveRect
    }
}
