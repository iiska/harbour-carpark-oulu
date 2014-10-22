import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    SilicaListView {
        anchors.fill: parent
        model: parking

        delegate: BackgroundItem {
            height: Theme.itemSizeSmall/2
            anchors.margins: Theme.paddingSmall
            anchors.right: parent.right
            anchors.left: parent.left
            visible: (total !== "ei tietoa.")

            Row {
                anchors.fill: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Label {
                    width: 0.8*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    text: name_and_address.split(" - ")[0]
                }

                Label {
                    width: 0.2*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    text: free
                    horizontalAlignment: Text.AlignRight
                }
            }


        }
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-refresh"
            onTriggered: parking.reload()
        }
    }
}


