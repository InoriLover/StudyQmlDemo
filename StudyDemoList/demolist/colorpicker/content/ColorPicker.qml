import QtQuick 2.2

Rectangle {
    id: colorPicker;
    width: 100; height: 70;
    radius: 8; antialiasing: true;
    signal colorPicked(color mColor);
    function configureBorder(){
        colorPicker.border.width=colorPicker.focus ?3 :0;
        colorPicker.border.color=colorPicker.focus ?"black" :"white";
    }
    MouseArea{
        anchors.fill: parent;
        onClicked: {
            mouse.accepted=true;
            colorPicker.focus=true;
        }
    }
    Keys.onSpacePressed: {
        colorPicked(colorPicker.color);
        event.accepted=true;
    }
    onFocusChanged: {
        if(focus){
            colorPicked(colorPicker.color);
        }
        configureBorder();
    }
    Component.onCompleted: {
        configureBorder();
    }
}

