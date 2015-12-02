import QtQuick 2.2
import "content";

Rectangle {
    id: container;
    width: 800; height: 500;
    color: "lightgray";
    Text{
        id: testtext;
        anchors.centerIn: parent;
        anchors.verticalCenterOffset: -100;
        font.pixelSize: 36;
        font.bold: true;
        text: "测试文本";
    }
    Grid{
        anchors.left: parent.left;
        anchors.leftMargin: 8;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 8;
        rows: 3; columns: 3;
        rowSpacing: 8; columnSpacing: 8;
        flow: Grid.TopToBottom;
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
    }
}

