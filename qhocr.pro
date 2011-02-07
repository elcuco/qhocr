TEMPLATE	=   app
TARGET		=   qhocr
CONFIG		+=   qt release
DESTDIR		+=   bin

TMP_DIR		+=   .tmp
UI_DIR		+=   .tmp
MOC_DIR		+=   .tmp
OBJECTS_DIR	+=   .tmp
VERSION = 0.11

INCLUDEPATH +=   src src/hebocr/src

RESOURCES +=   qhocr.qrc

FORMS +=   src/hocr_options.ui src/qhocr_mainwin.ui

SOURCES +=    \
	src/hebocr/src/hocr.c \
	src/hebocr/src/ho_array.c \
	src/hebocr/src/ho_array_hist.c \
	src/hebocr/src/ho_array_stat.c \
	src/hebocr/src/ho_bitmap.c \
	src/hebocr/src/ho_bitmap_hist.c \
	src/hebocr/src/ho_dimentions.c \
	src/hebocr/src/ho_font.c \
	src/hebocr/src/ho_layout.c \
	src/hebocr/src/ho_linguistics.c \
	src/hebocr/src/ho_objmap.c \
	src/hebocr/src/ho_pixbuf.c \
	src/hebocr/src/ho_recognize.c \
	src/hebocr/src/ho_recognize_nikud.c \
	src/hebocr/src/ho_segment.c \
	src/hebocr/src/ho_string.c \
	src/hebocr/src/fonts/ho_recognize_font_1.c \
	src/hebocr/src/fonts/ho_recognize_font_2.c \
	src/qhocrthread.cpp \
	src/mainwindow.cpp \
	src/pixmapviewer.cpp \
	src/logger.cpp \
	src/main.cpp

HEADERS +=   \
	src/qhocrthread.h \
	src/mainwindow.h \
	src/pixmapviewer.h \
	src/logger.h \
	src/hebocr/src/hebocr_globals.h \
    src/hebocr/src/hocr.h


OTHER_FILES += \
    INSTALL \
    COPYING.gpl \
    COPYING.bsd \
    AUTHORS \
    COPYING \
    ChangeLog \
    src/images/zoomout.png \
    src/images/zoomin.png \
    src/images/save.png \
    src/images/paste.png \
    src/images/open.png \
    src/images/new.png \
    src/images/cut.png \
    src/images/copy.png
