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
    property url font_path: "../Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
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
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uE8a3"
                }
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uE74d"
                }
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uEb51"
                }
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uE7ad"
                }
            }

            Row {
                Layout.alignment: Qt.AlignRight
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\ue70f"
                }
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uE72d"
                }
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uE749"
                }
                ToolButton {
                    font.family: font_path
                    font.pixelSize: 20
                    text: "\uE712"
                }
            }


        }
    }

    Drawer {
        width: 320
        height: parent.height
        modal: false
    }

    StackView {
        width: parent.width
        height: parent.height
        initialItem: id_01
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: "transparent"

        RowLayout {
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width

            Button {
                flat: true
                text: "<"
            }

            Button {
                flat: true
                Layout.alignment: Qt.AlignRight
                text: ">"
            }

        }

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
