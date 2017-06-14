#include "imageviewercontroller.h"


ImageViewerController::ImageViewerController(QQmlApplicationEngine *engine)
    : t_engine(engine)
{
}

QString ImageViewerController::imageFile() const
{
    return t_imageFile;
}

void ImageViewerController::setImageFile(const QString &imageFile)
{
   //IsbTranslator isb = new IsbTranslator(); //????
    QString path = imageFile;

    // Convert from URL to file path if needed
    QUrl url(path);
    if (url.isValid() && url.isLocalFile())
        path = url.toLocalFile();


    if (path != t_imageFile)
    {
        t_imageFile = path;

    }

    emit imageFileChanged();
    QImage img(path);
    QImage img1(path);

    if (img1.isNull())
        printf("Failed to load %s\n", path.toStdString().c_str());

    QPainter p(&img1);
    p.setBrush(QColor(0,0,0,127));
    p.drawRect(0,0,img1.width(), img1.height());
    p.setPen(QPen(Qt::white));
    p.setFont(QFont("Times", 15, QFont::Bold));



    // Open input image with leptonica library
    Pix *image = pixRead(path.toLatin1().data());
      tesseract::TessBaseAPI *api = new tesseract::TessBaseAPI();
      api->Init(NULL, "eng+jpn+vie");
      api->SetImage(image);
      api->Recognize(0);

      tesseract::ResultIterator* ri = api->GetIterator();
      tesseract::PageIteratorLevel level = tesseract::RIL_TEXTLINE;
      if (ri != 0) {
        do {
          const char* word = ri->GetUTF8Text(level);
          float conf = ri->Confidence(level);
          int x1, y1, x2, y2;
          ri->BoundingBox(level, &x1, &y1, &x2, &y2);
          QString dtext = QString(word);
          QString text = this->translate(dtext);

          p.drawText(QRect(x1,y1,x2-x1,y2-y1), Qt::AlignCenter, text);
          delete[] word;
        } while (ri->Next(level));
      }


      ImageView *imgView = t_engine->rootObjects().at(0)->findChild<ImageView *>();
      if (imgView)
      {
          imgView->setImage(img);
      }

      ImageView *ImageViewOpac = t_engine->rootObjects().at(0)->findChild<ImageView *>();
      if (ImageViewOpac)
      {
          ImageViewOpac->setImage(img1);
      }
}

QString ImageViewerController::translate(QString text) {
    QUrl url(QString("https://www.googleapis.com/language/translate/v2?")
             + QString("key=") + api_key
             + QString("&q=")  + text
             + QString("&source=") + (getLang(srcLang))
             + QString("&target=") + (getLang(tgLang))
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

    return obj.value("data").toObject()
                        .value("translations").toArray()[0].toObject()
                        .value("translatedText").toString();
}


void ImageViewerController::setLang(QString arg1)
{
    srcLang = arg1;

}

void ImageViewerController::setLangs(QString arg1)
{
    tgLang = arg1;
}

QString ImageViewerController::getLang(QString arg1)
{
    QString result="";

    if(arg1 == "Vietnamese"){
        result="vi";

    }else if(arg1 == "English"){
        result= "en";
    }else if(arg1 == "Japanese"){
        result= "ja";
    }
    return result;

}

