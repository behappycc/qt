import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

ApplicationWindow {
    width: 800
    height: 600
    title: qsTr('Tab Bar')

    TabBar {
        width: parent.width

        TabButton {
            text: qsTr('Sign Up')
        }

        TabButton {
            text: qsTr('Register')
        }

    }


}
