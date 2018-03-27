import QtQuick 2.10
import QtQuick.Window 2.10

Window {
    id: mainWindow
    visible: true
    width: 1080
    height: 720
    title: qsTr("DEMO")

    Rectangle { //thu thap du lieu
        id: rectangle_collect
        x: 65
        y: 97
        width: 388
        height: 155
        color: "#ffffff"
        radius: 5
        z: 1
        clip: false
        border.width: 0
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 65
        anchors.topMargin: 97

        Text {
            id: text1
            x: 22
            y: 8
            width: 170
            height: 26
            text: qsTr("Thu thập dữ liệu")
            font.family: "Verdana"
            renderType: Text.QtRendering
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 33
        }

        Text {
            id: createStandardCollector
            x: 22
            y: 64
            text: qsTr("Thu thập dữ liệu cơ bản")
            font.pixelSize: 14
        }

        Text {
            id: createAdvanceCollector
            x: 22
            y: 94
            text: qsTr("Thu thập dữ liệu nâng cao")
            font.pixelSize: 14
        }
    }

    Rectangle { // phan tich du lieu
        id: rectangleAnalysis
        x: 65
        y: 296
        width: 388
        height: 232
        color: "#ffffff"
        z: 2
        anchors.top: rectangle_collect.bottom
        anchors.left: parent.left
        anchors.leftMargin: 65
        anchors.topMargin: 44

        Text {
            id: text2
            x: 21
            y: 27
            text: qsTr("Phân tích dữ liệu")
            font.pixelSize: 33
        }

        Text {
            id: analysisDataFromSave
            x: 21
            y: 82
            text: qsTr("Phân tích dữ liệu đã thu thập trước đó")
            font.pixelSize: 14
        }
    }



    Image {
        id: image_background
        anchors.fill: parent
        source: "preview.jpg"
    }




}
