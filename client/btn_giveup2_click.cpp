#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
#include <WSCvlabel.h>
#include <WSCvtimer.h>
#include <WSCvifield.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvlabel* label_timer3;
extern WSCvlabel* label_level3;
extern WSCvlabel* label_point3;
extern WSCvtimer* timer3;

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;



void btn_giveup2_click(WSCbase* object){
  //do something...
  //int temp = (int)timer_rand->getProperty(WSNuserValue);

  timer3->setProperty(WSNuserValue,0);
  timer3->setProperty(WSNrunning, false);

  label_level3->setProperty(WSNuserValue,1);
  label_level3->setProperty(WSNlabelString,"1");

  label_point3->setProperty(WSNuserValue,0);
  label_point3->setProperty(WSNlabelString,"0");

  label_timer3->setProperty(WSNlabelString,"0");

  frame_index->setProperty(WSNvis, false);
  frame_menu->setProperty(WSNvis, true);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, false);
  frame_game3->setProperty(WSNvis, false);


}
static WSCfunctionRegister  op("btn_giveup2_click",(void*)btn_giveup2_click);
