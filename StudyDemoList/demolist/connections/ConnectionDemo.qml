import QtQuick 2.2
import QtQuick.Controls 1.2

Rectangle {
    width: 500; height: 500;
    color: "gray";
    Text{
        id: text01;
        font.pixelSize: 50;
        text: "标题一";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 30;
    }
    Text{
        id: text02;
        font.pixelSize: 50;
        text: "标题二";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: text01.bottom;
        anchors.topMargin: 30;
    }
    Button{
        id: btn01;
        width: 100;
        height: 36;
        text: "变色";
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: text02.bottom;
        anchors.topMargin: 30;
    }
    Connections{
        target: btn01;
        onClicked: {
            var a=Math.random();
            var b=Math.random();
            var c=Math.random();
            text01.color=Qt.rgba(a,b,c,1);
            text01.text="("+a+","+b+","+c+")";
            text02.color=Qt.rgba(1-a,1-b,1-c,1);
            text02.text="("+(1-a)+","+(1-b)+","+(1-c)+")";
        }
    }
}

