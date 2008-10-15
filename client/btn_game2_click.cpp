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
extern WSCvtimer* timer3;

void btn_game2_click(WSCbase* object){
  //do something...


  frame_index->setProperty(WSNvis, false);
  frame_menu->setProperty(WSNvis, false);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, true);
  frame_game3->setProperty(WSNvis, false);

  timer3->setProperty(WSNrunning, true);

}
static WSCfunctionRegister  op("btn_game2_click",(void*)btn_game2_click);
