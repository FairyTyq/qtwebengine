include($$QTWEBENGINE_OUT_ROOT/src/core/qtwebenginecore-config.pri)
QT_FOR_CONFIG += webenginecore-private

TARGET = QtWebEngineWidgets

# For our export macros
DEFINES += QT_BUILD_WEBENGINEWIDGETS_LIB

QT += webenginecore widgets network quick
QT_PRIVATE += quick-private gui-private core-private widgets-private quickwidgets webenginecore-private

INCLUDEPATH += $$PWD api ../core ../core/api ../webengine/api

SOURCES = \
        api/qtwebenginewidgetsglobal.cpp \
        api/qwebengineclientcertificateselection.cpp \
        api/qwebenginehistory.cpp \
        api/qwebenginenotificationpresenter.cpp \
        api/qwebenginepage.cpp \
        api/qwebengineprofile.cpp \
        api/qwebengineview.cpp \
        render_widget_host_view_qt_delegate_widget.cpp

HEADERS = \
        api/qtwebenginewidgetsglobal.h \
        api/qwebengineclientcertificateselection.h \
        api/qwebenginehistory.h \
        api/qwebenginenotificationpresenter_p.h \
        api/qwebenginepage.h \
        api/qwebenginepage_p.h \
        api/qwebengineprofile.h \
        api/qwebengineprofile_p.h \
        api/qwebengineview.h \
        api/qwebengineview_p.h \
        render_widget_host_view_qt_delegate_widget.h

qtConfig(webengine-printing-and-pdf) {
    QT += printsupport

    SOURCES += printer_worker.cpp
    HEADERS += printer_worker.h
}

load(qt_module)
