/****************************************************************************
** Meta object code from reading C++ file 'isbtranslator.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "isbtranslator.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'isbtranslator.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_IsbTranslator_t {
    QByteArrayData data[10];
    char stringdata0[90];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_IsbTranslator_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_IsbTranslator_t qt_meta_stringdata_IsbTranslator = {
    {
QT_MOC_LITERAL(0, 0, 13), // "IsbTranslator"
QT_MOC_LITERAL(1, 14, 9), // "translate"
QT_MOC_LITERAL(2, 24, 0), // ""
QT_MOC_LITERAL(3, 25, 5), // "lang1"
QT_MOC_LITERAL(4, 31, 5), // "lang2"
QT_MOC_LITERAL(5, 37, 9), // "textInput"
QT_MOC_LITERAL(6, 47, 7), // "getText"
QT_MOC_LITERAL(7, 55, 11), // "getDataList"
QT_MOC_LITERAL(8, 67, 15), // "QList<QObject*>"
QT_MOC_LITERAL(9, 83, 6) // "dQuery"

    },
    "IsbTranslator\0translate\0\0lang1\0lang2\0"
    "textInput\0getText\0getDataList\0"
    "QList<QObject*>\0dQuery"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_IsbTranslator[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    3,   34,    2, 0x02 /* Public */,
       6,    0,   41,    2, 0x02 /* Public */,
       7,    0,   42,    2, 0x02 /* Public */,
       9,    0,   43,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString,    3,    4,    5,
    QMetaType::QString,
    0x80000000 | 8,
    QMetaType::Void,

       0        // eod
};

void IsbTranslator::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        IsbTranslator *_t = static_cast<IsbTranslator *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->translate((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])),(*reinterpret_cast< QString(*)>(_a[3]))); break;
        case 1: { QString _r = _t->getText();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 2: { QList<QObject*> _r = _t->getDataList();
            if (_a[0]) *reinterpret_cast< QList<QObject*>*>(_a[0]) = _r; }  break;
        case 3: _t->dQuery(); break;
        default: ;
        }
    }
}

const QMetaObject IsbTranslator::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_IsbTranslator.data,
      qt_meta_data_IsbTranslator,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *IsbTranslator::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *IsbTranslator::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_IsbTranslator.stringdata0))
        return static_cast<void*>(const_cast< IsbTranslator*>(this));
    return QObject::qt_metacast(_clname);
}

int IsbTranslator::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
