#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvifield.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvifield* text_ans1;

void num1_1_click(WSCbase* object){
  //do something...
  int temp;
  char tstr[20];

  temp = (int)text_ans1->getProperty(WSNuserValue);

  temp = temp * 10 + 1;  
  sprintf(tstr,"%d",temp);

  text_ans1->setProperty(WSNuserValue,temp);
  text_ans1->setProperty(WSNlabelString,tstr);

}
static WSCfunctionRegister  op("num1_1_click",(void*)num1_1_click);
