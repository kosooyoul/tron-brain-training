#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCtform* msg_lost;

void lostok_click(WSCbase* object){
  //do something...
  msg_lost->setProperty(WSNvis,false);
}
static WSCfunctionRegister  op("lostok_click",(void*)lostok_click);
