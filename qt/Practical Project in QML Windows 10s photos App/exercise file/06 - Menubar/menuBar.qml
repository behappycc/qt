import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

ApplicationWindow {
    width: 800
    height: 600
    title: qsTr('Menu Bar')


    menuBar: MenuBar {
        Menu {
            title: qsTr('&File')
            Action { text: qsTr('Open') }
            Action { text: qsTr('&Save') }
        }

        Menu {
            title: qsTr('&Edit')
            Action { text: qsTr('&Redo') }
            Action { text: qsTr('&Undo') }
        }

    }

}
