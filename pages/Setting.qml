import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Rectangle{

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
            text: "Setting"
            font.pixelSize: 20
            color: "white"
            //elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }
    }
    ListModel {
        id: myModel
        ListElement { type: "Camera"; age: 8 }
        ListElement { type: "Keyboard"; age: 5 }
    }

    ListView {
        id: listView1

        y: tlb.height
        width: parent.width
        model: myModel
        height: parent.height-listView1.y
        delegate:


            Rectangle {

            width: parent.width
            height: 40



            Text {
                text: type
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
            }

        }
        spacing: 4
    }

}
