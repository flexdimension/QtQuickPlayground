import QtQuick 2.0

Rectangle {
    id: view
    width: 500
    height: 500

    Zoomable {
        id: flickFrame
        anchors.fill: parent

        Rectangle {
            id: pane

            width: parent.width
            height: parent.height

            color: "gray"
            border.color: "yellow"
            border.width: 5

            Rectangle {
                id: obj

                width: 150
                height: 50
                color: "cyan"

                anchors.centerIn: parent

                Text {
                    text: qsTr("Hello World")
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        flickFrame.zoom(obj);
                    }
                }
            }
        }
    }
}
