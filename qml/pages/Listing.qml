import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0


Page {
    id: page
    property XmlListModel model: null

    SilicaListView {
        anchors.fill: parent
        model: page.model

        BusyIndicator {
            anchors.centerIn: parent
            running: (model.status == XmlListModel.Loading)
        }

        PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }
            MenuItem {
                text: qsTr("Refresh")
                onClicked: model.reload()
            }
        }

        header: PageHeader {
            title: qsTr("Vacant")
        }

        delegate: BackgroundItem {
            height: Theme.itemSizeMedium
            visible: (total !== "ei tietoa.")

            Row {
                anchors.margins: Theme.paddingLarge
                anchors.fill: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Column {
                    width: 0.75*parent.width
                    Label {
                        id: name
                        text: name_and_address.split(" - ")[0]
                    }
                    Label {
                        id: address
                        text: name_and_address.split(" - ")[1]
                        font.pixelSize: Theme.fontSizeExtraSmall
                    }

                }

                Label {
                    width: 0.25*parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    text: free + " / " + total
                    horizontalAlignment: Text.AlignRight
                }
            }
        }
    }
}
