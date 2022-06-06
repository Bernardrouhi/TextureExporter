import QtQuick 2.7
import Painter 1.0

import "functionLibrary.js" as FLib

PainterPlugin
{
    Component.onCompleted: 
    {
        // check the API version
        if (FPlugin.api <= alg.version.api) 
        {
            alg.ui.addDockWidget("TextureFlakes.qml");
            FLib.cout("TextureFlakes is Loaded", FLib.EMsg.information);
        }
        else 
        {
            // Application API doesn't match the plugin
            FLib.cout(`TextureFlakes work with Substance Painter API v${FPlugin.api} or higher.\nCurrent Substance Painter API v${alg.version.api}`, FLib.EMsg.error);
        }
    }
}