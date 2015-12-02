import QtQuick 2.2
import "content"

Rectangle {
    id: container;
    width: 600; height: 500;
    color: "lightgray";
    Text{
        id: testtext;
        anchors.centerIn: parent;
        font.pixelSize: 36;
        font.bold: true;
        text: "测试文本";
    }
    Row{
        anchors.left: parent.left;
        anchors.leftMargin: 8;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 8;
        spacing: 8;
        ColorPicker{
            color: "pink";
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: "salmon";
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: "skyblue";
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: "lawngreen";
            onColorPicked: {
                testtext.color=mColor;
            }
        }
        ColorPicker{
            color: "khaki";
            onColorPicked: {
                testtext.color=mColor;
            }
        }
    }
}

