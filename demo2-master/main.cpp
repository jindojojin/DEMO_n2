#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "scriptcreator.h"
#include "scriptcreatorcontroller.h"
#include <string>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<ScriptCreatorController>( "ScriptCreatorDomain", 1, 0, "ScriptCreatorController");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
