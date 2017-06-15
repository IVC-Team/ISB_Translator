#ifndef DATALISTVIEW_H
#define DATALISTVIEW_H

#include <QObject>
#include <QString>
class dataListView:public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
    Q_PROPERTY(QString word READ word WRITE setWord NOTIFY wordChanged) //thuoc tinh cho lop dataListView
    Q_PROPERTY(QString date READ date WRITE setDate NOTIFY dateChanged)
    Q_PROPERTY(QString lang1 READ lang1 WRITE setLang1 NOTIFY lang1Changed)
    Q_PROPERTY(QString lang2 READ lang2 WRITE setLang2 NOTIFY lang2Changed)


private:
    QString t_word;
    QString t_date;
    QString t_text;
    QString t_lang1;
    QString t_lang2;

public:
    explicit dataListView(QObject *parent = 0);
    dataListView(const QString &text, const QString &word, const QString &date, const QString &lang1, const QString &lang2, QObject*parent=0);


    QString text();
    QString word();
    QString date();
    QString lang1();
    QString lang2();

    void setText(QString text);
    void setWord(QString word);
    void setDate(QString date);
    void setLang1(QString lang1);
    void setLang2(QString lang2);

signals:
    void dateChanged();
    void wordChanged();
    void textChanged();
    void lang1Changed();
    void lang2Changed();

};

#endif // DATALISTVIEW_H
