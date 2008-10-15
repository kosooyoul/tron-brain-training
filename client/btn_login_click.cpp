#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

#include <WSCvifield.h>
#include <WSCvpifield.h>

#include <WSCvlabel.h>
#include <WSCvcsocket.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
//#include <WSCmessageDialog.h>

extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;

extern WSCvifield* text_id;
extern WSCvpifield* text_pass;
extern WSCvlabel* sock_send;
extern WSCvlabel* sock_recv;
extern WSCvlabel* permition;
extern WSCvcsocket* mainsock;

void btn_login_click(WSCbase* object){
  //do something...
    WSCstring tstr;
    char buffer[256];
    char id[20];
    char pass[20];
    memset(buffer,0,256);
    tstr = text_id->getProperty(WSNlabelString);
    strcpy(id,tstr);
    tstr = text_pass->getProperty(WSNlabelString);
    strcpy(pass,tstr);
    sprintf(buffer,"#login %s,%s",id,pass);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();

    sprintf(buffer,"#tlogin %s,%s",id,pass);

    tstr = sock_recv->getProperty(WSNlabelString);
    strcpy(id,tstr);
    if(!strcmp(id,"@login 0")){
      permition->setProperty(WSNlabelString,buffer);

      frame_index->setProperty(WSNvis, false);
      frame_menu->setProperty(WSNvis, true);
      frame_game1->setProperty(WSNvis, false);
      frame_game2->setProperty(WSNvis, false);
      frame_game3->setProperty(WSNvis, false);

    }
}
static WSCfunctionRegister  op("btn_login_click",(void*)btn_login_click);
