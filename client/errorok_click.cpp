#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCtform* msg_join;

void errorok_click(WSCbase* object){
  //do something...
  msg_join->setProperty(WSNvis,false);

}
static WSCfunctionRegister  op("errorok_click",(void*)errorok_click);
