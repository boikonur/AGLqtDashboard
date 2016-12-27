import QtQuick 2.0
import QtGraphicalEffects 1.0
Item {

    property int speed: 0

    height: 335 //TODO: Groesse skalierbar machen
    width: height
    x: (parent.width / 2) - (width / 2)
    y: (parent.height / 2) - (height / 2)

    Image {
         id: innerRingRect
         x: 0
         y: 0
         height: parent.height
         width: parent.width
         source: "/pics/Tacho_Mitte.png"


         Text {
             id: speeddigit
             text: speed
             font.pixelSize: 86
             font.bold: false
             font.family: "Eurostile"
             y: 110
             color: "#afafaf"
             anchors.horizontalCenter: parent.horizontalCenter
         }

         DropShadow {
                 anchors.fill: speeddigit
                 horizontalOffset: 0
                 verticalOffset: 5
                 radius: 4.0
                 samples: 16
                 color: "black"
                 source: speeddigit
             }

         Text {
             text: "km/h"
             font.pixelSize: 20
             font.bold: false
             font.family: "Eurostile"
             y: 200
             color: "white"
             anchors.horizontalCenter: parent.horizontalCenter
         }





    }
}
