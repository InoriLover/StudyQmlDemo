import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

Rectangle{
    id: container;
    width: 780; height: 500;
    color: "lightgray";
    Text{
        id: textTitle;
        text: "Stressed Out";
        font.pixelSize: 50;
        font.bold: true;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 50;
    }
    Component{
        id: component;
        Rectangle{
            id: colorPickRect;
            width: 120; height: 50;
            radius: 8; antialiasing: true;
            signal colorPicked(color pickColor);
            states: State{
                name: "hovered";
                PropertyChanges{ target: colorPickRect; scale: 1.2;}
            }
            transitions: Transition{
                NumberAnimation{ properties: "scale"; duration: 200;}
            }
            Button{
                id: btn01;
                anchors.fill: colorPickRect;
                onHoveredChanged: {
                    if(hovered){
                        colorPickRect.state="hovered";
                    }else{
                        colorPickRect.state="";
                    }
                }
                onClicked: {
                    colorPickRect.colorPicked(colorPickRect.color);
                }
                style: ButtonStyle{
                    background: Rectangle{
                        color: "transparent";
                    }
                }
            }
        }
    }
    Loader{
        id: lightpinkLoader;
        anchors{
            left: parent.left; leftMargin: 30;
            bottom: parent.bottom; bottomMargin: 30;
        }
        sourceComponent: component;
        onLoaded: {
            item.color="lightpink";
        }
    }
    Loader{
        id: lightskyblueLoader;
        anchors{
            left: lightpinkLoader.right; leftMargin: 30;
            bottom: parent.bottom; bottomMargin: 30;
        }
        sourceComponent: component;
        onLoaded: {
            item.color="lightskyblue";
        }
    }
    Loader{
        id: lightgreenLoader;
        anchors{
            left: lightskyblueLoader.right; leftMargin: 30;
            bottom: parent.bottom; bottomMargin: 30;
        }
        sourceComponent: component;
        onLoaded: {
            item.color="lightgreen";
        }
    }
    Loader{
        id: lightsalmonLoader;
        anchors{
            left: lightgreenLoader.right; leftMargin: 30;
            bottom: parent.bottom; bottomMargin: 30;
        }
        sourceComponent: component;
        onLoaded: {
            item.color="lightsalmon";
        }
    }
    Loader{
        id: khakiLoader;
        anchors{
            left: lightsalmonLoader.right; leftMargin: 30;
            bottom: parent.bottom; bottomMargin: 30;
        }
        sourceComponent: component;
        onLoaded: {
            item.color="khaki";
        }
    }
    Connections{
        target: lightpinkLoader.item;
        onColorPicked: {
            textTitle.color=pickColor;
        }
    }
    Connections{
        target: lightskyblueLoader.item;
        onColorPicked: {
            textTitle.color=pickColor;
        }
    }
    Connections{
        target: lightgreenLoader.item;
        onColorPicked: {
            textTitle.color=pickColor;
        }
    }
    Connections{
        target: lightsalmonLoader.item;
        onColorPicked: {
            textTitle.color=pickColor;
        }
    }
    Connections{
        target: khakiLoader.item;
        onColorPicked: {
            textTitle.color=pickColor;
        }
    }
}

