import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    Column {
        anchors.fill: parent
        anchors.margins: Theme.paddingLarge
        spacing: Theme.paddingMedium

        PageHeader {
            title: qsTr("About")
        }

        Text {
            width: parent.width
            text: qsTr("Carpark Oulu version %1").arg("0.3")
            color: Theme.primaryColor
        }

        Text {
            width: parent.width
            text: qsTr("Author: Juhamatti Niemelä <iiska@iki.fi>")
            color: Theme.secondaryColor
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Text {
            width: parent.width
            text: qsTr("This application is licensed under MIT license. Source code is availabe at Github.com. Feel free to contribute or report possible issues at:")
            wrapMode: Text.WordWrap
            color: Theme.secondaryColor
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Text {
            width: parent.width
            text: "<a href='http://github.com/iiska/harbour-carpark-oulu'>github.com/iiska/harbour-carpark-oulu</a>"
            linkColor: Theme.primaryColor
            font.pixelSize: Theme.fontSizeExtraSmall
        }

        Text {
            width: parent.width
            text: qsTr("Parking data is provided by Oulunliikenne.fi © InfoTripla Oy")
            color: Theme.secondaryColor
            font.pixelSize: Theme.fontSizeExtraSmall
            wrapMode: Text.WordWrap
        }
    }
}

