#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "textballoon.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<TextBalloon>("MyLibrary", 1, 0, "TextBalloon");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
