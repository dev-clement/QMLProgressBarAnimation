import QtQuick
import QtQuick.Shapes

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Progress Bar animation")
    color: "#202020"

    Shape {
        id: shape
        property real progress: 0.0
        width: 200
        height: 200

        anchors.centerIn: parent

        smooth: true
        antialiasing: true

        ShapePath {
            strokeWidth: 10

            fillColor: root.color
            strokeColor: Qt.color("#9ef01a")

            PathAngleArc {
                centerX: shape.width / 2
                centerY: shape.height / 2

                radiusX: shape.width / 2
                radiusY: shape.height / 2

                startAngle: -90
                sweepAngle: shape.progress * 360
            }
        }

        Text {
            anchors.centerIn: parent
            font {
                pointSize: 14
                weight: Font.DemiBold
            }
            color: "white"
            text: (shape.progress * 100).toFixed(0) + "%"
        }
    }


    NumberAnimation {
        id: numberAnimation
        target: shape
        property: "progress"
        from: 0.0
        to: 1.0
        duration: 6000
        running: true
        loops: Animation.Infinite
    }
}
