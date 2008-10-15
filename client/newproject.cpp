//WINDOW BUILDER PROJECT MASTER SRC//
#include <WScom.h>
#include <WSDappDev.h>
#include <WSCbaseList.h>

#include <WSClocaleSet.h>

#ifdef MSW
WS_WINMAIN
#endif

char* mou[] = {
WS_DEFAULT_MOUSE_ID,
NULL};

void _mouse_init_(){
  WSGFloadMouseCursorData(mou);
}

char* fon[] = {
"14 60c6",
"16 60c6",
"18 60c6",
"20 60c6",
"22 60c6",
"24 60c6",
"26 60c6",
"30 60c6",
NULL};

void _font_init_(){
  WSGFloadFontData(fon);
}
class _init_app_class_{
  public: _init_app_class_(){
    WSGFdeviceInitialize();
    WSGIappDev()->setInitHandler(_font_init_);
    WSGIappDev()->setInitHandler(_mouse_init_);
    WSGIappLocaleSet()->setDefaultEncoding(30);
    WSDappDev* app = WSGIappDev();
    app->setInstanceName("newproject");
  };
};
static _init_app_class_ _execute_app_class_;

//--- OBJECT execute auto initialize ---//
extern WSDLEX WSCbase* _create_win_newwin000();
class _initialize_window_0{
 public: _initialize_window_0(){
  WSGIappDev()->setInitHandler((void(*)())_create_win_newwin000);
 };
};
static _initialize_window_0 _execute_initialize_0;

