import QtQuick 2.2

Rectangle {
    width: 600;
    height: 600;
    color: "#EEEEEE";
    id: rootItem;

    Text {
        id: centerText;
        text: "A Single Text.";
        anchors.centerIn: parent;
        font.pixelSize: 24;
        font.bold: true;
    }

    function setTextColor(clr)
    {
        centerText.color = clr;
    }

    Row {
        anchors.left: parent.left;
        anchors.leftMargin: 5;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 5;
        spacing: 5;

        Column {
            spacing: 5;
            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }

            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }
        }

        Column {
            spacing: 5;
            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }

            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }
        }

        Column {
            spacing: 5;
            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }

            ColorPicker {
                color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1.0);
                onColorPicked: setTextColor(clr);
            }
        }
    }
}
