/****************************************************************************
** Meta object code from reading C++ file 'datalistview.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "datalistview.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'datalistview.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_dataListView_t {
    QByteArrayData data[12];
    char stringdata0[103];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_dataListView_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_dataListView_t qt_meta_stringdata_dataListView = {
    {
QT_MOC_LITERAL(0, 0, 12), // "dataListView"
QT_MOC_LITERAL(1, 13, 11), // "dateChanged"
QT_MOC_LITERAL(2, 25, 0), // ""
QT_MOC_LITERAL(3, 26, 11), // "wordChanged"
QT_MOC_LITERAL(4, 38, 11), // "textChanged"
QT_MOC_LITERAL(5, 50, 12), // "lang1Changed"
QT_MOC_LITERAL(6, 63, 12), // "lang2Changed"
QT_MOC_LITERAL(7, 76, 4), // "text"
QT_MOC_LITERAL(8, 81, 4), // "word"
QT_MOC_LITERAL(9, 86, 4), // "date"
QT_MOC_LITERAL(10, 91, 5), // "lang1"
QT_MOC_LITERAL(11, 97, 5) // "lang2"

    },
    "dataListView\0dateChanged\0\0wordChanged\0"
    "textChanged\0lang1Changed\0lang2Changed\0"
    "text\0word\0date\0lang1\0lang2"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_dataListView[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       5,   44, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x06 /* Public */,
       3,    0,   40,    2, 0x06 /* Public */,
       4,    0,   41,    2, 0x06 /* Public */,
       5,    0,   42,    2, 0x06 /* Public */,
       6,    0,   43,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
       7, QMetaType::QString, 0x00495103,
       8, QMetaType::QString, 0x00495103,
       9, QMetaType::QString, 0x00495103,
      10, QMetaType::QString, 0x00495103,
      11, QMetaType::QString, 0x00495103,

 // properties: notify_signal_id
       2,
       1,
       0,
       3,
       4,

       0        // eod
};

void dataListView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        dataListView *_t = static_cast<dataListView *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->dateChanged(); break;
        case 1: _t->wordChanged(); break;
        case 2: _t->textChanged(); break;
        case 3: _t->lang1Changed(); break;
        case 4: _t->lang2Changed(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (dataListView::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&dataListView::dateChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (dataListView::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&dataListView::wordChanged)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (dataListView::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&dataListView::textChanged)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (dataListView::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&dataListView::lang1Changed)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (dataListView::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&dataListView::lang2Changed)) {
                *result = 4;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        dataListView *_t = static_cast<dataListView *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->text(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->word(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->date(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->lang1(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->lang2(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        dataListView *_t = static_cast<dataListView *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setText(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setWord(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setDate(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setLang1(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setLang2(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_a);
}

const QMetaObject dataListView::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_dataListView.data,
      qt_meta_data_dataListView,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *dataListView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *dataListView::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_dataListView.stringdata0))
        return static_cast<void*>(const_cast< dataListView*>(this));
    return QObject::qt_metacast(_clname);
}

int dataListView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void dataListView::dateChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void dataListView::wordChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}

// SIGNAL 2
void dataListView::textChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, Q_NULLPTR);
}

// SIGNAL 3
void dataListView::lang1Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 3, Q_NULLPTR);
}

// SIGNAL 4
void dataListView::lang2Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 4, Q_NULLPTR);
}
QT_END_MOC_NAMESPACE
