import QtQuick 2.2

Flickable{
    width: 200;
    height: 200;
    contentWidth: image.width;
    contentHeight: image.height;
    Image{
        id: image;
        source: "http://www.3dmgame.com/uploads/allimg/141226/276_141226085330_3.jpg";
    }
}

