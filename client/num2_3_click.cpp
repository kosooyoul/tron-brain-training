#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvifield.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvifield* text_ans2;

void num2_3_click(WSCbase* object){
  //do something...
  int temp;
  char tstr[20];

  temp = (int)text_ans2->getProperty(WSNuserValue);

  temp = temp * 10 + 3;  
  sprintf(tstr,"%d",temp);

  text_ans2->setProperty(WSNuserValue,temp);
  text_ans2->setProperty(WSNlabelString,tstr);

}
static WSCfunctionRegister  op("num2_3_click",(void*)num2_3_click);