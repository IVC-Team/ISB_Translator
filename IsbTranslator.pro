QT += qml quick sql webview

CONFIG += c++11

SOURCES += main.cpp \
    isbtranslator.cpp \
    datalistview.cpp \
    imageview.cpp \
    imageviewercontroller.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    isbtranslator.h \
    datalistview.h \
    imageview.h \
    imageviewercontroller.h \
    include/leptonica/allheaders.h \
    include/leptonica/alltypes.h \
    include/leptonica/array.h \
    include/leptonica/arrayaccess.h \
    include/leptonica/bbuffer.h \
    include/leptonica/bilateral.h \
    include/leptonica/bmf.h \
    include/leptonica/bmfdata.h \
    include/leptonica/bmp.h \
    include/leptonica/ccbord.h \
    include/leptonica/dewarp.h \
    include/leptonica/endianness.h \
    include/leptonica/environ.h \
    include/leptonica/gplot.h \
    include/leptonica/heap.h \
    include/leptonica/imageio.h \
    include/leptonica/jbclass.h \
    include/leptonica/leptwin.h \
    include/leptonica/list.h \
    include/leptonica/morph.h \
    include/leptonica/pix.h \
    include/leptonica/ptra.h \
    include/leptonica/queue.h \
    include/leptonica/rbtree.h \
    include/leptonica/readbarcode.h \
    include/leptonica/recog.h \
    include/leptonica/regutils.h \
    include/leptonica/stack.h \
    include/leptonica/stringcode.h \
    include/leptonica/sudoku.h \
    include/leptonica/watershed.h \
    include/tesseract/apitypes.h \
    include/tesseract/baseapi.h \
    include/tesseract/basedir.h \
    include/tesseract/capi.h \
    include/tesseract/convolve.h \
    include/tesseract/ctc.h \
    include/tesseract/dotproductavx.h \
    include/tesseract/dotproductsse.h \
    include/tesseract/errcode.h \
    include/tesseract/fileerr.h \
    include/tesseract/fullyconnected.h \
    include/tesseract/functions.h \
    include/tesseract/genericvector.h \
    include/tesseract/helpers.h \
    include/tesseract/host.h \
    include/tesseract/input.h \
    include/tesseract/lstm.h \
    include/tesseract/lstmrecognizer.h \
    include/tesseract/lstmtrainer.h \
    include/tesseract/ltrresultiterator.h \
    include/tesseract/maxpool.h \
    include/tesseract/memry.h \
    include/tesseract/ndminx.h \
    include/tesseract/network.h \
    include/tesseract/networkbuilder.h \
    include/tesseract/networkio.h \
    include/tesseract/networkscratch.h \
    include/tesseract/ocrclass.h \
    include/tesseract/osdetect.h \
    include/tesseract/pageiterator.h \
    include/tesseract/parallel.h \
    include/tesseract/params.h \
    include/tesseract/platform.h \
    include/tesseract/plumbing.h \
    include/tesseract/publictypes.h \
    include/tesseract/recodebeam.h \
    include/tesseract/reconfig.h \
    include/tesseract/renderer.h \
    include/tesseract/resultiterator.h \
    include/tesseract/reversed.h \
    include/tesseract/serialis.h \
    include/tesseract/series.h \
    include/tesseract/simddetect.h \
    include/tesseract/static_shape.h \
    include/tesseract/stridemap.h \
    include/tesseract/strngs.h \
    include/tesseract/tesscallback.h \
    include/tesseract/tfnetwork.h \
    include/tesseract/thresholder.h \
    include/tesseract/unichar.h \
    include/tesseract/unicharcompress.h \
    include/tesseract/unicharmap.h \
    include/tesseract/unicharset.h \
    include/tesseract/weightmatrix.h

#INCLUDEPATH += /usr/local/include/tesseract
#LIBS += -L/usr/local/lib -ltesseract -llept

#LIBS += -ltesseract -llept

DISTFILES += \
    lib/libtesseract.a \
    lib/libtesseract.so \
    lib/libtesseract.so.4 \
    lib/libtesseract.so.4.0.0

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/release/ -ltesseract
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/debug/ -ltesseract
else:unix: LIBS += -L$$PWD/lib/ -ltesseract

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/lib/release/libtesseract.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/lib/debug/libtesseract.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/lib/release/tesseract.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/lib/debug/tesseract.lib
else:unix: PRE_TARGETDEPS += $$PWD/lib/libtesseract.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/release/ -ltesseract
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/debug/ -ltesseract
else:unix: LIBS += -L$$PWD/lib/ -ltesseract

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/release/ -llept
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/debug/ -llept
else:unix: LIBS += -L$$PWD/lib/ -llept

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/lib/release/liblept.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/lib/debug/liblept.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/lib/release/lept.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/lib/debug/lept.lib
else:unix: PRE_TARGETDEPS += $$PWD/lib/liblept.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/release/ -llept
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/debug/ -llept
else:unix: LIBS += -L$$PWD/lib/ -llept

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include
