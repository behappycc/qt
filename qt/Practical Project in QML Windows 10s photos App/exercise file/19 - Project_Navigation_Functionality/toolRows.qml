import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4
import QtQuick.Controls.Universal 2.4

ApplicationWindow {
    width: 800
    height: 600

    Universal.theme: Universal.Dark
    Universal.accent: Universal.Cyan

    property url folder_name: "file:///C:/Users/GODWIN/Desktop/exercise file/images/"
    property url font_path: "../Segoe Fonts/Segoe fonts v1710/SegMDL2.ttf"
    property font blah: Qt.font({'family':"../Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf", "pixelSize": 12})
    property font seg_li: Qt.font({'family': "C:/Users/GODWIN/Desktop/exercise file/Segoe Fonts/Segoe fonts v1710/segoeuil.ttf", "pixelSize": 16})
    property font seg_sb: Qt.font({'family': "C:/Users/GODWIN/Desktop/exercise file/Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf", "pixelSize": 16})
    property url font_path_2: "../Segoe Fonts/Segoe fonts v1710/segoeuisl.ttf"
    property var files: ['bee.jpg', 'desktop.jpg', 'fingerprint.jpg', 'flamingo.jpg']
    property int curr_index: 0
    property int high_index: 3
    property string image_source: files[curr_index]
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

                        Action {
                            text: "File information"

                            onTriggered: drawer.open()

                        }

                    }

                }
            }


        }
    }

    Drawer {
        id: drawer
        width: 320
        height: parent.height
        modal: false
        interactive: false

        ColumnLayout {
            width: parent.width
            anchors.left: parent.left
            anchors.leftMargin: 12
            spacing: 20

            RowLayout {
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: 12
                Layout.preferredWidth: 320

                Label {
                    font.family: blah.family
                    font.pixelSize: 20
                    text: qsTr('File info')
                }

                Button {
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 24
                    text: qsTr('Close')
                    flat: true

                    Universal.foreground: Universal.Cyan

                    onClicked: drawer.close()


                }

            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Filename"
                }

                TextField {
                    width: 298
                    text: image_source
                }

            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Date taken"
                }

                Label {
                    font: seg_sb
                    text: "Wednesday‎, ‎30‎ ‎May‎ ‎2018 02:01"
                }
            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Size"
                }

                Label {
                    font: seg_sb
                    text: "99.9kb"
                }
            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Dimensions"
                }

                Label {
                    font: seg_sb
                    text: "1000x1000"
                }
            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Shot"
                }

                Label {
                    font: seg_sb
                    text: "--"
                }
            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Iso"
                }

                Label {
                    font: seg_sb
                    text: "--"
                }
            }

            Column {
                Label {
                    font: seg_li
                    color: "#e1e1e1"
                    text: "Folder path"
                }

                Label {
                    width: 298
                    font: seg_sb
                    clip: true
                    text: folder_name
                }
            }

        }

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
                visible: curr_index > 0

                onClicked: {
                    curr_index--
                    image_source = files[curr_index]
                }

            }

            Button {
                font.family: "Segoe MDL2 Assets"
                font.pixelSize: 36
                flat: true
                Layout.alignment: Qt.AlignRight
                text: "\uE76c"
                visible: curr_index < high_index

                onClicked: {
                    curr_index++
                    image_source = files[curr_index]
                }

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
