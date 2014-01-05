import QtQuick 2.0
import QtQuick.XmlListModel 2.0

XmlListModel {
    source: "http://www.oulunliikenne.fi/rss/parking/parking.xml"
    query: "/rss/channel/item"

    namespaceDeclarations: "declare namespace ti = 'http://www.oulunliikenne.fi/xsd/OuluDataInterface.xsd';"

    XmlRole {
        name: "name_and_address"
        query: "title/string()"
    }
    XmlRole {
        name: "date"
        query: "pubDate/string()"
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