#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frame_index;
extern WSCtform* frame_join;

void btn_join_click(WSCbase* object){
  //do something...

  frame_index->setProperty(WSNvis, false);
  frame_join->setProperty(WSNvis, true);


}
static WSCfunctionRegister  op("btn_join_click",(void*)btn_join_click);
