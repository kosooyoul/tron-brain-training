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
extern WSCtform* msg_join;
extern WSCvlabel* errorjoin;
extern WSCvifield* join_id;

void isdup_click(WSCbase* object){
  //do something...
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    char id[20];

    tstr = join_id->getProperty(WSNlabelString);
    strcpy(id,tstr);

    memset(buffer,0,256);
    sprintf(buffer,"#dupid %s",id);

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();

    tstr = sock_recv->getProperty(WSNlabelString);
    strcpy(id,tstr);
    if(!strcmp(id,"@dupid 0")){
      errorjoin->setProperty(WSNlabelString,"USEABLE ID.");
    }else{
      errorjoin->setProperty(WSNlabelString,"UNuseable ID.");
    }
    msg_join->setProperty(WSNvis,true);
///////////////////////////////////////////





}
static WSCfunctionRegister  op("isdup_click",(void*)isdup_click);
