import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Rectangle{

    property var dataList: IsbController.getDataList()


    Button {
        id: btnD

    }

    ListView {
        id: listView1
        y: tlb.height
        width: parent.width
        model: dataList
        height: parent.height-listView1.y
        delegate:
            Rectangle {
            x:3
            height:cl.height+6
            width: parent.width-6

            radius: 5


    ColumnLayout {
        y:3
        x:3
        id:cl
        spacing: 0
        width: parent.width-6

       Rectangle {
           id:tt1
           color: "#bdbdbd"
           Layout.alignment: Qt.AlignRight
           Layout.preferredWidth:  parent.width
           Layout.preferredHeight: 30
           Text{
               x:10
               color: "#212121"
               font.pixelSize: 13
               text: model.modelData.date
               anchors.verticalCenter: parent.verticalCenter
           }
       }

       Rectangle {
           id:tt2
           //color: "#b5f1f5"
           Layout.alignment: Qt.AlignRight
           Layout.preferredWidth:  parent.width
           Layout.preferredHeight: 30
           Text{
               x:10
               color: "#bdbdbd"
               font.pixelSize: 13
               text: model.modelData.lang1
               anchors.verticalCenter: parent.verticalCenter

           }
       }

       Rectangle {
           id:tt3
           //color: "#b5f1f5"
           Layout.alignment: Qt.AlignRight
           Layout.preferredWidth:  parent.width
           Layout.preferredHeight: 30
           Text{
               x:10
               color: "#212121"
               font.pixelSize: 14
               text: model.modelData.text
               anchors.verticalCenter: parent.verticalCenter

           }
       }

       Rectangle {
           id:tt4
           //color: "#b5f1f5"
           Layout.alignment: Qt.AlignRight
           Layout.preferredWidth:  parent.width
           Layout.preferredHeight: 30
           Text{
               x:10
               color: "#bdbdbd"
               font.pixelSize: 13
               text: model.modelData.lang2
               anchors.verticalCenter: parent.verticalCenter

           }
       }


       Rectangle {
           id:tt5
           Layout.alignment: Qt.AlignBottom
           Layout.fillHeight: true
           Layout.preferredWidth: parent.width
           Layout.preferredHeight: 40

           Text{
               x:10
               color: "#212121"
               font.pixelSize: 14
               text: model.modelData.word
               anchors.verticalCenter: parent.verticalCenter
           }



           Text
           {
               x:parent.width-width-4-imNext.width
               color: "#a7a7a7"
               font.pixelSize: 13
               //text: "View translatetion"
               anchors.verticalCenter: parent.verticalCenter

           }

           Image {

               x:parent.width-width
               id: imNext
               source: "qrc:/images/next.png"
           }

       }
      }
     }
        spacing: 4
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
            Label {
                id: titleLabel
                text: "History"
                font.pixelSize: 20
                color: "white"
                //elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            ToolButton {
            contentItem: Image {
                fillMode: Image.Pad
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                 source: "qrc:/images/trash.png"
            }
                onClicked: {
                 IsbController.dQuery()
                listView1.model =IsbController.getDataList()
                }
            }
        }

    }

}
