import QtQuick 2.0
import Sailfish.Silica 1.0
import "models"
import "pages"

ApplicationWindow
{
    initialPage: Component {
        Listing {
            id: listing
            model: parking
        }
    }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")

    ParkingHall {
        id: parking
    }
}


