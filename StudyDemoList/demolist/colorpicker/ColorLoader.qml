import QtQuick 2.2

Rectangle {
    id: container;
    width: 800; height: 500;
    Keys.onEscapePressed: Qt.quit();
    Text{
        id: textView;
        text: "测试文本！";
        font.pixelSize: 36;
        anchors.centerIn: parent;
    }
    Loader{
        id: redLoader;
        source: "content/ColorPicker.qml";
        anchors{
            left: parent.left;
            leftMargin: 20;
            bottom: parent.bottom;
            bottomMargin: 20;
        }
        KeyNavigation.left: greenLoader;
        KeyNavigation.right: blueLoader;
        KeyNavigation.tab: blueLoader;
        onLoaded: {
            item.color="pink";
            focus=true;
        }
        onFocusChanged: {
            item.focus=focus;
        }
    }
    Loader{
        id: blueLoader;
        source: "content/ColorPicker.qml";
        anchors{
            left: redLoader.right;
            leftMargin: 20;
            bottom: parent.bottom;
            bottomMargin: 20;
        }
        KeyNavigation.left: redLoader;
        KeyNavigation.right: orangeLoader;
        KeyNavigation.tab: orangeLoader;
        onLoaded: {
            item.color="lightblue";
        }
        onFocusChanged: {
            item.focus=focus;
        }
    }
    Loader{
        id: orangeLoader;
        source: "content/ColorPicker.qml";
        anchors{
            left: blueLoader.right;
            leftMargin: 20;
            bottom: parent.bottom;
            bottomMargin: 20;
        }
        KeyNavigation.left: blueLoader;
        KeyNavigation.right: greenLoader;
        KeyNavigation.tab: greenLoader;
        onLoaded: {
            item.color="salmon";
        }
        onFocusChanged: {
            item.focus=focus;
        }
    }
    Loader{
        id: greenLoader;
        source: "content/ColorPicker.qml";
        anchors{
            left: orangeLoader.right;
            leftMargin: 20;
            bottom: parent.bottom;
            bottomMargin: 20;
        }
        KeyNavigation.left: orangeLoader;
        KeyNavigation.right: redLoader;
        KeyNavigation.tab: redLoader;
        onLoaded: {
            item.color="lightgreen";
        }
        onFocusChanged: {
            item.focus=focus;
        }
    }
    Connections{
        target: redLoader.item;
        onColorPicked: {
            textView.color=mColor;
            if(!redLoader.focus){
                blueLoader.focus=false;
                orangeLoader.focus=false;
                greenLoader.focus=false;
                redLoader.focus=true;
            }
        }
    }
    Connections{
        target: blueLoader.item;
        onColorPicked: {
            textView.color=mColor;
            if(!blueLoader.focus){
                redLoader.focus=false;
                orangeLoader.focus=false;
                greenLoader.focus=false;
                blueLoader.focus=true;
            }
        }
    }
    Connections{
        target: orangeLoader.item;
        onColorPicked: {
            textView.color=mColor;
            if(!orangeLoader.focus){
                blueLoader.focus=false;
                redLoader.focus=false;
                greenLoader.focus=false;
                orangeLoader.focus=true;
            }
        }
    }
    Connections{
        target: greenLoader.item;
        onColorPicked: {
            textView.color=mColor;
            if(!greenLoader.focus){
                blueLoader.focus=false;
                orangeLoader.focus=false;
                redLoader.focus=false;
                greenLoader.focus=true;
            }
        }
    }
}

