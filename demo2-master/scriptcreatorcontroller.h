#ifndef ScriptCreatorController_H
#define ScriptCreatorController_H

#include <QObject>
#include <QString>

class ScriptCreatorController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)

public:
    explicit ScriptCreatorController(QObject *parent = nullptr);

    QString userName();
    void setUserName(const QString &userName);

signals:
    void userNameChanged();

private:
    QString m_userName;
};

#endif // ScriptCreatorController_H
