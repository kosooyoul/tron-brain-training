#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvifield.h>
#include <WSCtform.h>

#include <WSCvlabel.h>
#include <WSCvcsocket.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCvlabel* sock_send;
extern WSCvlabel* sock_recv;
extern WSCvcsocket* mainsock;
extern WSCtform* msg_lost;
extern WSCvlabel* errorlost;

extern WSCvifield* lost_id;
extern WSCvifield* lost_mail2;

void btn_findpass_click(WSCbase* object){
  //do something...
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    char id[20],mail[40];

    tstr = lost_id->getProperty(WSNlabelString);
    strcpy(id,tstr);
    tstr = lost_mail2->getProperty(WSNlabelString);
    strcpy(mail,tstr);
//#findid char[20], char[40]
    memset(buffer,0,256);
    sprintf(buffer,"#findpass %s,%s",id,mail);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();
///////////////////////////////////////////
    tstr = sock_recv->getProperty(WSNlabelString);
    strcpy(id,tstr);
    if(!strcmp(id,"@findpass 0")){
      errorlost->setProperty(WSNlabelString,"SENDED MAIL.");
    }else{
      errorlost->setProperty(WSNlabelString,"NOT FOUND.");
    }
    msg_lost->setProperty(WSNvis,true);
}
static WSCfunctionRegister  op("btn_findpass_click",(void*)btn_findpass_click);
