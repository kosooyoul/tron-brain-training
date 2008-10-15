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

extern WSCvlabel* label_timer2;
extern WSCvlabel* label_level2;
extern WSCvtimer* timer2;
extern WSCvifield* text_ans2;

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;



void btn_giveup3_click(WSCbase* object){
  //do something...
  //int temp = (int)timer_rand->getProperty(WSNuserValue);
  
  text_ans2->setProperty(WSNuserValue,0);
  text_ans2->setProperty(WSNlabelString,"0");

  timer2->setProperty(WSNuserValue,0);
  timer2->setProperty(WSNrunning, false);

  label_level2->setProperty(WSNuserValue,1);
  label_level2->setProperty(WSNlabelString,"1");

  label_timer2->setProperty(WSNlabelString,"0");

  frame_index->setProperty(WSNvis, false);
  frame_menu->setProperty(WSNvis, true);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, false);
  frame_game3->setProperty(WSNvis, false);


}
static WSCfunctionRegister  op("btn_giveup3_click",(void*)btn_giveup3_click);
