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

extern WSCvifield* lost_name;
extern WSCvifield* lost_mail;

void btn_findid_click(WSCbase* object){
  //do something...
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    char name[20],mail[40];

    tstr = lost_name->getProperty(WSNlabelString);
    strcpy(name,tstr);
    tstr = lost_mail->getProperty(WSNlabelString);
    strcpy(mail,tstr);
//#findid char[20], char[40]
    memset(buffer,0,256);
    sprintf(buffer,"#findid %s,%s",name,mail);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();
///////////////////////////////////////////
    tstr = sock_recv->getProperty(WSNlabelString);
    strcpy(name,tstr);
    if(strcmp(name,"@findid 1")){
      sprintf(buffer,"FOUND:%s",name);
      errorlost->setProperty(WSNlabelString,buffer);
    }else{
      errorlost->setProperty(WSNlabelString,"NOT FOUND.");
    }
    msg_lost->setProperty(WSNvis,true);
}
static WSCfunctionRegister  op("btn_findid_click",(void*)btn_findid_click);
