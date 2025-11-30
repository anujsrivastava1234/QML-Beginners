import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Component in Place")

    Row{
        id: rowId
        spacing: 3
        Loader{
            id: mFirstButton
            sourceComponent: mButtonComponentId
            onLoaded: function(){
                var customButton = mFirstButton.item
                customButton.buttonText = "Button 1"
                customButton.buttonClicked.connect(function(){
                    console.log("Clicked on Button1 ")
                })
            }
        }
        Loader{
            id: mSecondButton
            sourceComponent: mButtonComponentId
            onLoaded: function(){
                var customButton = mSecondButton.item
                customButton.buttonText = "Button 2"
                customButton.buttonClicked.connect(function(){
                    console.log("Clicked on Button2 ")
                })
            }
        }
    }

    Component{
        id: mButtonComponentId
        Item{
            id: rootId
            property alias buttonText: mTextId.text
            width: mButtonId.width
            height: mButtonId.height
            signal buttonClicked
            Rectangle{
                id: mButtonId
                color: "red"
                width: mTextId.implicitWidth + 10
                height: mTextId.implicitHeight + 10
                Text {
                    id: mTextId
                    anchors.centerIn: parent
                    text: qsTr("Button")
                }
                border{
                    color: "blue"
                    width: 3
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        rootId.buttonClicked()
                    }
                }
            }
        }
    }


    component MButton: Rectangle{
        id: mButtonId
        property alias buttonText: mTextId.text
        //define the signal
        signal buttonClicked
        width: mTextId.implicitWidth + 10
        height: mTextId.implicitHeight + 10
        color: "Red"
        border{
            color: "blue"
            width: 3
        }
        Text{
            id: mTextId
            anchors.centerIn: parent
            text: qsTr("Hello")
        }

        MouseArea{
            anchors.fill: parent
            onClicked: function(){
                mButtonId.buttonClicked() //emit the signal
            }
        }
    }


    Column{
        anchors.top: rowId.bottom
        spacing: 3
        MButton{
            id: mThirdButton
            buttonText: "Button 3"
            onButtonClicked: function(){
                console.log("Clicked on the Button 3")
            }
        }
        MButton{
            id: mFourthButton
            buttonText: "Button 4"
            onButtonClicked: function(){
                console.log("Clicked on the Button 4")
            }
        }
    }
}
