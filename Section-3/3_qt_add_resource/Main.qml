import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loading Images through Qt6 CMake facilities")

    Item{
        id: containerId
        width: 500
        height: 400

        anchors.centerIn: parent

        Rectangle{
            anchors.fill: parent
            color: "gray"
        }

        Image {
            x: 50
            y: 50
            width: 100
            height: 100
            source: "Images/Qt.png"
        }
    }
}
