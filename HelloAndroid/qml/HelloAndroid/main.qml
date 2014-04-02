import QtQuick 2.0

Rectangle {
    id: rectangle1
    width: 360
    height: 360


    HoloButton {
        id: textInput1
        width: parent.width * 0.8
        height: parent.height * 0.1
        text: qsTr("Text Input")
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
