import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle {
    width: 640; height: 480;
    color: "lightgray";
    Grid{
        anchors.fill: parent;
        rows: 2; columns: 2;
        rowSpacing: 8; columnSpacing: 8;
        GroupBox{
            id: group01;
            width: 200; height: 120;
            title: "可选游戏";
            ComboBox{
                anchors.top: parent.top;
                anchors.topMargin: 16;
                anchors.horizontalCenter: parent.horizontalCenter;
                width: parent.width-30;
                model: ["植物大战僵尸","光之子","生化奇兵","看门狗","拳皇13","暗黑血统"];
            }
        }
        GroupBox{
            id: group02;
            width: 200; height: 120;
            title: "可编辑水果";
            ComboBox{
                anchors.top: parent.top;
                anchors.topMargin: 16;
                anchors.horizontalCenter: parent.horizontalCenter;
                width: parent.width-30;
                model: ListModel{
                    ListElement{
                        text: "香蕉"; color: "Yellow";
                    }
                }
                onAccepted: {
                   //未完待续
                }
            }
        }
        GroupBox{
            id: group03;
        }
        GroupBox{
            id: group04;
        }
    }
}

