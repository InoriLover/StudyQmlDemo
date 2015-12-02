import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Item {
    id: container;
    width: btnWidth; height: btnHeight;
    property int btnWidth: 100;
    property int btnHeight: 40;
    property string textContent: "";
    signal btnClicked ();
    Gradient{
        id: gradient01;
        GradientStop{ position: 0.0; color: "lightskyblue";}
        GradientStop{ position: 0.5; color: "floralwhite";}
        GradientStop{ position: 1.0; color: "lightskyblue";}
    }
    Gradient{
        id: gradient02;
        GradientStop{ position: 0.0; color: "deepskyblue";}
        GradientStop{ position: 0.5; color: "floralwhite";}
        GradientStop{ position: 1.0; color: "deepskyblue";}
    }
    Button{
        id: btn;
        width: btnWidth; height: btnHeight;
        onClicked: {
            container.btnClicked();
        }
        text: textContent;
        style: ButtonStyle{
            background: Rectangle{
                id: backRect;
                anchors.fill: parent;
                gradient: !btn.pressed? gradient01: gradient02;
                radius: 8; antialiasing: true;
                border.width: btn.pressed ? 3 : 1;
                border.color: "coral";
            }
        }
    }
}

