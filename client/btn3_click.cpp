#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCtform* frame1;
extern WSCtform* frame2;
extern WSCtform* frame3;

void btn3_click(WSCbase* object){
  //do something...
  frame1->setProperty(WSNvis,false);
  frame2->setProperty(WSNvis,false);
  frame3->setProperty(WSNvis,true);



}
static WSCfunctionRegister  op("btn3_click",(void*)btn3_click);
