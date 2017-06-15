#ifndef IMAGEVIEW_H
#define IMAGEVIEW_H

#include <QPainter>
#include <include/tesseract/baseapi.h>
#include <include/leptonica/allheaders.h>
#include <QDebug>
#include <QQuickPaintedItem>
#include <QImage>
#include <QPixmap>

class ImageView : public QQuickPaintedItem
{
    Q_OBJECT

public:
    explicit ImageView(QQuickItem *parent = 0);
    void paint(QPainter *painter);
    void setImage(const QImage &image);

signals:
    void imageChanged();

private:
    QImage T_image;
};

#endif // IMAGEVIEW_H
