#ifndef MAINWINDOW_H
#define MAINWINDOW_H

//HEADERS
#include "Backend/gates.h"
#include "graphicscircuitcomponent.h"
#include "scene.h"
#include "view.h"

//QT
#include <QWidget>
#include <QBasicTimer>

class MainWindow : public QWidget //Consider switching to MainWindow class inheritance when adding GUI
{
//    Q_OBJECT  Probably a good idea to look over all classes and check for possible use of Q_OBJECT, take a look at the documentation one more time to see it's benefits including the properties and slots/signals

public:

    // Constructors
    explicit MainWindow(QWidget *parent = nullptr);

    // Events
    virtual void resizeEvent(QResizeEvent *event) override;
    virtual void keyPressEvent(QKeyEvent *event) override;
//    virtual void timerEvent(QTimerEvent *event) override;

private:
    Scene *scene_;
    View *view_;
    QList<GraphicsCircuitComponent*> *containerList_;
    CircuitIO *IO_; // switch to graphicscircuitIO later
//    QBasicTimer timer; // consider putting this into scene instead, or i guess it probably makes sense here cause everything might need the timer
};
#endif // MAINWINDOW_H
