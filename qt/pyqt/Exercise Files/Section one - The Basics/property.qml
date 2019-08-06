import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Property | varibles')

    property var btn_colors: ['gold', 'red']

    Rectangle {
        width: 200
        height: 40
        color: btn_colors[0]

        property var some_color: ['brown', 'yellow']

        Rectangle {
            width: 100
            height: 40
            color: some_color[0]
        }

    }

}
