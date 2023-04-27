import QtQuick 2.0
import QtQuick.Controls 2.5

ComboBox {
    id:root
    property var imodel: [1, 2, 3, 4]
    width: 100
    height: 20

    model: imodel
}
