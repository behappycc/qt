import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 800
    height: 600
    title: qsTr('Layouts')
    color: "dodgerblue"

    ColumnLayout {
        width: 320
        //spacing: 0

        Rectangle {
            Layout.fillWidth: true
            height: 48
        }

        Rectangle {
            Layout.fillWidth: true
            height: 48
        }

        Rectangle {
            Layout.fillWidth: true
            height: 48
        }

    }

}
