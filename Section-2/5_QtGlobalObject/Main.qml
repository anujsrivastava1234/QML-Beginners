import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("The Qt Global Objects")

    property var fonts: Qt.fontFamilies()

    Text {
        anchors.centerIn: parent
        color: Qt.rgba(1, 0, 0, 1)
        text: Qt.md5("hello, world")
        font.pointSize: 30
    }

    Rectangle{
        id: clickableRectId
        width: 300
        height: 100
        color: "dodgerblue"
        anchors.bottom: parent.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
                Qt.quit()
                for(var i = 0 ; i < fonts.length; i++){
                    console.log("[" + i + "]" + fonts[i])
                }

                //Hash a string
                var mText = "Hello, World"
                var mNameHash = Qt.md5(mText)
                console.log("The hash of the name is: " + mNameHash)

                Qt.openUrlExternally("https://www.learnqt.guide")

                console.log("The current platform is:" + Qt.platform.os)
            }
        }
    }
}
