#include "ScriptCreatorController.h"

ScriptCreatorController::ScriptCreatorController(QObject *parent) :
    QObject(parent)
{
}

QString ScriptCreatorController::userName()
{
    return m_userName;
}

void ScriptCreatorController::setUserName(const QString &userName)
{
    if (userName == m_userName)
        return;

    m_userName = userName;
    emit userNameChanged();
}
