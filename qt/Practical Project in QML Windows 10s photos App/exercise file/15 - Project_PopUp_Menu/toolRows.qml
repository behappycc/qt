import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4
import QtQuick.Controls.Universal 2.4

ApplicationWindow {
    width: 800
    height: 600

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Cyan

    property string folder_name: "../images/"
    property string image_source: "fingerprint.jpg"
    property url font_path: "../Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
    property font blah: Qt.font({'family':"../Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf", "pixelSize": 12})
    property url font_path_2: "../Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf"
    title: qsTr('Photos - ' + image_source)

    menuBar: ToolBar {
        width: parent.width
        RowLayout {
            width: parent.width

            Row {
                ToolButton {
                    font: blah
                    text: "See all photos"
                    icon.source: "../images/icons/ic_image_black_24dp.png"
                    checked: true
                }
                ToolButton {
                    font: blah
                    text: "Add to a Creation"
                    icon.source: "../images/icons/ic_card_membership_black_24dp.png"
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

                    onClicked: contextMenu.open()

                    Menu {
                        id: contextMenu
                        y: parent.height

                        Action { text: "Slideshow"}

                        Action { text: "Save as"}

                        Action { text: "Resize"}

                        Action { text: "Copy"}

                        MenuSeparator {}

                        Action { text: "Open with" }

                        Action { text: "Set as" }

                        MenuSeparator {}

                        Action { text: "View Actual Size" }

                        MenuSeparator {}

                        Action { text: "File information" }

                    }

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
                font.family: font_path
                font.pixelSize: 36
                flat: true
                text: "\uE76b"
            }

            Button {
                font.family: "Segoe MDL2 Assets"
                font.pixelSize: 36
                flat: true
                Layout.alignment: Qt.AlignRight
                text: "\uE76c"
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
