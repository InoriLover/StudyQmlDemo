import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle {
    width: 400; height: 400;
    color: "lightgray";
    Row{
        anchors.fill: parent;
        spacing: 20;
        Column{
            width: 300;
            spacing: 16;
            Text{
                id: sliderText;
                color: "deepskyblue";
                text: "current--"+"0.1";
            }
            Slider{
                width: 280;
                height: 30;
                value: 0.1;
                onValueChanged: {
                    sliderText.text="current--"+value;
                }
            }
            Slider{
                width: 280;
                height: 30;
                minimumValue: 0;
                maximumValue: 100;
                stepSize: 1.0;
                value: 50;
                tickmarksEnabled: true;
            }
            Slider{
                width: 280;
                height: 30;
                stepSize: 0.1;
                value: 0;
                tickmarksEnabled: true;
                style: SliderStyle{
                    groove: Rectangle{
                        implicitWidth: 300;
                        height: 8;
                        color: "gray";
                        radius: 8; antialiasing: true;
                    }
                    handle: Rectangle{
                        width: 30; height: 30;
                        anchors.centerIn: parent;
                        color: control.pressed ? "white" : "lightgray" ;
                        border.width: 2;
                        border.color: "orange";
                        radius: 12;
                    }
                }
            }
            Slider{
                id: customPanel;
                width: 300; height: 30;
                stepSize: 0.1;
                value: 0;
                tickmarksEnabled: true;
                style: SliderStyle{
                    groove: Rectangle{
                        implicitWidth: 300;
                        implicitHeight: 8;
                        color: "gray";
                        radius: 8; antialiasing: true;
                    }
                    handle: Rectangle{
                        anchors.centerIn: parent;
                        width: 30;
                        height: 30;
                        color: control.pressed ? "white" : "lightgray" ;
                        border.width: 2;
                        border.color: "skyblue";
                        radius: 12;
                        Text{
                            anchors.centerIn: parent;
                            text: parseFloat(control.value).toFixed(1);
                        }
                    }
                    panel: Rectangle{
                        anchors.fill: parent;
                        radius: 4;
                        color: "#44ff8dbb";
                        Loader{
                            id: grooveLoader;
                            anchors.centerIn: parent;
                            sourceComponent: groove;
                        }
                        Loader{
                            id: handleLoader;
                            anchors.verticalCenter: grooveLoader.verticalCenter;
                            x: Math.min(grooveLoader.x+(control.value*grooveLoader.width)/(control.maximumValue-control.minimumValue),grooveLoader.width-item.width);
                            sourceComponent: handle;
                        }
                    }
                }
            }
        }
         Slider{
                width: 30;
                height: 300;
                orientation: Qt.Vertical;
                stepSize: 0.1;
                value: 0.2;
                tickmarksEnabled: true;
            }
    }
}

