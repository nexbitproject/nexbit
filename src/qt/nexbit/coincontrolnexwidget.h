// Copyright (c) 2019 The NEXBIT developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef COINCONTROLNEXBITWIDGET_H
#define COINCONTROLNEXBITWIDGET_H

#include <QDialog>

namespace Ui {
class CoinControlnexbitWidget;
}

class CoinControlnexbitWidget : public QDialog
{
    Q_OBJECT

public:
    explicit CoinControlnexbitWidget(QWidget *parent = nullptr);
    ~CoinControlnexbitWidget();

private:
    Ui::CoinControlnexbitWidget *ui;
};

#endif // COINCONTROLNBCWIDGET_H
