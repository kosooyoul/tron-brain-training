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

extern WSCtform* msg3;
extern WSCvtimer* timer3;
extern WSCvlabel* label_level3;
extern WSCvlabel* label_point3;

extern WSCvlabel* sock_send;
extern WSCvcsocket* mainsock;

extern WSCvlabel* label_timer3;

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;

void btn_msgok3_click(WSCbase* object){
  //do something...
  int quest3;

  msg3->setProperty(WSNvis, false);

  quest3 = label_level3->getProperty(WSNuserValue);
    if(quest3 >= 5){			//5¹®Á¦
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    int point;

    memset(buffer,0,256);
    point = label_point3->getProperty(WSNuserValue);
    sprintf(buffer,"#save 2,%d",point);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();
///////////////////////////////////////////

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

    }else{
      quest3++;
      label_level3->setProperty(WSNuserValue,quest3);
      label_level3->setProperty(WSNlabelString,quest3);
      timer3->setProperty(WSNrunning, true);
    }

}
static WSCfunctionRegister  op("btn_msgok3_click",(void*)btn_msgok3_click);
