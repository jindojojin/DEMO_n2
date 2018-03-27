#include <QObject>
#include <QString>
#include <iostream>
class ScriptCreatorController : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE bool postMessage(const QString &msg) {
        std::cout << "success";
        return true;
    }
};
