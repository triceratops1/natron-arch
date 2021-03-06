boost: LIBS += -lboost_serialization
expat: LIBS += -lexpat
expat: PKGCONFIG -= expat
cairo {
        PKGCONFIG += cairo
        LIBS -=  $$system(pkg-config --variable=libdir cairo)/libcairo.a
}
pyside {
        PKGCONFIG -= pyside
        INCLUDEPATH += $$system(pkg-config --variable=includedir pyside-py2)
        INCLUDEPATH += $$system(pkg-config --variable=includedir pyside-py2)/QtCore
        INCLUDEPATH += $$system(pkg-config --variable=includedir pyside-py2)/QtGui
        INCLUDEPATH += $$system(pkg-config --variable=includedir QtGui)
        LIBS += -lpyside-python2.7
}
shiboken {
        PKGCONFIG -= shiboken
        INCLUDEPATH += $$system(pkg-config --variable=includedir shiboken-py2)
        LIBS += -lshiboken-python2.7
}
