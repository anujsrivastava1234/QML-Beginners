import QtQuick

Item{
    id: rootID
    property alias buttonText: mTextId.text
    width: containerRectId.width
    height: containerRectId.height

    signal buttonClicked

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
                rootID.buttonClicked() //emit the signal
            }
        }
    }
}
