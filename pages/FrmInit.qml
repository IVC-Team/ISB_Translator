import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
Rectangle{
    Image {
        source:"qrc:/images/Screen1.png"
        anchors.fill: parent
    }

    TextEdit {
        id: textTranslated
        text:IsbController.getText()
        width: 90
        font.weight: Font.Medium
        //rightPadding: -1
        textFormat: Text.AutoText
        antialiasing: false
        cursorVisible: true
        x: 40
        // text: qsTr("Text Edit")
        readOnly: true
        renderType: Text.NativeRendering
        anchors.right: parent.right
        anchors.rightMargin: 39
        anchors.left: parent.left
        anchors.leftMargin: 51
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 158
        anchors.top: parent.top
        anchors.topMargin: 159
        color: "#fff"
        font.capitalization: Font.Capitalize
        font.family: "Times New Roman"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 24
        wrapMode: TextEdit.Wrap
    }
    TextField { //input your text to translate
        id: field
        width: 320
        placeholderText: "input your text"
        anchors.horizontalCenter: parent.horizontalCenter
        bottomPadding: 10
        topPadding: 30
        color: "#fff"
        font.pixelSize: 16

    }
    Button { //call api and translate
        id: btnTranslate
        x: 250
        y: 90
        width: 100
        height: 45
        text: "Translate"
        onClicked: {
//            IsbController.setLang(cb1.currentText)
//            IsbController.setTgLang(cb2.currentText)
            IsbController.translate(cb1.currentText, cb2.currentText,field.text);
            textTranslated.text= IsbController.getText();
        }
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
                btnTranslate.clicked()
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
                btnTranslate.clicked()
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

            ToolButton {
                x: 0
                y: 619
                visible: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                contentItem: Image {
                    fillMode: Image.Pad
                    source: "qrc:/images/camera.png"
                    MouseArea {
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.fill: parent
                        onClicked: stackView.push(Qt.resolvedUrl("qrc:/pages/camera.qml"))
                    }
                }
            }
}
