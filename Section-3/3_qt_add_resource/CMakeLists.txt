cmake_minimum_required(VERSION 3.16)

project(3_qt_add_resource VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appqt_add_resource
    main.cpp
)

#Method1
# qt_add_resources(appqt_add_resource "qml"
#     PREFIX/
#     FILES
#         Images/Qt.png
# )

# qt_add_qml_module(appqt_add_resource
#     URI qt_add_resource
#     QML_FILES
#         Main.qml
# )

qt_add_qml_module(appqt_add_resource
    URI qt_add_resource
    QML_FILES
        Main.qml

    RESOURCES
        Images/Qt.png
    RESOURCE_PREFIX
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appqt_add_resource PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.app3_qt_add_resource
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqt_add_resource
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appqt_add_resource
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
