#include "editscript.h"
#include "ui_editscript.h"

editScript::editScript(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::editScript)
{
    ui->setupUi(this);
}

editScript::~editScript()
{
    delete ui;
}
