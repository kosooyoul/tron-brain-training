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

void btn2_click(WSCbase* object){
  //do something...
  frame1->setProperty(WSNvis,false);
  frame2->setProperty(WSNvis,true);
  frame3->setProperty(WSNvis,false);



}
static WSCfunctionRegister  op("btn2_click",(void*)btn2_click);
