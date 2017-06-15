#ifndef IMAGEVIEWERCONTROLLER_H
#define IMAGEVIEWERCONTROLLER_H
#include "imageview.h"
#include <QQmlApplicationEngine>
#include <QImage>
#include <include/tesseract/baseapi.h>
#include <include/leptonica/allheaders.h>
#include <QDebug>
#include <QObject>
#include <QMap>
#include "isbtranslator.h"

class QQmlApplicationEngine;

class ImageViewerController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString imageFile READ imageFile WRITE setImageFile NOTIFY imageFileChanged)

public:
    explicit ImageViewerController(QQmlApplicationEngine *engine);
   // Q_INVOKABLE QString getText();
    QString imageFile() const;
    void setImageFile(const QString &imageFile);
    char *outText;
    QString translate(QString text);
//    Q_INVOKABLE bool getIsDone();
    Q_INVOKABLE void setLang(QString arg1);
    Q_INVOKABLE void setLangs(QString arg1);
    QString getLang(QString arg1);
signals:
    void imageFileChanged();

private:
    QString srcLang;
    QString tgLang;
    QString api_key = "AIzaSyC8C-yszNljGKMZR9_hFl4zIXql_ATopTA";
    QString txt;
    QString getImg();
    QQmlApplicationEngine *t_engine;
    QString t_imageFile;
    IsbTranslator isb;
    //bool isDone = false;
};
#endif // IMAGEVIEWERCONTROLLER_H
