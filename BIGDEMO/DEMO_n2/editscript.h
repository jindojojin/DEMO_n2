#ifndef EDITSCRIPT_H
#define EDITSCRIPT_H

#include <QDialog>

namespace Ui {
class editScript;
}

class editScript : public QDialog
{
    Q_OBJECT

public:
    explicit editScript(QWidget *parent = 0);
    ~editScript();

private:
    Ui::editScript *ui;
};

#endif // EDITSCRIPT_H
