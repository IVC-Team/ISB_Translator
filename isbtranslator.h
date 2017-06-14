#ifndef ISBTRANSLATOR_H
#define ISBTRANSLATOR_H

#include <QObject>
#include <QDebug>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QEventLoop>
#include <QUrl>
#include <QByteArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonValue>
#include <QtSql>
#include <QSqlQuery>

class IsbTranslator : public QObject
{

    Q_OBJECT

public:

    explicit  IsbTranslator(QObject *parent = 0) : QObject(parent){}
    Q_INVOKABLE void translate(QString lang1, QString lang2, QString textInput);
    //connect c++ function
    Q_INVOKABLE QString getText();
//    Q_INVOKABLE void setLang(QString arg1);
//    Q_INVOKABLE void setTgLang(QString arg1);
    Q_INVOKABLE QList<QObject*> getDataList();

    QString getLang(QString arg1);
    //QString getLangs(QString arg2);
     void query(QString txt, QString translateText, QString lang1, QString lang2);
     Q_INVOKABLE void dQuery();
private:
    //QStringList temps;
    QString srcLang;
    QString tgLang;

    QString translateText;
    QString api_key = "AIzaSyC8C-yszNljGKMZR9_hFl4zIXql_ATopTA"; // key google
    //QString api_key ="trnsl.1.1.20170414T012838Z.fbc883185b4d934b.07d0c0e98f5ad49fdbac6ce95bf652c079460002";

};

#endif // ISBTRANSLATOR_H
