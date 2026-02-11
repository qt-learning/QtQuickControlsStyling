// Copyright (C) 2026 Qt Group.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    //Run-time selection
    //QQuickStyle::setStyle("Universal");
    //QQuickStyle::setStyle("MyStyle");

    //Environment variable
    //qputenv("QT_QUICK_CONTROLS_STYLE", "QtQuick.Controls.Fusion");
    //qputenv("QT_QUICK_CONTROLS_STYLE", "MyStyle");

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Styles_Section6", "Main");

    return app.exec();
}
