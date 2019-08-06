import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4
import QtQuick.Controls.Universal 2.4

ApplicationWindow {
    width: 800
    height: 600
    title: qsTr('Photos - ')

    Universal.theme: Universal.Dark


    menuBar: ToolBar {
        width: parent.width
        RowLayout {
            width: parent.width

            Row {
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
            }

            Row {
                Layout.alignment: Qt.AlignHCenter
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
            }

            Row {
                Layout.alignment: Qt.AlignRight
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
                ToolButton {
                    text: "a"
                }
            }


        }
    }

}
