import QtQuick 2.0

Item {
    width: 400; height: 300;
    Canvas{
        id: canvas;
        anchors.fill: parent;
        onPaint: {
            var paint=getContext("2d");
            paint.lineWidth=2;
            paint.strokeStyle="green";
            paint.font="40px sans-serif";
            var gradient=paint.createLinearGradient(0,0,width,height);
            gradient.addColorStop(0.0,"red");
            gradient.addColorStop(0.5,"purple");
            gradient.addColorStop(1.0,"pink");
            paint.fillStyle=gradient;

            paint.beginPath();
            paint.text("测试文本一",10,50);
            paint.fill();
            paint.fillText("测试文本二",10,100);
            paint.beginPath();
            paint.text("测试文本三",10,150);
            paint.stroke();
            paint.strokeText("测试文本四",10,200);
            paint.beginPath();
            paint.text("测试文本五",10,250);
            paint.stroke();
            paint.fill();
        }
    }
}

