#include "imageview.h"


ImageView::ImageView(QQuickItem *parent)
    : QQuickPaintedItem(parent)
{
}

void ImageView::paint(QPainter *painter)
{
    QRectF controlBounds = boundingRect();
    controlBounds.adjust(0.0, 0.0, -1.0, -1.0);

    if (T_image.isNull())
    {
        painter->setPen(Qt::DashLine);
        painter->drawRect(controlBounds);
        return;
    }

    int iWidth = T_image.width(), iHeight = T_image.height();

    double xScale = controlBounds.width() / iWidth;
    double yScale = controlBounds.height() / iHeight;
    double scale = std::min(xScale, yScale);

    QRectF imageBounds(0.0, 0.0, iWidth * scale, iHeight * scale);
    imageBounds.moveCenter(controlBounds.center());

    painter->drawImage(imageBounds, T_image); //Qsize

}

void ImageView::setImage(const QImage &image)
{
    T_image = image;
    update();
    emit imageChanged();
}
