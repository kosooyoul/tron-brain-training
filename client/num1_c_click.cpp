#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvifield.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvifield* text_ans1;

void num1_c_click(WSCbase* object){
  //do something...

  text_ans1->setProperty(WSNuserValue,0);
  text_ans1->setProperty(WSNlabelString,"0");

}
static WSCfunctionRegister  op("num1_c_click",(void*)num1_c_click);
