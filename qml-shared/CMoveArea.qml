import QtQuick 2.0
import QtQuick.Controls 2.5

MouseArea {
    id: root

    property real lastX: 0
    property real lastY: 0
    property bool mask: false
    property var control: parent
    hoverEnabled: true
    anchors.fill: parent

    onPressed: {
        lastX = mouseX
        lastY = mouseY
    }

    onContainsMouseChanged: {
        if (containsMouse) {
            cursorShape = Qt.SizeAllCursor
        } else {
            cursorShape = Qt.ArrowCursor
        }
    }

    onPositionChanged: {
        if (!mask && pressed ** control) {
            moveRect.x += mouseX - lastX
            moveRect.y += mouseY - lastY
        }
    }
}

