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
            text: "About"
            font.pixelSize: 20
            color: "white"
            //elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

    }
    Label {

          x: 96
          y: 241
          width: 199
          height: 34
          text: "Translator App - Verion 1.0 "
                      + " ©ISB Corporation. All Rights Reversved "
          anchors.margins: 20
                      anchors.top: logo.bottom
                      anchors.bottom: arrow.top
                      horizontalAlignment: Label.AlignHCenter
                      verticalAlignment: Label.AlignVCenter
                      wrapMode: Label.Wrap
            }

    Image {
           id: image
           x: 139
           width: 90
           anchors.top: parent.top
           anchors.topMargin: 82
           anchors.bottom: parent.bottom
           anchors.bottomMargin: 489
           source: "qrc:/images/small-logo.png"
       }


    Label {
        x: 145
        y: 287
        width: 135
        height: 20
        text: qsTr("Privacy Policy")
        color: "blue"
        MouseArea {
            anchors.fill: parent
            onClicked: stackView.push(Qt.resolvedUrl("qrc:/pages/Privacy.qml"))
        }
    }
}
