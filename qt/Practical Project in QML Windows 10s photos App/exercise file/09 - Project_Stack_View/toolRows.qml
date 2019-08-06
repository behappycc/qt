import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4
import QtQuick.Controls.Universal 2.4

ApplicationWindow {
    width: 800
    height: 600

    Universal.theme: Universal.Dark

    property string folder_name: "../images/"
    property string image_source: "fingerprint.jpg"
    title: qsTr('Photos - ' + image_source)

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

    StackView {
        width: parent.width
        height: parent.height
        initialItem: id_01
    }

    Component {
        id: id_01

        Rectangle {
            width: parent.width
            height: parent.height
            color: "transparent"

            Image {
                anchors.centerIn: parent
                sourceSize.height: parent.height
                source: folder_name + image_source
            }

        }

    }

    footer: Rectangle {
        width: parent.width
        height: 32
        color: "transparent"
    }

}
