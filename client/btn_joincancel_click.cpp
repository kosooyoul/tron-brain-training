#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frame_index;
extern WSCtform* frame_join;

void btn_joincancel_click(WSCbase* object){
  //do something...

  frame_index->setProperty(WSNvis, true);
  frame_join->setProperty(WSNvis, false);


}
static WSCfunctionRegister  op("btn_joincancel_click",(void*)btn_joincancel_click);
