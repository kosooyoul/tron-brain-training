#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frame_index;
extern WSCtform* frame_lost;

void btn_lostcancel_click(WSCbase* object){
  //do something...

  frame_index->setProperty(WSNvis, true);
  frame_lost->setProperty(WSNvis, false);


}
static WSCfunctionRegister  op("btn_lostcancel_click",(void*)btn_lostcancel_click);
