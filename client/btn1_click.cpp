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

void btn1_click(WSCbase* object){
  //do something...
  frame1->setProperty(WSNvis,true);
  frame2->setProperty(WSNvis,false);
  frame3->setProperty(WSNvis,false);



}
static WSCfunctionRegister  op("btn1_click",(void*)btn1_click);
