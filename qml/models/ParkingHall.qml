import QtQuick 2.0
import QtQuick.XmlListModel 2.0

XmlListModel {
    source: "http://www.oulunliikenne.fi/rss/parking/parking.xml"
    query: "/rss/channel/item"

    XmlRole {
        name: "name_and_address"
        query: "title/string()"
        isKey: true
    }
    XmlRole {
        name: "free"
        query: "ti:freeSpaces/string()"
    }
    XmlRole {
        name: "total"
        query: "ti:totalSpaces/string()"
    }
}
