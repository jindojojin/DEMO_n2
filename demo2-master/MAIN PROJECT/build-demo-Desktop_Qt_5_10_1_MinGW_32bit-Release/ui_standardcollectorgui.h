/********************************************************************************
** Form generated from reading UI file 'standardcollectorgui.ui'
**
** Created by: Qt User Interface Compiler version 5.10.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_STANDARDCOLLECTORGUI_H
#define UI_STANDARDCOLLECTORGUI_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_StandardCollectorGui
{
public:
    QGraphicsView *graphicsView;
    QTabWidget *tabWidget;
    QWidget *tab;
    QWidget *tab_3;
    QWidget *tab_4;
    QWidget *tab_5;
    QWidget *tab_2;
    QPushButton *pushButton;
    QPushButton *pushButton_2;

    void setupUi(QWidget *StandardCollectorGui)
    {
        if (StandardCollectorGui->objectName().isEmpty())
            StandardCollectorGui->setObjectName(QStringLiteral("StandardCollectorGui"));
        StandardCollectorGui->resize(906, 490);
        graphicsView = new QGraphicsView(StandardCollectorGui);
        graphicsView->setObjectName(QStringLiteral("graphicsView"));
        graphicsView->setGeometry(QRect(0, 0, 911, 491));
        tabWidget = new QTabWidget(StandardCollectorGui);
        tabWidget->setObjectName(QStringLiteral("tabWidget"));
        tabWidget->setGeometry(QRect(10, 10, 891, 441));
        tab = new QWidget();
        tab->setObjectName(QStringLiteral("tab"));
        tabWidget->addTab(tab, QString());
        tab_3 = new QWidget();
        tab_3->setObjectName(QStringLiteral("tab_3"));
        tabWidget->addTab(tab_3, QString());
        tab_4 = new QWidget();
        tab_4->setObjectName(QStringLiteral("tab_4"));
        tabWidget->addTab(tab_4, QString());
        tab_5 = new QWidget();
        tab_5->setObjectName(QStringLiteral("tab_5"));
        tabWidget->addTab(tab_5, QString());
        tab_2 = new QWidget();
        tab_2->setObjectName(QStringLiteral("tab_2"));
        tabWidget->addTab(tab_2, QString());
        pushButton = new QPushButton(StandardCollectorGui);
        pushButton->setObjectName(QStringLiteral("pushButton"));
        pushButton->setGeometry(QRect(820, 460, 75, 23));
        pushButton_2 = new QPushButton(StandardCollectorGui);
        pushButton_2->setObjectName(QStringLiteral("pushButton_2"));
        pushButton_2->setGeometry(QRect(730, 460, 75, 23));

        retranslateUi(StandardCollectorGui);

        tabWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(StandardCollectorGui);
    } // setupUi

    void retranslateUi(QWidget *StandardCollectorGui)
    {
        StandardCollectorGui->setWindowTitle(QApplication::translate("StandardCollectorGui", "Form", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab), QApplication::translate("StandardCollectorGui", "Tab 1", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_3), QApplication::translate("StandardCollectorGui", "Page", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_4), QApplication::translate("StandardCollectorGui", "Page", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_5), QApplication::translate("StandardCollectorGui", "Page", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QApplication::translate("StandardCollectorGui", "Tab 2", nullptr));
        pushButton->setText(QApplication::translate("StandardCollectorGui", "H\341\273\247y", nullptr));
        pushButton_2->setText(QApplication::translate("StandardCollectorGui", "B\341\272\257t \304\221\341\272\247u", nullptr));
    } // retranslateUi

};

namespace Ui {
    class StandardCollectorGui: public Ui_StandardCollectorGui {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_STANDARDCOLLECTORGUI_H
