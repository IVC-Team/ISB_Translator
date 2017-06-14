#include "isbtranslator.h"
#include <datalistview.h>
#include <QSqlDatabase>

void IsbTranslator::translate(QString lang1, QString lang2, QString textInput){

    QUrl url(QString("https://www.googleapis.com/language/translate/v2?")
             + QString("key=") + api_key
             + QString("&q=")  + textInput
             + QString("&source=") + (getLang(lang1))
             + QString("&target=") + (getLang(lang2))
             );
    //qDebug() <<"gggg"<< getLang(srcLang);
    QNetworkRequest request(url);
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json; charset=UTF-8");

    // Send the request.
    QEventLoop loop;
    QNetworkAccessManager manager;
    connect(&manager, &QNetworkAccessManager::finished, &loop, &QEventLoop::quit);

    // Receive a reply.
    QNetworkReply* reply = manager.get(request);
    loop.exec();

    // Parse the reply.
    QByteArray bytes = reply->readAll();
    QJsonObject obj = QJsonDocument::fromJson(bytes).object();

    translateText = obj.value("data").toObject()
                        .value("translations").toArray()[0].toObject()
                        .value("translatedText").toString();
    query(textInput,translateText, lang1, lang2);
    //qDebug() << lang1 << lang2;
}

//query database to get value and insert to database
void IsbTranslator::query(QString txt,QString translateText,  QString lang1, QString lang2 )
{
    //get date
    QDate date = QDate::currentDate();
    qDebug()<<"date"<<date;
    //Open db connection
    QString db_name = "tran1";
    QSqlDatabase db = QSqlDatabase::database(QSqlDatabase::defaultConnection);
    db.setDatabaseName(db_name);
    db.open();

    //Create prepared query to avoid malicious input to the db
    QSqlQuery query;
    query.prepare("insert into translation1 (textInput, textOutPut, deadline, lang1, lang2) values (:textInput, :textOutPut, :deadline, :lang1, :lang2)");
    query.bindValue(":textInput",txt );
    query.bindValue(":textOutPut", translateText);
    query.bindValue(":deadline",date);
    query.bindValue(":lang1",lang1);
    query.bindValue(":lang2",lang2);

    if(query.exec())
    {
        qDebug() <<"record insert";
    }
    qDebug() <<"close";
    db.close();
    //refreshTable();

   //this->close();
}

void IsbTranslator::dQuery()
{
    QString db_name = "tran1";
    QSqlDatabase db = QSqlDatabase::database(QSqlDatabase::defaultConnection);
    db.setDatabaseName(db_name);
    db.open();

    //Create prepared query to avoid malicious input to the db

    QSqlQuery query;
    query.prepare("delete from translation1 where id");

    if(query.exec())
    {
        qDebug() <<"record insert";
    }
    qDebug() <<"close";
    db.close();
}

QString IsbTranslator::getText()
{
    return translateText;
}


QList<QObject*> IsbTranslator::getDataList()
{
    QList<QObject*> dataList;
    //Open db connection
    QString db_name = "tran1";
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db = QSqlDatabase::database(QSqlDatabase::defaultConnection);
    db.setDatabaseName(db_name);
    db.open();

    //Create prepared query to avoid malicious input to the db
    QSqlQuery query(db);
    query.exec("SELECT textInput,textOutPut,deadline, lang1, lang2 FROM translation1");
    while(query.next())
    {
        QString tword=query.value(0).toString();
        QString ttext=query.value(1).toString();
        QString mtword=query.value(2).toString();
        QString mlang1=query.value(3).toString();
        QString mlang2=query.value(4).toString();
        dataList.append(new dataListView(tword,ttext,mtword,mlang1,mlang2));
        qDebug()<<"gia tri :"<<tword<<ttext<<mtword<<mlang1<<mlang2;
    }
    db.close();
    return dataList;

}

QString IsbTranslator::getLang(QString arg1)
{
    QString result="";

    if(arg1 == "Vietnamese"){
        result="vi";

    }else if(arg1 == "English"){
        result= "en";
    }else if(arg1 == "Japanese"){
        result= "ja";
    }
     qDebug() <<"getLang1"<< result;
    return result;

}

