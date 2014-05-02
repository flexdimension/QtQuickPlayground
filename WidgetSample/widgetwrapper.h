#ifndef WIDGETWRAPPER_H
#define WIDGETWRAPPER_H

#include <QObject>

class WidgetWrapper : public QObject
{
    Q_OBJECT
public:
    explicit WidgetWrapper(QObject *parent = 0);

signals:

public slots:

};

#endif // WIDGETWRAPPER_H
