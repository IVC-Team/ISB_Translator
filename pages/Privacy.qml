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
                    text: "<b>SB Privacy Policy</b>"
                }


                Text {
                    width: 365
                    text: " In all our business activities, <br/>
                     we recognize that ensuring legality,<br/>
                    safety and reliability of technology and service
                    we offer is one of the important tasks, <br/>
                    and our customers, business partners, employees such  <br/>
                   as personal information and specific personal information <br/>
                   (hereinafter, personal information, etc.), <br/>
                     such as, offer for one of the business, all personal information, <br/>
                    such as will adequately protect the."
                    wrapMode: Text.Wrap
                }

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>Acquisition, use and provision of personal information, etc.</b>"
                }

                Text {
                    width: 365
                    text:
                        "We will acquire, use and provide appropriate personal <br/>
                         information according to each business content and scale. <br/>
                         Regarding specific personal information,<br/>
                        it will not be offered to third parties regardless <br/>
                         of whether the individual consents or not, unless otherwise <br/>
                        specified by law. Also, in each scene, we will establish <br/>
                        a system to check themselves and we will not do handling <br/>
                         beyond the promised objective (non-purpose use)."
                    wrapMode: Text.Wrap
                }

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>Compliance with laws and regulations</b>"
                }

                Text {
                    width: 365
                    text:
                        "We will comply with laws applicable to the protection of personal  <br/>
                         information etc., guidelines established by the country and other  <br/>
                         norms in the handling of personal information and so on "
                    wrapMode: Text.Wrap
                }


                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>Implementation of safety measures</b>"
                }

                Text {
                    width: 365
                    text:
                        "We order to ensure the accuracy and security of such personal   <br/>
                         iinformation, in accordance with regulations relating to information   <br/>
                         security, personal information such as access control to, personal   <br/>
                         information such as limitation of takeout means, prevention of  <br/>
                    unauthorized access from outside measures carried out of, <br/>
                   personal information , such as the loss of, destruction, alteration,  <br/>
                    and strive for the prevention and correction of leakage, and the like. <br/> "
                    wrapMode: Text.Wrap


                }


                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>Respect for personal information concerning personal information etc.</b>"
                }

                Text {
                    width: 365
                    text:
                        " The Company, personal information , such as disclosure of self personal    <br/>
                         information from customers about, correct or delete it, or use or when the    <br/>
                         rejection of the offer was asked is, personal information such    <br/>
                         as respect your rights with respect to, we will respond in good faith.  <br/>"
wrapMode: Text.Wrap
                }

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>Establishment of personal information protection management system and ongoing improvement</b>"
                }

                Text {
                    width: 365
                    text:
                        " We are, to recognize the importance of protecting personal information to  <br/>
                         officers and employees, personal information , such as the proper use, and    <br/>
                         to establish a personal information protection management system in order   <br/>
                         to protect, we will steadily implement this. Furthermore, we will maintain this   <br/>
                         and will continuously improve. <br/>"
wrapMode: Text.Wrap
                }

                Label {
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignLeft
                    text: "<b>Complaints about personal information etc. and responding to consultation</b>"
                }

                Text {
                    width: 365
                    text:
                        " In response to complaints and consultations concerning personal  <br/>
                         information etc. from the principal, we establish the following customer <br/>
                         consultation counter and respond promptly."
                    wrapMode: Text.Wrap

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
            text: "Privacy"
            font.pixelSize: 20
            color: "white"
            //elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

    }

}
