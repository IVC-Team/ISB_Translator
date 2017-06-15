#include "datalistview.h"

dataListView::dataListView(QObject *parent) : QObject(parent)
{

}

dataListView::dataListView(const QString &text, const QString &word, const QString &date, const QString &lang1, const QString &lang2, QObject *parent):
    QObject(parent),t_text(text),t_word(word), t_date(date), t_lang1(lang1), t_lang2(lang2)
{

}

QString dataListView::text()
{
    return this->t_text;
}

QString dataListView::word()
{
    return this->t_word;
}

QString dataListView::date()
{
    return this->t_date;
}


QString dataListView::lang1()
{
    return this->t_lang1;
}

QString dataListView::lang2()
{
    return this->t_lang2;
}



void dataListView::setText(QString text)
{
    this->t_text=text;
}

void dataListView::setWord(QString word)
{
    this->t_word=word;
}

void dataListView::setDate(QString date)
{
    this->t_date = date;
}

void dataListView::setLang1(QString lang1)
{
    this->t_lang1 = lang1;
}

void dataListView::setLang2(QString lang2)
{
    this->t_lang2 = lang2;
}
