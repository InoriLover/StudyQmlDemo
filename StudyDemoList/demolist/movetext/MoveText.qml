import QtQuick 2.2
import QtQuick.Controls 1.4

Rectangle{
    width: 800; height: 800;
    focus: true;
    Keys.enabled: true;
    Keys.onEscapePressed: {
        Qt.quit();
    }
    Keys.forwardTo: [moveText,checkBox];
    //因为是父视图获得键盘响应，这里将其分发给指定了权限的子元素(个人理解)
    Text{
        id: moveText;
        text: "测试文本";
        font.pixelSize: 20;
        font.bold: true;
        x: 300; y: 300;
        Keys.enabled: true;
        Keys.onPressed: {
            switch(event.key){
            case Qt.Key_Left:
                x-=3;
                break;
            case Qt.Key_Right:
                x+=3;
                break;
            case Qt.Key_Up:
                y-=3;
                break;
            case Qt.Key_Down:
                y+=3;
                break;
            default:
                return;
            }
            event.accepted=true;
        }
    }
    CheckBox{
        id: checkBox;
        text: "这只是一个测试";
        anchors{
            left: parent.left;
            leftMargin: 20;
            bottom: parent.bottom;
            bottomMargin: 20;
        }
    }
}
