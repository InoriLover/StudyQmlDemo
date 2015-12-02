import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle {
    id: container;
    width: 500; height: 500;
    color: "lightgray";
    ExclusiveGroup{
        id: onlyOne;
    }
    Component{
        id: radioBtnStyle;
        RadioButtonStyle{
            indicator: Rectangle{
                implicitWidth: 16
                implicitHeight: 16
                radius: 8
                border.color: control.activeFocus ? "darkblue" : "gray"
                border.width: 2
                Rectangle {
                    anchors.fill: parent
                    visible: control.checked
                    color: "#22BBAA";
                    radius: 8;
                    anchors.margins: 4;
                }
            }
        }
    }
    Rectangle{
        id: topRect;
        width: parent.width;
        anchors.top: parent.top;
        color: "transparent";
        Text{
            id: textTitle;
            text: "请选择你的英雄：";
            font.pixelSize: 24;
            anchors.horizontalCenter: parent.horizontalCenter;
        }
        RadioButton{
            property bool flag: false;
            id: radioBtn01;
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.top: textTitle.bottom;
            anchors.topMargin: 8;
            style: radioBtnStyle;
            exclusiveGroup: onlyOne;
            text: "Rogue Knight";
            onClicked: {
                if(checked&&flag){
                    checked=false;
                    textResult.text="你选择的英雄是："
                }
                flag=true;
            }
            onCheckedChanged: {
                if(checked){
                    textResult.text="你选择的英雄是："+text;
                }
                flag=false;
            }
        }
        RadioButton{
            property bool flag: false;
            id: radioBtn02;
            anchors.left: radioBtn01.left;
            anchors.top: radioBtn01.bottom;
            anchors.topMargin: 8;
            style: radioBtnStyle;
            exclusiveGroup: onlyOne;
            text: "Chaos Knight";
            onClicked: {
                if(checked&&flag){
                    checked=false;
                    textResult.text="你选择的英雄是："
                }
                flag=true;
            }
            onCheckedChanged: {
                if(checked){
                    textResult.text="你选择的英雄是："+text;
                }
                flag=false;
            }
        }
        RadioButton{
            property bool flag: false;
            id: radioBtn03;
            anchors.left: radioBtn01.left;
            anchors.top: radioBtn02.bottom;
            anchors.topMargin: 8;
            style: radioBtnStyle;
            exclusiveGroup: onlyOne;
            text: "Butcher";
            onClicked: {
                if(checked&&flag){
                    checked=false;
                    textResult.text="你选择的英雄是："
                }
                flag=true;
            }
            onCheckedChanged: {
                if(checked){
                    textResult.text="你选择的英雄是："+text;
                }
                flag=false;
            }
        }
        RadioButton{
            property bool flag: false;
            id: radioBtn04;
            anchors.left: radioBtn01.left;
            anchors.top: radioBtn03.bottom;
            anchors.topMargin: 8;
            style: radioBtnStyle;
            exclusiveGroup: onlyOne;
            text: "Shadow Fiend";
            onClicked: {
                if(checked&&flag){
                    checked=false;
                    textResult.text="你选择的英雄是："
                }
                flag=true;
            }
            onCheckedChanged: {
                if(checked){
                    textResult.text="你选择的英雄是："+text;
                }
                flag=false;
            }
        }
        RadioButton{
            property bool flag: false;
            id: radioBtn05;
            anchors.left: radioBtn01.left;
            anchors.top: radioBtn04.bottom;
            anchors.topMargin: 8;
            style: radioBtnStyle;
            exclusiveGroup: onlyOne;
            text: "Blood Seeker";
            onClicked: {
                if(checked&&flag){
                    checked=false;
                    textResult.text="你选择的英雄是："
                }
                flag=true;
            }
            onCheckedChanged: {
                if(checked){
                    textResult.text="你选择的英雄是："+text;
                }
                flag=false;
            }
        }
    }
    Rectangle{
        width: parent.width;
        id: bottomRect;
        anchors.top: parent.verticalCenter;
        anchors.topMargin: 40;
        color: "transparent";
        Text{
            id: textResult;
            font.pixelSize: 24;
            anchors.horizontalCenter: parent.horizontalCenter;
            text: "你选择的英雄是：";
        }
    }
}

