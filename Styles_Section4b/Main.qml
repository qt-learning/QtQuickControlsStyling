import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Run-time style selection")

    header: Row {
        spacing: 100

        TextArea {
            width: window.width * .6
            text: qsTr("Editable header in ApplicationWindow's style...")
        }

        ComboBox {
            anchors.verticalCenter: parent.verticalCenter

            model: ListModel {
                ListElement { text: qsTr("First") }
                ListElement { text: qsTr("Second") }
                ListElement { text: qsTr("Third") }
            }
        }
    }

    footer: Column {
        Text {
            leftPadding: 12
            text: qsTr("Other controls")
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 60
            bottomPadding: 20

            Slider {
                anchors.verticalCenter: parent.verticalCenter
                value: .5
                to: 1
                from: 0
            }

            ProgressBar {
                anchors.verticalCenter: parent.verticalCenter
                value: .75
                to: 1
                from: 0
            }

            Switch {
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    Page {
        anchors.fill: parent

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            topPadding: 50
            spacing: 10

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 11
                text: qsTr("Buttons in Qt Quick Controls style")
            }

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20

                Column {
                    anchors.verticalCenter: parent.verticalCenter

                    RadioButton {
                        checked: true
                        text: qsTr("RadioButton1")
                    }

                    RadioButton {
                        text: qsTr("RadioButton2")
                    }
                }

                CheckBox {
                    anchors.verticalCenter: parent.verticalCenter
                }

                RoundButton {
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("RoundButton")
                }
            }

            GroupBox {
                title: qsTr("More buttons in Qt Quick Controls style")

                Grid {
                    anchors.centerIn: parent
                    spacing: 10
                    rows: 2
                    columns: 3

                    Button {
                        text: qsTr("Button")
                    }

                    Button {
                        text: qsTr("Button")
                    }

                    Button {
                        text: qsTr("Button")
                    }

                    Button {
                        text: qsTr("Button")
                    }

                    Button {
                        text: qsTr("Button")
                    }

                    Button {
                        text: qsTr("Button")
                    }
                }
            }
        }
    }
}
