#include <QCoreApplication>
#include <QTimer>
#include <QTime>
#include <QDebug>
#include "qhocrthread.h"

#include "hocr.h"
#include "ho_pixbuf.h"

int main( int argc, char *argv[] )
{
	QCoreApplication app(argc,argv);
	QHOCRThread hocr;
	
	QImage img;
	img.load("/home/elcuco/src/qhocr/tests/test6.jpg");
//	img.load("/home/elcuco/src/qhocr/tests/bible-01-small_print.jpg");
	
	hocr.loadFile("/home/elcuco/src/qhocr/tests/test6.jpg");
//	hcor.loadFile("/home/elcuco/src/qhocr/tests/bible-01-small_print.jpg");
	QTime timer;
	
#if 0
	// this will run the OCR function in a separate thread
	hocr.start();
	const int MAX_TIME = 60*7; // in seconds
	timer.start();
	while (hocr.isRunning())
	{
		hocr.usleep( 250 );
		if ((timer.elapsed() % 5000) == 0)
			qDebug( "Process after %dsec: %d%% at stage %d", timer.elapsed()/1000, hocr.getProcess(), hocr.getStage() );
		if (timer.elapsed() > MAX_TIME * 1000){
			hocr.terminate();
			hocr.quit();
			qDebug("Watch dog working - the process took more then %d seconds", MAX_TIME );
			break;
		}
	}
#else
	hocr.doOCR();
#endif
	
	qDebug() << "Memory used: " << getMemSize() << "kb";
	qDebug() << "Process took:" << timer.elapsed() << " Found string:" << hocr.getString() ;
	qDebug("End of application");
//	return app.exec();
}
