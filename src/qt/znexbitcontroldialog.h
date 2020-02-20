// Copyright (c) 2017-2020 The NEXBIT developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef ZNEXBITCONTROLDIALOG_H
#define ZNEXBITCONTROLDIALOG_H

#include <QDialog>
#include <QTreeWidgetItem>
#include "znexbit/zerocoin.h"

class CZerocoinMint;
class WalletModel;

namespace Ui {
class ZNexbitControlDialog;
}

class CZNexbitControlWidgetItem : public QTreeWidgetItem
{
public:
    explicit CZNexbitControlWidgetItem(QTreeWidget *parent, int type = Type) : QTreeWidgetItem(parent, type) {}
    explicit CZNexbitControlWidgetItem(int type = Type) : QTreeWidgetItem(type) {}
    explicit CZNexbitControlWidgetItem(QTreeWidgetItem *parent, int type = Type) : QTreeWidgetItem(parent, type) {}

    bool operator<(const QTreeWidgetItem &other) const;
};

class ZNexbitControlDialog : public QDialog
{
    Q_OBJECT

public:
    explicit ZNexbitControlDialog(QWidget *parent);
    ~ZNexbitControlDialog();

    void setModel(WalletModel* model);

    static std::set<std::string> setSelectedMints;
    static std::set<CMintMeta> setMints;
    static std::vector<CMintMeta> GetSelectedMints();

private:
    Ui::ZNexbitControlDialog *ui;
    WalletModel* model;

    void updateList();
    void updateLabels();

    enum {
        COLUMN_CHECKBOX,
        COLUMN_DENOMINATION,
        COLUMN_PUBCOIN,
        COLUMN_VERSION,
        COLUMN_CONFIRMATIONS,
        COLUMN_ISSPENDABLE
    };
    friend class CZNexbitControlWidgetItem;

private Q_SLOTS:
    void updateSelection(QTreeWidgetItem* item, int column);
    void ButtonAllClicked();
};

#endif // ZNBCCONTROLDIALOG_H
