import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("1-CustomComponents")

    //Playing with Row and Columns
    // Row{
    //     spacing: 2
    //     Rectangle{color: "red"; width: 50; height: 50}
    //     Rectangle{color: "red"; width: 50; height: 50}
    //     Rectangle{color: "red"; width: 50; height: 50}
    // }

    /*
    Rectangle{
        id: containerRectId
        width: mTextId.implicitWidth + 50
        height: mTextId.implicitHeight + 10
        color: "red"
        border{
            color: "blue"
            width: 3
        }
        Text {
            id: mTextId
            text: qsTr("Button")
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: function(){
                console.log("Clicked on the Button")
            }
        }
    }
    */
    Column{
        spacing: 3
        MButton{
            id: mButton2Id
            buttonText: "Button 1"
            onButtonClicked: {
                console.log("Clicked on Button1 ")
            }
        }

        MButton{
            id: mButton1Id
            buttonText: "Button2"
            onButtonClicked: {
                console.log("Clicked on Button2 ")
            }
        }
    }
}
