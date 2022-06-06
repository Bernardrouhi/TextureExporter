pragma Singleton
import QtQuick 2.7

QtObject {
    readonly property QtObject window: QtObject {
        readonly property int width: 450
        readonly property int height: 0
        readonly property int fontSize: 10
        readonly property string background: "#323232"
        readonly property string titleBackground: "#404040"
        readonly property int headerHeight: 30
    }

    readonly property QtObject button: QtObject {
        readonly property int margin: 8
    }

    readonly property QtObject textureExport: QtObject {
        readonly property int height: 40
    }
}