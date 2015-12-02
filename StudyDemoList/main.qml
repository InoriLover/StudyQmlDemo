import QtQuick 2.2
import QtQuick.Controls 1.4


Rectangle {
    id: rootItem;
    width: 800; height: 500;
    property int count: 0;
    property Component component: null;
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
            rootItem.component=Qt.createComponent("demolist/dynamicadd/content/ColorPicker.qml");
        }
        var colorPicker;
        if(rootItem.component.status==Component.Ready){
            colorPicker=component.createObject(rootItem,{"color" : color, "x" : rootItem.count*115, "y" : 20});
            colorPicker.colorPicked.connect(rootItem.changeTextColor);
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
}

