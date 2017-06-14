#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "isbtranslator.h"
#include <QQmlContext>
#include <QtSql>
#include <QSqlQuery>
#include "isbtranslator.h"
#include "imageviewercontroller.h"

bool init_db(){
    //initialize database and create the task table
    QString db_name = "tran1";
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName(db_name);

    if(!db.open()){
        return false;
    }
    QSqlQuery query;


    bool createTableSuccessful = query.exec("create table if not exists translation1 " \
              "(id integer primary key, " \
              "textInput varchar(200), " \
              "textOutPut varchar (200), " \
               "lang1 varchar (200), " \
               "lang2 varchar (200), " \
              "deadline varchar(30))");
    db.close();
    if(!createTableSuccessful){
        qDebug() <<"dont success";
       return false;
    }else{
        qDebug() <<"success";
    }

   return true;

}


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    if(!init_db()){
    }
    IsbTranslator IsbController;
    QQmlApplicationEngine engine;

    ImageViewerController controller(&engine);
    qmlRegisterType<ImageView>("localtypes", 1, 0, "ImageView");
    qmlRegisterType<ImageView>("localtypes", 1, 0, "ImageViewOpac");

    engine.rootContext()->setContextProperty("IsbController",&IsbController);
    engine.rootContext()->setContextProperty("controller", &controller);
    engine.rootContext()->setContextProperty("dataList",QVariant::fromValue(IsbController.getDataList()));
    //qDebug()<<","<<IsbController.getDataList();
    //qmlRegisterType<IsbTranslator>("abc",1,0, "IsbTranslator");


    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
