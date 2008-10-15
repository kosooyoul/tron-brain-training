#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvlabel.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvlabel* inputpoint;
extern WSCvlabel* card0;
extern WSCvlabel* card1;
extern WSCvlabel* card2;
extern WSCvlabel* card3;
extern WSCvlabel* card4;
extern WSCvlabel* card5;
extern WSCvlabel* card6;
extern WSCvlabel* card7;
extern WSCvlabel* card8;
extern WSCvlabel* card9;

void num3_0_click(WSCbase* object){
  //do something...
  int temp;

  temp = inputpoint->getProperty(WSNuserValue);

  switch(temp){
    case 0:
	card0->setProperty(WSNuserValue,0);
	card0->setProperty(WSNlabelString,"0");break;
    case 1:
	card1->setProperty(WSNuserValue,0);
	card1->setProperty(WSNlabelString,"0");break;
    case 2:
	card2->setProperty(WSNuserValue,0);
	card2->setProperty(WSNlabelString,"0");break;
    case 3:
	card3->setProperty(WSNuserValue,0);
	card3->setProperty(WSNlabelString,"0");break;
    case 4:
	card4->setProperty(WSNuserValue,0);
	card4->setProperty(WSNlabelString,"0");break;
    case 5:
	card5->setProperty(WSNuserValue,0);
	card5->setProperty(WSNlabelString,"0");break;
    case 6:
	card6->setProperty(WSNuserValue,0);
	card6->setProperty(WSNlabelString,"0");break;
    case 7:
	card7->setProperty(WSNuserValue,0);
	card7->setProperty(WSNlabelString,"0");break;
    case 8:
	card8->setProperty(WSNuserValue,0);
	card8->setProperty(WSNlabelString,"0");break;
    case 9:
	card9->setProperty(WSNuserValue,0);
	card9->setProperty(WSNlabelString,"0");break;
  }
  temp++;
  if(temp > 10) temp = 10;
  inputpoint->setProperty(WSNuserValue, temp);
}
static WSCfunctionRegister  op("num3_0_click",(void*)num3_0_click);
