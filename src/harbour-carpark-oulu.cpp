#include <QtQuick>

#include <sailfishapp.h>


int main(int argc, char *argv[])
{
    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));

    QTranslator translator;
    translator.load("translations_" + QLocale::system().name(),
                    "/usr/share/harbour-carpark-oulu/i18n");
    app->installTranslator(&translator);

    QScopedPointer<QQuickView> view(SailfishApp::createView());
    view->setSource(SailfishApp::pathTo("qml/harbour-carpark-oulu.qml"));
    view->show();

    return app->exec();
}

