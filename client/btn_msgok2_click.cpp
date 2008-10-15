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

extern WSCtform* msg2;
extern WSCvtimer* timer2;
extern WSCvlabel* label_level2;
extern WSCvlabel* label_point2;

extern WSCvlabel* sock_send;
extern WSCvcsocket* mainsock;

extern WSCvlabel* label_timer2;
extern WSCvifield* text_ans2;

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;


void btn_msgok2_click(WSCbase* object){
  //do something...
  int quest2;

  msg2->setProperty(WSNvis, false);

  quest2 = label_level2->getProperty(WSNuserValue);
    if(quest2 >= 10){			//5¹®Á¦
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    int point;

    memset(buffer,0,256);
    point = label_point2->getProperty(WSNuserValue);
    sprintf(buffer,"#save 1,%d",point * 10);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();
///////////////////////////////////////////

  text_ans2->setProperty(WSNuserValue,0);
  text_ans2->setProperty(WSNlabelString,"0");

  timer2->setProperty(WSNuserValue,0);
  timer2->setProperty(WSNrunning, false);

  label_level2->setProperty(WSNuserValue,1);
  label_level2->setProperty(WSNlabelString,"1");

  label_point2->setProperty(WSNuserValue,0);
  label_point2->setProperty(WSNlabelString,"0");

  label_timer2->setProperty(WSNlabelString,"0");

  frame_index->setProperty(WSNvis, false);
  frame_menu->setProperty(WSNvis, true);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, false);
  frame_game3->setProperty(WSNvis, false);

    }else{
      quest2++;
      label_level2->setProperty(WSNuserValue,quest2);
      label_level2->setProperty(WSNlabelString,quest2);
      timer2->setProperty(WSNrunning, true);
    }

}
static WSCfunctionRegister  op("btn_msgok2_click",(void*)btn_msgok2_click);
