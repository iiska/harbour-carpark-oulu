import QtQuick 2.0
import QtQuick.XmlListModel 2.0

XmlListModel {
    source: "http://www.oulunliikenne.fi/rss/parking/parking.xml"
    query: "/rss/channel/item"

    XmlRole {
        name: "name_and_address"
        query: "title/string()"
    }
    XmlRole {
        name: "date"
        query: "pubDate/string()"
    }

    // <description>Vapaita paikkoja: 60, Paikkoja yhteensä: 150</description>
    XmlRole {
        name: "free"
        query: "substring-before(substring-after(description/string(), 'paikkoja: '), ',')"
    }
    XmlRole {
        name: "total"
        query: "substring-after(description/string(), 'yhteensä: ')"
    }
}
