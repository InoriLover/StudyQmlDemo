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
            paint.font="42px sans-serif";
            var gradient=paint.createLinearGradient(0,0,width,height);
            gradient.addColorStop(0.0,"hotpink");
            gradient.addColorStop(1.0,"purple");
            paint.fillStyle=gradient;
            paint.beginPath();
            //moveTo(x,y) 移动到位置（x，y）
            paint.moveTo(10,10);
            //bezierCurveTo(x1,y1,x2,y2,endX,endY)  分别是控制点1，控制点2，结束点的坐标
            paint.bezierCurveTo(0,height-10,width-10,height/2,width/4,height/4);
            //lineTo(x,y) 绘制到指定坐标的直线
            paint.lineTo(width/2,height/4);
            //arc(x,y,r,startAngle,endAngle,orientation) 绘制圆弧
            paint.arc(width*5/8,height/4,width/8,Math.PI,0,false);
            //ellipse(x,y,rx,ry) 绘制椭圆
            paint.ellipse(width*11/16,height/4,width/8,height/4);
            paint.lineTo(width/2,height*7/8);
            //text(string,x,y) 绘制一段文本
            paint.text("Complex Path",width/4,height*7/8);
            paint.fill();
            paint.stroke();
        }
    }
}

