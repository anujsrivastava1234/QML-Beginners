import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements")

    Item{
        id: containerItemId
        x: 50
        y: 50
        width: 400
        height: 200

        Rectangle{
            anchors.fill: parent
            color: "dodgerblue"

            //Add a border to the rectangle
            //grouped property
            // border.color: "black"
            // border.width: 5


            // border{
            //     color: "black"
            //     width: 5
            // }

            border.color: "black"; border.width: 5
        }

            Rectangle{
                x: 0
                y: 10
                width: 50
                height: 50
                color: "red"
                MouseArea{
                     anchors.fill: parent
                     onClicked: {

                     }
                }
            }
            Rectangle{
                x: 60
                y: 10
                width: 50
                height: 50
                color: "green"
                MouseArea{
                     anchors.fill: parent
                     onClicked: {

                     }
                }
            }
            Rectangle{
                x: 120
                y: 10
                width: 50
                height: 50
                color: "blue"
                MouseArea{
                     anchors.fill: parent
                     onClicked: {

                     }
                }
            }

            Text {
                id: mTextId
                x: 100
                y: 100
                text: qsTr("Hello, World")
                color: "black"
                font{
                    family: "Helvectica"
                    bold: true
                    pointSize: 13
                }
            }
    }
}
