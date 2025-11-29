import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property string textToShow: "Hello"

    Row{
        spacing: 20
        anchors.centerIn: parent
        Rectangle{
            id: redRectId
            width: 100
            height: 100
            color: "red"
            radius: 15
            border{
                color: "black"
                width: 5
            }
            MouseArea{
                anchors.fill: parent //Telling the mousearea element to fill the rectangle
                onClicked: {
                    console.log("Clciked on Red")
                    textToShow = "red"

                }
            }
        }

        Rectangle{
            id: blueRectId
            width: 100
            height: 100
            color: "blue"
            radius: 15
            border{
                color: "black"
                width: 5
            }
            MouseArea{
                anchors.fill: parent //Telling the mousearea element to fill the rectangle
                onClicked: {
                    console.log("Clicked on blue")
                    textToShow = "blue"
                }
            }
        }

        Rectangle{
            id: greenRectId
            width: 100
            height: 100
            color: "green"
            radius: 15
            border{
                color: "black"
                width: 5
            }
            MouseArea{
                anchors.fill: parent //Telling the mousearea element to fill the rectangle
                onClicked: {
                    console.log("Clicked on green")
                    textToShow = "green"
                }
            }
        }

        Rectangle{
            id: dodgerblueRectId
            width: 100
            height: 100
            color: "dodgerblue"
            radius: 50
            border{
                color: "black"
                width: 5
            }

            Text {
                id: textId
                anchors.centerIn: parent
                text: textToShow
            }
            MouseArea{
                anchors.fill: parent //Telling the mousearea element to fill the rectangle
                onClicked: {
                    console.log("Clicked on the circle")
                    textId.text = "broken" //breaks the property binding
                }
            }
        }
    }
}
