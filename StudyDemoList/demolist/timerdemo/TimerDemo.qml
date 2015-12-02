import QtQuick 2.2
import  QtQuick.Controls 1.4

Rectangle {
    id: container;
    width: 500; height: 500;
    property int count;
    Component.onCompleted: {
        container.count=10;
    }
    Text{
        id: textTitle;
        font.pixelSize: 26;
        anchors.centerIn: parent;
    }
    Timer{
        id: timer;
        interval: 1000;
        repeat: true;
        triggeredOnStart: true;
        onTriggered: {
            textTitle.text=container.count+"!";
            container.count-=1;
            if(container.count<0){
                textTitle.text="时间到！";
                timer.stop();
            }
        }
    }
    Button{
        id: btn01;
        text: "倒计时";
        anchors{
            horizontalCenter: parent.horizontalCenter;
            top: textTitle.bottom;
            topMargin: 20;
        }
        onClicked: {
            container.count=10;
            timer.start();
        }
    }
}

