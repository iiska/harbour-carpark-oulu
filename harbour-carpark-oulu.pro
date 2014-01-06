# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-carpark-oulu

CONFIG += sailfishapp

SOURCES += src/harbour-carpark-oulu.cpp

OTHER_FILES += qml/harbour-carpark-oulu.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-carpark-oulu.spec \
    rpm/harbour-carpark-oulu.yaml \
    harbour-carpark-oulu.desktop \
    qml/models/ParkingHall.qml \
    qml/pages/Listing.qml

TRANSLATIONS = i18n/translations_fi.ts

i18n.path = /usr/share/harbour-carpark-oulu/i18n
i18n.files = i18n/translations_fi.qm

INSTALLS += i18n
