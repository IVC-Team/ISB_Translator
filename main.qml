import QtQuick 2.7
import QtQuick.Controls 1.4

ApplicationWindow {
    id: applicationWindow
    visible: true
    minimumWidth: 375
    maximumWidth: 375
    height: 667
   minimumHeight: 667
   maximumHeight: 667
    color: "#996633"
    title: qsTr("Translator")

StackView{
    id:stackView
    anchors.fill:parent
    initialItem:Qt.resolvedUrl("qrc:/pages/FrmInit.qml")}

}
