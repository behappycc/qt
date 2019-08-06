import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

ApplicationWindow {
    width: 800
    height: 600
    title: qsTr('Rectangle')
    color: "white"

    Rectangle {
        anchors.centerIn: parent
        width: 400
        height: 400
        color: "dodgerblue"
    }


}
