import QtQuick 2.2
import QtQuick.Controls 1.4
import "content";

Rectangle {
    id: rootItem;
    width: 800; height: 500;
    property int count: 0;
    property Component component: null;
    property var itemArray: new Array;
    Text{
        id: textView;
        text: "测试文本";
        anchors.centerIn: parent;
        font.pixelSize: 30;
    }
    function changeTextColor (color){
        textView.color=color;
    }
    function createColorPicker(color){
        if(rootItem.component==null){
            rootItem.component=Qt.createComponent("content/ColorPicker.qml");
        }
        var colorPicker;
        if(rootItem.component.status==Component.Ready){
            colorPicker=rootItem.component.createObject(rootItem,{"color" : color, "x" : rootItem.count*115, "y" : 20});
            colorPicker.colorPicked.connect(rootItem.changeTextColor);
            itemArray[itemArray.length]=colorPicker;
        }
        rootItem.count++;
    }

    Button{
        id: addPicker;
        text: "增加";
        anchors{
            left: parent.left;
            leftMargin: 20;
            top: parent.top;
            topMargin: 100;
        }
        onClicked: {
            createColorPicker(Qt.rgba(Math.random(),Math.random(),Math.random(),1));
        }
    }
    Button{
        id: deleteBtn;
        text: "删除";
        anchors{
            left: addPicker.right;
            leftMargin: 20;
            top: addPicker.top;
        }
        onClicked: {
            if(rootItem.itemArray.length>0){
                var deleteArray=rootItem.itemArray.splice(-1,1);
                //splice函数的作用，删除数组。arrayObject.splice(index,howmany,item1,.....,itemX)
                //index为-1时，从最后开始计算
                deleteArray[0].destroy();
                count--;
            }
        }
    }
}


