import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image")

    Item{
        id: containerItemId
        x: 150
        y: 50
        width: 600
        height: 300

        //#1 from the resource file
        Image {
            x: 10
            y: 50
            width: 100
            height: 100
            source: "qrc:/Images/Qt.png"
        }
    }
}
