qt_add_library(MyStyleLib STATIC)

set_target_properties(MyStyleLib PROPERTIES AUTOMOC ON)

qt_add_qml_module(MyStyleLib
    URI MyStyle
    VERSION 1.0
    QML_FILES
        Button.qml
)

target_link_libraries(MyStyleLib PRIVATE Qt::Quick)

