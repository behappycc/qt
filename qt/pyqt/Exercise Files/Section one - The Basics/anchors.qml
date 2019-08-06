import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600
    title: qsTr('Anchors')


    Rectangle {
        id: first

        width: 240
        height: 40
        color: "gold"
    }

    Rectangle {
        anchors.left: first.right
        anchors.horizontalCenter: parent.horizontalCenter
        width: 500
        height: 40
        color: "green"
    }

}
