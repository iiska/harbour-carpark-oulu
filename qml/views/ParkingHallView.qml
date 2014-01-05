import QtQuick 2.0
import Sailfish.Silica 1.0

SilicaListView {
    PullDownMenu {
        MenuItem {
            text: "Refresh"
            onClicked: model.reload()
        }
    }

    delegate: Item {
        Label {text: name_and_address}
        Label {text: free}
        Label {text: total}
    }
}
