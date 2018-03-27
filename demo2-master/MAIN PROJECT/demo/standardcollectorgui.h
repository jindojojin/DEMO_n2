#ifndef STANDARDCOLLECTORGUI_H
#define STANDARDCOLLECTORGUI_H

#include <QWidget>

namespace Ui {
class StandardCollectorGui;
}

class StandardCollectorGui : public QWidget
{
    Q_OBJECT

public:
    explicit StandardCollectorGui(QWidget *parent = 0);
    ~StandardCollectorGui();

private:
    Ui::StandardCollectorGui *ui;
};

#endif // STANDARDCOLLECTORGUI_H
