import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle {
    id: container;
    width: 500; height: 500;
    color: "lightgray";
    property var listArr: new Array(0);
    function addItem(object){
        listArr[listArr.length]=object;
    }
    function removeItem(object){
        var i=0;
        for(i;i<listArr.length;i++){
            if(listArr[i]===object){
                break;
            }
        }
        listArr.splice(i,1);
    }
    function resetText(){
        var i=0;
        var message="";
        for(i;i<listArr.length;i++){
            message+="\n"+listArr[i];
        }
        textResult.text="你选好的菜单是："+message;
    }
    ExclusiveGroup{
        id: onlyOne;
    }
    Component{
        id: checkBoxStyle;
        CheckBoxStyle{
            indicator: Rectangle{
                implicitWidth: 24
                implicitHeight: 24
                radius: 4
                border.color: control.activeFocus ? "darkblue" : "gray"
                border.width: 2
                Image{
                    anchors.fill: parent;
                    anchors.margins: 4;
                    source: "content/tick 1.png";
                    visible: control.checked? true: false;
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
            text: "请点餐：";
            font.pixelSize: 24;
            anchors.horizontalCenter: parent.horizontalCenter;
        }
        Column{
            id: recipe;
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.top: textTitle.bottom;
            anchors.topMargin: 16;
            spacing: 8;
            CheckBox{
                id: checkBox01;
                text: "红烧肉";
                style: checkBoxStyle;
                onCheckedChanged: {
                    if(checked){
                        addItem(text);
                    }else{
                        removeItem(text);
                    }
                    resetText();
                }
            }
            CheckBox{
                id: checkBox02;
                text: "土豆鸡丁";
                style: checkBoxStyle;
                onCheckedChanged: {
                    if(checked){
                        addItem(text);
                    }else{
                        removeItem(text);
                    }
                    resetText();
                }
            }
            CheckBox{
                id: checkBox03;
                text: "夫妻肺片";
                style: checkBoxStyle;
                onCheckedChanged: {
                    if(checked){
                        addItem(text);
                    }else{
                        removeItem(text);
                    }
                    resetText();
                }
            }
            CheckBox{
                id: checkBox04;
                text: "糖醋排骨";
                style: checkBoxStyle;
                onCheckedChanged: {
                    if(checked){
                        addItem(text);
                    }else{
                        removeItem(text);
                    }
                    resetText();
                }
            }
            CheckBox{
                id: checkBox05;
                text: "金针菇肥牛";
                style: checkBoxStyle;
                onCheckedChanged: {
                    if(checked){
                        addItem(text);
                    }else{
                        removeItem(text);
                    }
                    resetText();
                }
            }
            CheckBox{
                id: checkBox06;
                text: "盐水毛豆";
                style: checkBoxStyle;
                onCheckedChanged: {
                    if(checked){
                        addItem(text);
                    }else{
                        removeItem(text);
                    }
                    resetText();
                }
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
            text: "你选好的菜单是：";
        }
    }
}

