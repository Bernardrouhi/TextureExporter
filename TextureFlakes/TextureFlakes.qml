import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import AlgWidgets 2.0
import AlgWidgets.Style 2.0
import Painter 1.0

import "functionLibrary.js" as FLib
import "./widgets/core"

Item 
{
    objectName: `Asset Loader v${FPlugin.version}`
    width: FStyle.window.width
    height: FStyle.window.height

    Rectangle{
        anchors.fill: parent
        color: FStyle.window.background
        ColumnLayout
        {
            anchors.fill: parent

            // Project Name
            Rectangle
            {
                Layout.fillWidth: true
                Layout.preferredHeight: FStyle.window.headerHeight

                color: FStyle.window.titleBackground

                RowLayout{
                    anchors.verticalCenter: parent.verticalCenter

                    AlgLabel
                    {
                        text: "Project:"
                        font.pixelSize: FStyle.window.fontSize
                        font.bold: true
                        Layout.leftMargin: FStyle.button.margin
                    }

                    AlgLabel
                    {
                        id: projectNameId
                        text: ""
                        font.pixelSize: FStyle.window.fontSize
                        font.bold: true
                        horizontalAlignment: Text.AlignLeft
                    }
                }
                
            }

            // Asset Type Drop Down
            Rectangle{
                Layout.preferredHeight: FStyle.window.headerHeight

                RowLayout{
                    anchors.fill: parent

                    AlgLabel{
                        text: "Asset Type : "
                        font.pixelSize: 10
                        font.bold: true
                        Layout.leftMargin: FStyle.button.margin
                    }

                    AlgComboBox{
                        id: assetContainerTypeId
                    }

                    Row {
                        spacing: 5

                        AlgTextInput{
                            id: searchNameId
                            width: 150

                            onAccepted:
                            {
                            }
                        }

                        CoreButton
                        {
                            text: ""
                            iconSource: "icons/search.svg"
                            Layout.leftMargin: FStyle.button.margin
                            
                            onClicked:
                            {
                            }
                        }

                    }

                }
            }

            // Active Asset
            Rectangle
            {
                Layout.fillWidth: true
                Layout.preferredHeight: FStyle.window.headerHeight

                color: FStyle.window.titleBackground

                RowLayout{
                    anchors.fill: parent
                    anchors.verticalCenter: parent.verticalCenter

                    RowLayout{
                        Layout.alignment: Qt.AlignLeft
                        
                        AlgLabel
                        {
                            text: "Active Asset:"
                            font.pixelSize: FStyle.window.fontSize
                            font.bold: true
                            Layout.leftMargin: FStyle.button.margin
                        }

                        AlgLabel
                        {
                            id: countainerNameId
                            text: ""
                            font.pixelSize: FStyle.window.fontSize
                            font.bold: true
                            horizontalAlignment: Text.AlignLeft
                            Layout.alignment: Qt.AlignLeft
                        }
                    }
                    
                    RowLayout{
                        Layout.alignment: Qt.AlignRight

                        CoreButton
                        {
                            text: ""
                            iconSource: "icons/refresh.svg"

                            onClicked:
                            {
                            }
                        }

                        CoreButton
                        {
                            text: ""
                            iconSource: "icons/save.svg"

                            onClicked:
                            {
                            }
                        }

                        CoreButton
                        {
                            text: ""
                            iconSource: "icons/directory.svg"

                            onClicked:
                            {
                            }
                        }

                        Rectangle{
                            width: 5
                        }
                    }


                }
                
            }

            // Export Asset
            Rectangle
            {
                Layout.fillWidth: true
                Layout.preferredHeight: FStyle.textureExport.height
                anchors.leftMargin: 5
                anchors.rightMargin: 5

                color: "transparent"

                RowLayout
                {
                    anchors.fill: parent
                    spacing: 2

                    CoreButton
                    {
                        text: "Export Window"
                        iconSource: "icons/export.svg"
                        
                        onClicked:
                        {
                        }
                    }

                }
            }
        }
    }


    Component.onCompleted: 
    {
    }
}
