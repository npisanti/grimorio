#include "ofMain.h"
#include "ofApp.h"

#include "ofAppGLFWWindow.h"

//========================================================================
int main( ){
	
	ofGLFWWindowSettings settings;
	settings.width = 1920 + 720;
	settings.height = 1080;
	settings.setPosition(ofVec2f(0,0));
	settings.resizable = false;
    settings.decorated = false;
    settings.multiMonitorFullScreen = true;
	shared_ptr<ofAppBaseWindow> mainWindow = ofCreateWindow(settings);    
    

	shared_ptr<ofApp> mainApp(new ofApp);

	ofRunApp(mainWindow, mainApp);
	ofRunMainLoop();

}
