import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Change Handlers")

    property string name: "Steve"

    onNameChanged: function(){
        console.log("Name: " + name)
    }

    Rectangle{
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.name = "Morion"
            }
        }
    }

    Component.onCompleted: {
        console.log("Before any change -  Name: " + name)
    }
}
