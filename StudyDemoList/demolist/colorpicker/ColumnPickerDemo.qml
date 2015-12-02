import QtQuick 2.2
import "content"

Rectangle {
    id: container;
    width: 500; height: 500;
    color: "lightgray";
    Text{
        id: testtext;
        text: "测试文本";
        anchors.centerIn: parent;
        font.pixelSize: 36;
        font.bold: true;
    }
    Column{
        anchors.left: parent.left;
        anchors.leftMargin: 8;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 8;
        spacing: 8;
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

