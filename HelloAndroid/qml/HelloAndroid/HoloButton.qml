import QtQuick 2.0

Rectangle {
    width: 100
    height: 80

    state: "normal"
    property alias text: text1.text

    BorderImage {
        id: borderImage1
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        border.top: 6
        border.left: 6
        border.right: 6
        border.bottom: 6
        source: "images/button-normal.png"

        Text {
            id: text1
            anchors.centerIn: parent
            text: qsTr("Text")
        }
    }
    MouseArea {
        id: mouseArea1
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        onPressed: parent.state = "pressed"
        onReleased: parent.state = "normal"
    }

    states: [
        State {
            name: "normal"
            PropertyChanges {
                target: borderImage1
                source: "images/button-normal.png"
            }
        },
        State {
            name: "pressed"
            PropertyChanges {
                target: borderImage1
                source: "images/button-pressed.png"
            }

        }
    ]
}
