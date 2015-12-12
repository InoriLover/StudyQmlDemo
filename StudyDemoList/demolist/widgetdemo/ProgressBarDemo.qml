import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle {
    width: 500; height: 500;
    color: "lightgray";
    Row{
        anchors.fill: parent;
        anchors.margins: 10;
        spacing: 16;
        ProgressBar{
            minimumValue: 0;
            maximumValue: 100;
            width: 150; height: 20;
            value: 10;
            Timer{
                interval: 200;
                repeat: true;
                running: true;
                onTriggered: {
                    if(parent.value<100){
                        parent.value+=1;
                    }else{
                        stop();
                    }
                }
            }
        }
        ProgressBar{
            orientation: Qt.Vertical;
            minimumValue: 0;
            maximumValue: 1;
            width: 20; height: 150;
            value: 0.2;
            Timer{
                interval: 1000;
                repeat: true;
                running: true;
                onTriggered: {
                    parent.value=Math.random();
                }
            }
        }
        ProgressBar{
            minimumValue: 0;
            maximumValue: 1;
            value: 1;
            indeterminate: true;
            width: 80; height: 20;
        }
        Item{
            width: 220; height: parent.height;
            ProgressBar{
                id: customProgressBar;
                anchors.centerIn: parent;
                minimumValue: 0;
                maximumValue: 1;
                value: 0.3;
                width: 180; height: 20;
                style: ProgressBarStyle{
                    background: Rectangle{
                        implicitWidth: 200;
                        implicitHeight: 20;
                        border.width: 1;
                        border.color: control.hovered ? "green" : "red" ;
                        color: "lightgray";
                    }
                    progress: Rectangle{
                        color: "pink";
                    }
                }
            }
            ProgressBar{
                id: percentProgressBar;
                anchors.top: customProgressBar.bottom;
                anchors.topMargin: 10;
                minimumValue: 0;
                maximumValue: 1;
                value: 0.36;
                width: 180; height: 20;
                style: ProgressBarStyle{
                    id: progressBarStyle;
                    background: Rectangle{
                       border.width: 2;
                       border.color: control.hovered ? "lawngreen" : "hotpink" ;
                       color: "lightskyblue";
                    }
                    progress: Rectangle{
                        color: "khaki";
                    }
                    panel: Item{
                        implicitWidth: 200;
                        implicitHeight: 20;

                        Loader{
                            anchors.fill: parent;
                            sourceComponent: background;
                        }
                        Loader{
                            id: progressLoader;
                            anchors.left: parent.left;
                            anchors.top: parent.top;
                            anchors.bottom: parent.bottom;
                            anchors.margins: 6;
                            z: 1;
                            width: currentProgress*(parent.width-8);
                            sourceComponent: progressBarStyle.progress;
                        }
                        Text{
                            color: "purple";
                            text: currentProgress*100+"%";
                            z: 2;
                            anchors.centerIn: parent;
                            font.pixelSize: 20;
                        }
                    }
                }
            }
        }
    }
}

