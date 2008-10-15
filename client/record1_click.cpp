#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

#include <WSCvlabel.h>
#include <WSCvcsocket.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCvlabel* sock_send;
extern WSCvlabel* sock_recv;
extern WSCvcsocket* mainsock;

extern WSCvlabel* rdate1_1;
extern WSCvlabel* rdate1_2;
extern WSCvlabel* rdate1_3;
extern WSCvlabel* rdate1_4;
extern WSCvlabel* rdate1_5;
extern WSCvlabel* rpoint1_1;
extern WSCvlabel* rpoint1_2;
extern WSCvlabel* rpoint1_3;
extern WSCvlabel* rpoint1_4;
extern WSCvlabel* rpoint1_5;

extern WSCtform* frmrecord1;

void record1_click(WSCbase* object){
  //do something...
/*
  frmrecord1->setProperty(WSNvis, true);
/////////////////////////////////////////////
    WSCstring tstr;
    char buffer[256];
    char temp[20];

    memset(buffer,0,256);
    sprintf(buffer,"#record 0");

    sock_send->setProperty(WSNlabelString,buffer);

    mainsock->exec();

    tstr = sock_recv->getProperty(WSNlabelString);
    strcpy(name,tstr);

///////////////////////////////////////////
*/


}
static WSCfunctionRegister  op("record1_click",(void*)record1_click);
