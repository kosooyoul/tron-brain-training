#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frame_menu;
extern WSCtform* frame_myrecord;

void btn_myrecord_click(WSCbase* object){
  //do something...

  frame_menu->setProperty(WSNvis, false);
  frame_myrecord->setProperty(WSNvis, true);


}
static WSCfunctionRegister  op("btn_myrecord_click",(void*)btn_myrecord_click);
