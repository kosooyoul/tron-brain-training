#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvifield.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvifield* text_ans2;

void num2_c_click(WSCbase* object){
  //do something...

  text_ans2->setProperty(WSNuserValue,0);
  text_ans2->setProperty(WSNlabelString,"0");

}
static WSCfunctionRegister  op("num2_c_click",(void*)num2_c_click);
