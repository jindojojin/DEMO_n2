#include "standardcollectorgui.h"
#include "ui_standardcollectorgui.h"

StandardCollectorGui::StandardCollectorGui(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::StandardCollectorGui)
{
    ui->setupUi(this);
}

StandardCollectorGui::~StandardCollectorGui()
{
    delete ui;
}
