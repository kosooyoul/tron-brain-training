#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
#include <WSCvtimer.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------



extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;
extern WSCvtimer* timer2;

void btn_game3_click(WSCbase* object){
  //do something...


  frame_index->setProperty(WSNvis, false);
  frame_menu->setProperty(WSNvis, false);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, false);
  frame_game3->setProperty(WSNvis, true);
  
  timer2->setProperty(WSNrunning, true);


}
static WSCfunctionRegister  op("btn_game3_click",(void*)btn_game3_click);
