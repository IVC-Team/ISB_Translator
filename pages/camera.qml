
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import localtypes 1.0

Rectangle{
    visible: true
    width: 375
    height: 667

    Image {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        source:"qrc:/images/Screen1.png"
        anchors.fill: parent
    }

    Label {
     anchors.fill: parent
     opacity: 0.5
     color: "#fff"
    }

        Button {
             id: fileButton
             x: 0
             y: -5
             text: "File"
             onClicked: menu.open()

             Menu {
                 id: menu
                 y: fileButton.height

                 MenuItem {
                     text: "Open..."
                     onTriggered: {
                         console.log("Open action triggered");
                         fileDlg.open();
                     }
                 }
                 MenuItem {
                     text: "Exit..."
                     onTriggered: Qt.quit();
                 }
             }
         }
        FileDialog {
            id: fileDlg
            nameFilters: [ "Image files (*.jpg *.jpeg *.png)", "All files (*)" ]
            onAccepted: {
                console.log("selected " + fileDlg.fileUrl);
                controller.imageFile = fileDlg.fileUrl;
                //lb.text=controller.getText()
            }
        }

        ImageView{
            id: imgView
            anchors.fill: parent
        }

        ComboBox {
            id: cb1
            y: 542
            width: 130
            height: 40
            model: ["English", "Vietnamese", "Japanese"]
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottomMargin: 30
            font.pixelSize: 13
            onActivated: {
                controller.setLang(cb1.currentText)
                console.log(cb1.currentText)
            }
            Component.onCompleted: {
                controller.setLang(cb1.currentText)
            }
        }

        ComboBox {
            id:cb2
            x: 277
            y: 543
            width: 130
            height: 40
            model: ["English", "Vietnamese", "Japanese"]
            currentIndex: 2
            anchors.right: parent.right
            anchors.rightMargin: 10
            font.pixelSize: 13
            Layout.margins: 550
            onActivated: {
                controller.setLangs(cb2.currentText)
                console.log(cb2.currentText)
                controller.translate()
            }
            Component.onCompleted: {
                controller.setLangs(cb2.currentText)
            }


        }

        ToolButton
        {
            x: 169
            y: 553
            width: 38
            height: 19
            contentItem: Image {
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                source: "qrc:/images/Arrow2-2x.png"
                    }
            id:transLang
            onClicked: {
                var tmp=cb1.currentIndex
                cb1.currentIndex=cb2.currentIndex
                cb2.currentIndex=tmp
                field.text=textTranslated.text
                //btnTranslate.clicked()
            }
        }


    ToolBar {
        id:tb
        y:parent.height-tb.height
        width: parent.width
        RowLayout {
            spacing: 20
            anchors.fill: parent

            ToolButton {
                contentItem: Image {
                    fillMode: Image.Pad
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/keyboard.png"
                }onClicked: stackView.pop()
            }

            ToolButton {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                contentItem: Image {
                    fillMode: Image.Pad

                    MouseArea {
                        anchors.fill: parent

                    }
                }
                Item {
                    x: -171
                    y: -390
                    width: 355
                    height: 261
                }
            }

            ToolButton {
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                contentItem: Image {
                    fillMode: Image.Pad //hinh anh khong bi thay doi
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/menu.png"
                }
                onClicked: optionsMenu.open()

                Menu {
                    bottomMargin: parent.height + 1
                    id: optionsMenu
                    x: parent.width - width
                    transformOrigin: Menu.TopRight


                    MenuItem {
                        text: "About"
                        onTriggered: stackView.push(Qt.resolvedUrl("qrc:/pages/About.qml"))
                    }
                    MenuItem {
                        text: "History"
                        onTriggered: stackView.push(Qt.resolvedUrl("qrc:/pages/History.qml"))
                    }
                    MenuItem {
                        text: "Help"
                        onTriggered: stackView.push(Qt.resolvedUrl("qrc:/pages/Help.qml"))
                    }
                }
            }

        }
    }

}
