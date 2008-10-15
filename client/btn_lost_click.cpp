#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frame_index;
extern WSCtform* frame_lost;

void btn_lost_click(WSCbase* object){
  //do something...

  frame_index->setProperty(WSNvis, false);
  frame_lost->setProperty(WSNvis, true);


}
static WSCfunctionRegister  op("btn_lost_click",(void*)btn_lost_click);
