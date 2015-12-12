import QtQuick 2.0

Item {
    width: 300; height: 300;
    Canvas{
        anchors.fill: parent;
        onPaint: {
            var paint=getContext("2d");
            paint.lineWidth=2;
            paint.strokeStyle="green";
            var gradient=paint.createLinearGradient(50,50,200,260);
            gradient.addColorStop(0.0,"red");
            gradient.addColorStop(0.5,"purple");
            gradient.addColorStop(1.0,"pink");
            paint.fillStyle=gradient;
            paint.beginPath();
            paint.rect(50,60,150,120);
            paint.fill();
            paint.stroke();

            gradient=paint.createRadialGradient(50,50,200,260,160,140);
            gradient.addColorStop(0.0,"red");
            gradient.addColorStop(0.5,"purple");
            gradient.addColorStop(1.0,"pink");
            paint.fillStyle=gradient;
            paint.beginPath();
            paint.rect(160,80,260,150);
            paint.fill();
            paint.stroke();
        }
    }
}

