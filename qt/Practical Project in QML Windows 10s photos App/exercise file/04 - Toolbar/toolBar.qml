import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

ApplicationWindow {
    id: window
    width: 800
    height: 600
    title: qsTr("Tool Bar")

    ToolBar {
        RowLayout {
            ToolButton {
                text: qsTr('&File')
            }

            ToolButton {
                text: qsTr('&Edit')
            }

            ToolButton {
                text: qsTr('Hel&p')
            }
        }
    }

}
