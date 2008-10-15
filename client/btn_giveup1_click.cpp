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

extern WSCvlabel* label_timer1;
extern WSCvlabel* label_level1;
extern WSCvtimer* timer1;
extern WSCvifield* text_ans1;
extern WSCvtimer* timer_rand;
extern WSCvlabel* label_oprnd1;
extern WSCvlabel* label_oprnd2;

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;



void btn_giveup1_click(WSCbase* object){
  //do something...
  int temp = (int)timer_rand->getProperty(WSNuserValue);
  int op1 = (temp+rand()) % 90 + 10;
  int op2 = (temp+rand()) % 90 + 10;

    label_oprnd1->setProperty(WSNlabelString, op1);
    label_oprnd2->setProperty(WSNlabelString, op2);
  label_oprnd1->setProperty(WSNuserValue, op1);
  label_oprnd2->setProperty(WSNuserValue, op2);

  text_ans1->setProperty(WSNuserValue,0);
  text_ans1->setProperty(WSNlabelString,"0");

  timer1->setProperty(WSNuserValue,0);
  timer1->setProperty(WSNrunning, false);

  label_level1->setProperty(WSNuserValue,1);
  label_level1->setProperty(WSNlabelString,"1");

  label_timer1->setProperty(WSNlabelString,"0");

  frame_index->setProperty(WSNvis, false);
  frame_menu->setProperty(WSNvis, true);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, false);
  frame_game3->setProperty(WSNvis, false);


}
static WSCfunctionRegister  op("btn_giveup1_click",(void*)btn_giveup1_click);
