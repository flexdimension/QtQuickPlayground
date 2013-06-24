import QtQuick 2.0

Flickable {
    id: flickFrame
    anchors.fill: parent

    contentHeight: view.width
    contentWidth: view.height

    transformOrigin: Item.TopLeft

    property real zoomRate: 1

    property real targetX
    property real targetY
    property real targetScale : 1

    property real pScale : 1

    Behavior on contentX {
        NumberAnimation { duration: 500; easing.type: Easing.OutQuad}
    }

    Behavior on contentY {
        NumberAnimation { duration: 500; easing.type: Easing.OutQuad}
    }

    Behavior on pScale {
        NumberAnimation { duration: 500; easing.type: Easing.OutQuad}
    }

    scale: 1 / pScale

    function zoom(obj) {
        var pos = obj.mapToItem(flickFrame, 0, 0);

        moveToCenter({ x:pos.x, y:pos.y, width: obj.width, height: obj.height });
    }

    function moveToCenter(rect) {

        if (targetScale != 1)
            targetScale = 1;
        else
            targetScale = Math.min(view.width / rect.width, view.height / rect.height) * zoomRate;

        var centerX = rect.x + rect.width / 2;
        var centerY = rect.y + rect.height / 2;

        targetX = centerX - view.width / 2 / targetScale;
        targetY = centerY - view.height / 2 / targetScale;

        targetX = Math.max(0, Math.min(contentWidth, targetX));
        targetY = Math.max(0, Math.min(contentHeight, targetY));

        contentX = targetX;
        contentY = targetY;
        pScale = 1 / targetScale;

        console.log('content:' + targetX + ',' + targetY);
    }
}
