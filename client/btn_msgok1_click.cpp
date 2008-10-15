#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
#include <WSCvtimer.h>
#include <WSCvlabel.h>
#include <WSCvifield.h>

#include <WSCvlabel.h>
#include <WSCvcsocket.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* msg1;
extern WSCvtimer* timer1;
extern WSCvlabel* label_level1;
extern WSCvlabel* label_point1;

extern WSCvlabel* sock_send;
extern WSCvcsocket* mainsock;

extern WSCvlabel* label_timer1;
extern WSCvifield* text_ans1;
extern WSCvtimer* timer_rand;
extern WSCvlabel* label_oprnd1;
extern WSCvlabel* label_oprnd2;

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;


void btn_msgok1_click(WSCbase* object){
  //do something...
  int quest1;

  msg1->setProperty(WSNvis, false);

  quest1 = label_level1->getProperty(WSNuserValue);
    if(quest1 >= 10){			//10¹®Á¦
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    int point;

    memset(buffer,0,256);
    point = label_point1->getProperty(WSNuserValue);
    sprintf(buffer,"#save 0,%d",point * 10);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();
///////////////////////////////////////////

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

    }else{
      timer1->setProperty(WSNrunning, true);
    }

}
static WSCfunctionRegister  op("btn_msgok1_click",(void*)btn_msgok1_click);
