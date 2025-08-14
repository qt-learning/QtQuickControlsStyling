import QtQuick
import QtQuick.Controls.Fusion
import "controls" as MyControls
import MyStyle

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Customizing Styles")

    SystemPalette {
        id: systemPalette;

        colorGroup: SystemPalette.Active
    }

    Palette {
        id: myPalette

        buttonText: "red"
        button: "khaki"
        disabled {
            buttonText: "lavender"
            button: "gray"
        }
    }

    header: Row {
        spacing: 100

        TextArea {
            width: window.width * .6
            text: qsTr("Editable header using System Palette color...")
            color: systemPalette.light
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
                    text: qsTr("Enable Buttons")

                    onClicked: {
                        button1.enabled = true
                        button2.enabled = true
                    }
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
                        id: button1

                        palette.buttonText: "green"
                        palette.disabled.buttonText: "red"
                        palette.button: "lightcoral"
                        palette.disabled.button: "black"
                        text: qsTr("Palette In-Place")

                        onClicked: { enabled = false }
                    }

                    Button {
                        id: button2

                        text: qsTr("Palette Object")
                        palette: myPalette

                        onClicked: { enabled = false }
                    }

                    Button {
                        text: qsTr("Style In-Place")

                        onPressed: () => {
                                       backgroundRect.color = "lightblue"
                                   }
                        onReleased: () => {
                                        backgroundRect.color = "magenta"
                                    }

                        background: Rectangle {
                            id: backgroundRect

                            implicitWidth: 80
                            implicitHeight: 30
                            radius: 4
                            color: "magenta"
                            border.color: "darkmagenta"
                            border.width: 1
                        }
                    }

                    MyButton {
                        text: qsTr("Custom Component")
                    }

                    MyControls.Button {
                        text: qsTr("Custom Namespace")
                    }

                    Button {
                        text: qsTr("Custom Style")
                    }
                }
            }
        }
    }
}
