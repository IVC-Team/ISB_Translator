import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Rectangle {
    Flickable {
        id: flickable
        anchors.topMargin: 54
        anchors.fill: parent

        contentHeight: pane.height

        Pane {
            id: pane
            width: flickable.width


            Column {
                id: column
                x: 0
                y: 0
                spacing: 40
                width: parent.width

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>1. Using Keyboard Screen</b>"

                }

                Image {
                    width: 200
                    height: 400
                    source: "../images/keyboard_screen_1.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: " 1: Input text to translate <br/>
                            2: Tap the <b>Translate</b> button to translate the input text"
                }


                Image {
                    width: 200
                    height: 400
                    source: "../images/keyboard_screen_2.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }



                Label {

                    text:" 1.Tap to input your speech <br/>
                            2. Show recognized text from your speech <br/>
                            3. Change source language <br/>
                            4. Change target language <br/>
                            5. Switch source and target language <br/>
                            6. Tap to go to the keyboard screen <br/>
                            7. Tap to go to the camera screen <br/>
                            8. Tap to show the setting menu"
                    wrapMode: Label.Wrap
                }

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>2. Using Voice Screen</b>"

                }

                Image {
                    width: 200
                    height: 400
                    source: "../images/voice_screen_1.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text:" 1.Tap to input your speech <br/>
                            2. Show recognized text from your speech <br/>
                            3. Change source language <br/>
                            4. Change target language <br/>
                            5. Switch source and target language <br/>
                            6. Tap to go to the keyboard screen <br/>
                            7. Tap to go to the camera screen <br/>
                            8. Tap to show the setting menu"
                }
                Image {
                    width: 200
                    height: 400
                    source: "../images/voice_screen_2.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }


                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>3. Using Camera Screen</b>"

                }

                Image {
                    width: 200
                    height: 400
                    source: "../images/camera_screen_1.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text:"  1.Tap to take a photo <br/>
                            2. Show translated text from your photo <br/>
                            3. Change source language <br/>
                            4. Change target language <br/>
                            5. Switch source and target language <br/>
                            6. Tap to go to the keyboard screen <br/>
                            7. Tap to go to the camera screen <br/>
                            8. Tap to show the setting menu"
                }

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>4. Using History Screen</b>"

                }

                Image {
                    width: 200
                    height: 400
                    source: "../images/history_screen_1.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text:"  1.Tap and hold to open the deleting mode <br/> "

                }

                Image {
                    width: 200
                    height: 400
                    source: "../images/history_screen_2.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

    }



    ToolBar {
        id:tlb
        width: parent.width
        RowLayout {
            anchors.fill: parent
            spacing: 20

            ToolButton {
                contentItem: Image {
                    fillMode: Image.Pad
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "qrc:/images/back.png"
                }
                onClicked: stackView.pop()
            }


        }
        Label {
            x: 162
            y: 12
            id: titleLabel
            text: "About"
            font.pixelSize: 20
            color: "white"
            //elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

    }

}
