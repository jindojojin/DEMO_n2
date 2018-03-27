import QtQuick 2.9
import QtQuick.Window 2.2
import ScriptCreatorDomain 1.0
Window {
    id: window
    visible: true
    width: 1000
    height: 700

    title: qsTr("Demo")
    ScriptCreatorController {
        id: scriptCreatorController
    }

    Column {
        id: column
        anchors.fill: parent

        Rectangle {
            id: topmenu
            height: 100
            color: "#807c7c"
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top

            Row {
                id: row
                anchors.fill: parent

                Rectangle {
                    id: step1
                    width: 250
                    height: 100
                    color: "#807c7c"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.right: step2.left

                    Text {
                        id: step1Text
                        width: 284
                        height: 100
                        color: "#d8d8d8"
                        text: qsTr("bước 1: tạo script thu thập")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 16
                    }
                }

                Rectangle {
                    id: step2
                    width: 250
                    height: 100
                    color: "#807c7c"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.bottomMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        id: step2Text
                        width: 274
                        height: 100
                        color: "#d8d8d8"
                        text: qsTr("chạy run.bat trong script thu được")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 12
                    }
                }

                Rectangle {
                    id: step3
                    width: 250
                    height: 100
                    color: "#807c7c"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.bottomMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.left: step2.right

                    Text {
                        id: step3text
                        width: 232
                        height: 100
                        color: "#d8d8d8"
                        text: qsTr("phân tích thông tin thu thập được")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 12
                    }
                }
            }
        }

        Rectangle {
            id: footer
            height: 50
            color: "#4c4e50"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }

        Rectangle {
            id: mainmenu
            x: 2
            y: 100
            height: 550
            color: "#ffe76a"
            anchors.bottom: footer.top
            anchors.top: topmenu.bottom
            anchors.right: parent.right
            anchors.left: parent.left

            Rectangle {
                id: leftmenu
                width: 200
                color: "#d8d8d8"
                anchors.bottom: parent.bottom
                anchors.top: parent.top
                anchors.right: centermenu.left
                anchors.left: parent.left

                Image {
                    id: image2
                    x: 317
                    width: 100
                    height: 100
                    anchors.top: parent.top
                    anchors.topMargin: 22
                    anchors.right: parent.right
                    anchors.rightMargin: 74
                    source: "thuthap.png"
                }

                Text {
                    id: text7
                    x: 114
                    width: 197
                    height: 64
                    color: "#5a5757"
                    text: qsTr("thu thập")
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    anchors.right: parent.right
                    anchors.rightMargin: 180
                    font.bold: true
                    font.family: "Courier"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 29
                }

                Rectangle {
                    id: rectangle
                    y: 175
                    height: 82
                    color: "#d8d8d8"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0

                    Text {
                        id: text1
                        color: "#555252"
                        text: qsTr("thu thập đầy đủ")
                        font.bold: true
                        font.family: "Courier"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.fill: parent
                        font.pixelSize: 24
                    }
                }

                MouseArea {
                    id: mouseArea
                    hoverEnabled: true
                    clip: false
                    visible: true
                    z: 3
                    anchors.fill: parent
                    onEntered: {step1.color = "#d8d8d8"; step1Text.color = "#807c7c";}
                    onExited: {step1.color = "#807c7c"; step1Text.color = "#d8d8d8";}

                    MouseArea {
                        id: mouseArea2
                        y: 225
                        height: 82
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        hoverEnabled: true
                        onEntered: {step1.color = '#d8d8d8'; rectangle.color = '#807c7c'}
                        onExited: {rectangle.color = "#d8d8d8";}
                    }

                    MouseArea {
                        id: mouseArea3
                        height: 82
                        anchors.top: mouseArea2.bottom
                        anchors.topMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        hoverEnabled: true
                        anchors.right: parent.right
                        onEntered: {step1.color = '#d8d8d8'; rectangle2.color = '#807c7c'}
                        onExited: {rectangle2.color = "#d8d8d8";}
                    }

                    MouseArea {
                        id: mouseArea4
                        x: 1
                        y: -9
                        height: 82
                        anchors.bottom: mouseArea2.top
                        hoverEnabled: true
                        anchors.right: parent.right
                        anchors.left: parent.left
                        onEntered: {step1.color = '#d8d8d8'; rectangle1.color = '#807c7c'}
                        onExited: {rectangle1.color = "#d8d8d8";}
                    }
                }

                Rectangle {
                    id: rectangle1
                    x: -1
                    y: 168
                    height: 82
                    color: "#d8d8d8"
                    anchors.bottom: rectangle.top
                    anchors.bottomMargin: 0
                    Text {
                        id: text2
                        color: "#555252"
                        text: qsTr("thu thập tiêu chuẩn")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 24
                        font.bold: true
                        anchors.fill: parent
                        font.family: "Courier"
                    }
                    anchors.rightMargin: 0
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                }

                Rectangle {
                    id: rectangle2
                    height: 82
                    color: "#d8d8d8"
                    anchors.top: rectangle.bottom
                    anchors.topMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    Text {
                        id: text3
                        color: "#555252"
                        text: qsTr("thu thập tiêu chuẩn")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.bold: true
                        font.pixelSize: 24
                        anchors.fill: parent
                        font.family: "Courier"
                    }
                }

            }

            Rectangle {
                id: centermenu
                width: 18
                color: "#d8d8d8"
                anchors.bottom: parent.bottom
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: image1
                    x: 8
                    y: 159
                    width: 18
                    height: 478
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "center.png"
                }
            }

            Rectangle {
                id: rightmenu
                width: 200
                color: "#d8d8d8"
                anchors.left: centermenu.right
                anchors.bottom: parent.bottom
                anchors.top: parent.top
                anchors.right: parent.right

                Image {
                    id: image3
                    width: 100
                    height: 100
                    anchors.top: parent.top
                    anchors.topMargin: 22
                    anchors.left: parent.left
                    anchors.leftMargin: 71
                    source: "phantich.png"
                }

                Text {
                    id: text8
                    width: 176
                    height: 66
                    color: "#5d5a5a"
                    text: qsTr("phân tích")
                    font.bold: true
                    font.family: "Courier"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 188
                    anchors.top: parent.top
                    anchors.topMargin: 44
                    font.pixelSize: 24
                }

                MouseArea {
                    id: mouseArea1
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {step3.color = "#d8d8d8"; step3text.color = "#807c7c";}
                    onExited: {step3.color = "#807c7c"; step3text.color = "#d8d8d8";}
                }
            }
        }
    }

    Image {
        id: image
        y: 0
        width: 124
        height: 100
        anchors.left: parent.left
        anchors.leftMargin: 0
        source: "demo.PNG"
    }


}
