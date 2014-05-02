#include <QApplication>
#include <QPushButton>
#include <QQmlEngine>
#include <QQmlComponent>
#include <qqml.h>

int main(int argc, char *argv[])
{
    qmlRegisterType<QPushButton>("QWidgets", 1, 0, "QPushButton");

    QApplication a(argc, argv);

    QQmlEngine engine;
    QQmlComponent component(&engine, QUrl(QStringLiteral("qrc:///main.qml")));

    QObject* o = component.create();
    QWidget* w = qobject_cast<QWidget*>(o);
    w->show();

    return a.exec();
}
