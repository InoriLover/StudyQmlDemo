import QtQuick 2.2
import QtQuick.Layouts 1.1
import "content"

Rectangle {
    id: container;
    width: 500; height: 800;
    color: "lightgray";
    Text{
        id: testtext;
        anchors.centerIn: parent;
        anchors.verticalCenterOffset: -80;
        font.pixelSize: 36;
        font.bold: true;
        text: "测试文本";
    }
    GridLayout{
        id: gridLayout;
        width: 400;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 16;
        rows: 3; columns: 3;
        rowSpacing: 8; columnSpacing: 8;
        flow: GridLayout.LeftToRight;
        ColorPicker{
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
            onColorPicked: {
                testtext.color=mColor;
            }
            Layout.rowSpan: 2;
            Layout.columnSpan: 2;
            Layout.alignment: Qt.AlignVCenter|Qt.AlignHCenter;
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
            Layout.fillWidth: true;
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

