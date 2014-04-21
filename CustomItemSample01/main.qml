import QtQuick 2.1
import QtQuick.Window 2.1
import MyLibrary 1.0

Window {
    visible: true
    width: 360
    height: 360

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    TextBalloon {
        anchors.fill: parent
        anchors.margins: 10
        rightAligned: true
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

}
