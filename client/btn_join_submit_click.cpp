#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvifield.h>
#include <WSCvpifield.h>
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
extern WSCvpifield* join_pass;
extern WSCvpifield* join_pass2;
extern WSCvifield* join_mail;
extern WSCvifield* join_name;
extern WSCvifield* join_age;

void btn_join_submit_click(WSCbase* object){
  //do something...

/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    char id[20],pass[20],pass2[20],mail[40],name[20],age[3];

    tstr = join_id->getProperty(WSNlabelString);
    strcpy(id,tstr);
    tstr = join_pass->getProperty(WSNlabelString);
    strcpy(pass,tstr);
    tstr = join_pass2->getProperty(WSNlabelString);
    strcpy(pass2,tstr);
    tstr = join_mail->getProperty(WSNlabelString);
    strcpy(mail,tstr);
    tstr = join_name->getProperty(WSNlabelString);
    strcpy(name,tstr);
    tstr = join_age->getProperty(WSNlabelString);
    strcpy(age,tstr);

    if(strcmp(pass,pass2)){
      errorjoin->setProperty(WSNlabelString,"DIFFERENT PASSWORD.");
      join_pass->setProperty(WSNlabelString,"");
      join_pass2->setProperty(WSNlabelString,"");
      msg_join->setProperty(WSNvis,true);
      return;
    }

    memset(buffer,0,256);
    sprintf(buffer,"#join %s,%s,%s,%s,%s", id,pass,name,mail,age);
    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();

    tstr = sock_recv->getProperty(WSNlabelString);
    strcpy(id,tstr);
    if(!strcmp(id,"@join 0")){
      errorjoin->setProperty(WSNlabelString,"JOIN SUCCESSED.");
    }else{
      errorjoin->setProperty(WSNlabelString,"JOIN FAILED.");
    }
    msg_join->setProperty(WSNvis,true);
///////////////////////////////////////////

}
static WSCfunctionRegister  op("btn_join_submit_click",(void*)btn_join_submit_click);
