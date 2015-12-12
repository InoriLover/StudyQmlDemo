import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "images";

Rectangle{
    id: root;
    width: 500; height: 500;
    color: "lightgray";
    property var pics: ["images/test001.png","images/test002.png","images/test003.png","images/test004.png"];
    Component.onCompleted: {
        tabView.addTab("选项一",tabContent);
        tabView.addTab("选项二",tabContent);
        tabView.addTab("选项三",tabContent);
        tabView.addTab("选项四",tabContent);
    }
    Component{
        id: tabContent;
        Rectangle{
            anchors.fill: parent;
            anchors.margins: 4;
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1.0);
        }
    }
    TabView{
        id: tabView;
        anchors.fill: parent;
        style: TabViewStyle{
            tab: Item{
                implicitWidth: Math.max(text.width+8,100);  //TODO
                implicitHeight: 48;
                Rectangle{
                    width: (styleData.index<control.count)? (parent.width-2) : parent.width ;
                    height: parent.height-4;
                    anchors.left: parent.left;
                    anchors.leftMargin: 1;
                    visible: styleData.selected;
                    gradient: Gradient{
                        GradientStop{ position: 0.0; color: "#606060";}
                        GradientStop{ position: 0.5; color: "#c0c0c0";}
                        GradientStop{ position: 1.0; color: "#a0a0a0";}
                    }
                }
                Rectangle{
                    width: 2;
                    height: parent.height-4;
                    anchors.top: parent.top;
                    anchors.right: parent.right;
                    visible: (styleData.index<control.count-1);
                    gradient: Gradient{
                        GradientStop{ position: 0.0; color: "#404040";}
                        GradientStop{ position: 0.5; color: "#707070";}
                        GradientStop{ position: 1.0; color: "#404040";}
                    }
                }
                Rectangle{
                    implicitWidth: Math.max(text.width,92);
                    height: 48;
                    anchors.centerIn: parent;
                    color: "transparent";
                    z: 1;
                    Image{
                        id: image;
                        width: 40;
                        height: 40;
                        anchors.left: parent.left;
                        source: pics[styleData.index];
                    }
                    Text{
                        id: text;
                        anchors.left: image.right;
                        anchors.verticalCenter: parent.verticalCenter;
                        text: styleData.title;
                        font.pixelSize: 16;
                        color: styleData.selected ? "blue" : (styleData.hovered ? "green" : "orange");
                    }
                }
            }
            tabBar: Rectangle{
                height: 56;
                gradient: Gradient{
                    GradientStop{ position: 0.0; color: "#484848"}
                    GradientStop{ position: 0.3; color: "#787878"}
                    GradientStop{ position: 1.0; color: "#a0a0a0"}
                }
                Rectangle{
                    width: parent.width;
                    height: 4;
                    anchors.bottom: parent.bottom;
                    border.width: 2;
                    border.color: "#c7c7c7";
                }
            }
                        frame: Rectangle{
                            color: "deepskyblue";
                        }
        }
    }
}

