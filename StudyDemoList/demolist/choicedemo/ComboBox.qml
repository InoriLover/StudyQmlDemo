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
                width: parent.width-10;
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
                editable: true;
                width: parent.width-10;
                model: ListModel{
                    ListElement{
                        text: "香蕉";
                    }
                }
                onAccepted: {
                    if(count<4&&find(currentText)===-1){
                        model.append({text: editText});
                        currentIndex=find(currentText);
                        if(count===4){
                            editable=false;
                        }
                    }
                }
            }
        }
        GroupBox{
            id: group03;
            width: 200; height: 120;
            title: "自定义风格";
            ComboBox{
                anchors.top: parent.top;
                anchors.topMargin: 16;
                anchors.horizontalCenter: parent.horizontalCenter;
                width: parent.width-10;
                model: ["风格1","风格2","风格3","风格4"];
                style: ComboBoxStyle{
                    dropDownButtonWidth: 20;
                    selectedTextColor: "purple";
                    selectionColor: "pink";
                    textColor: "skyblue";
                    background: Rectangle{
                        implicitHeight: 24;
                        border.width: control.editable ? 0 : 2;
                        border.color: (control.hovered||control.pressed) ?"deepskyblue" : "red";
                        color: (control.hovered||control.pressed) ? "lightsalmon" : "lawngreen" ;
                        Image{
                            width: 14; height: 14;
                            anchors.right: parent.right;
                            anchors.rightMargin: 4;
                            anchors.verticalCenter: parent.verticalCenter;
                            source: "content/arrow 3.png";
                        }
                    }
                    label: Text{
                        anchors.left: parent.left;
                        anchors.leftMargin: 8;
                        width: parent.width-22;
                        height: parent.height;
                        horizontalAlignment: Text.AlignHCenter;
                        verticalAlignment: Text.AlignVCenter;
                        text: control.currentText;
                        color: (control.hovered||control.pressed) ? "red" : "black" ;
                    }
                }
            }
        }
        GroupBox{
            id: group04;
            width: 200; height: 120;
            title: "月份输入";
            ComboBox{
                anchors.top: parent.top;
                anchors.topMargin: 16;
                anchors.horizontalCenter: parent.horizontalCenter;
                editable: true;
                model: ListModel{}
                validator: IntValidator{ top: 12; bottom: 1;}
                onAccepted: {
                    if(count<12&&find(currentText)===-1){
                        model.append({text: editText});
                        currentIndex=find(currentText);
                        if(count===12){
                            editable=false;
                        }
                    }
                }
            }
        }
    }
}

