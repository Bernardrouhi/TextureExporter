import QtQuick 2.7
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import "../../"

Button {
    property bool isDefaultButton
    property string bgColor : "#4C4C4C"
    property string bgHoverColor : "#3C3C3C"
    property string bgPressColor : "#565656"
    property string bgDisableColor : "#4D4D4D"
    property string txtColor : "#C8C8C8"
    property string txtHoverColor : "#00BEF0"
    property string txtPressColor : "#FFFFFF"
    property string txtDisableColor : "#626262"
    property var fontSize : 10

    isDefaultButton: false

    style: ButtonStyle{
        background: Rectangle {
            implicitWidth: Math.max(16, control.implicitWidth)
            implicitHeight: Math.max(25, control.implicitHeight)
            border.width: 0
            radius: 0
            color: control.enabled ? control.pressed ? bgPressColor : control.hovered ? bgHoverColor : bgColor : bgDisableColor
        }
        label: Row{
            Image{
                source: control.iconSource
                sourceSize.width: 16
                sourceSize.height: 16
                fillMode: Image.PreserveAspectFit
                }
            Text{
                text: control.text
                font.pointSize: fontSize
                font.bold: isDefaultButton
                clip: true
                wrapMode: Text.WordWrap
                color: control.enabled ? control.pressed ? txtPressColor: control.hovered ? txtHoverColor : txtColor : txtDisableColor
            }
        }
    }

    onIconSourceChanged:{
    }
}