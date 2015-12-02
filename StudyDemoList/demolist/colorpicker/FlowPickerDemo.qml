import QtQuick 2.2
import "content";

Rectangle {
    id: container;
    width: 500; height: 500;
    color: "lightgray";
    Text{
        id: testtext;
        anchors.centerIn: parent;
        font.pixelSize: 36;
        font.bold: true;
        text: "测试文本";
    }
    Flow{
        anchors.left: parent.left;
        anchors.leftMargin: 8;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 8;
        width: 300; height: 180;
        spacing: 8;
        ColorPicker{
            width: 120; height: 30;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            width: 80; height: 80;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            width: 100; height: 50;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            width: 40; height: 40;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            width: 30; height: 100;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            width: 80; height: 60;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
        }
    }
}

