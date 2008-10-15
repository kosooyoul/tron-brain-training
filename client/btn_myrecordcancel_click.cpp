#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frame_menu;
extern WSCtform* frame_myrecord;

void btn_myrecordcancel_click(WSCbase* object){
  //do something...

  frame_menu->setProperty(WSNvis, true);
  frame_myrecord->setProperty(WSNvis, false);


}
static WSCfunctionRegister  op("btn_myrecordcancel_click",(void*)btn_myrecordcancel_click);
