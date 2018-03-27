#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "scriptcreator.h"
#include "scriptcreatorcontroller.h"
#include <string>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    ScriptCreatorController scriptCreatorController;
    QQmlContext *context = new QQmlContext(engine.rootContext());
    context->setContextObject(&scriptCreatorController);
    QVariant a;
    context->setContextProperty("scriptCreatorContext",a);
    engine.setContextForObject(context, engine.rootContext());


    return app.exec();
}
