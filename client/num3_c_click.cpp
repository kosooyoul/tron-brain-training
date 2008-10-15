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

void num3_c_click(WSCbase* object){
  //do something...
  int temp = inputpoint->getProperty(WSNuserValue);

  temp--;
  if(temp < 0) temp = 0;
  inputpoint->setProperty(WSNuserValue,temp);

  switch(temp){
    case 0:
	card0->setProperty(WSNuserValue,-1);
	card0->setProperty(WSNlabelString,"?");
    case 1:
	card1->setProperty(WSNuserValue,-1);
	card1->setProperty(WSNlabelString,"?");
    case 2:
	card2->setProperty(WSNuserValue,-1);
	card2->setProperty(WSNlabelString,"?");
    case 3:
	card3->setProperty(WSNuserValue,-1);
	card3->setProperty(WSNlabelString,"?");
    case 4:
	card4->setProperty(WSNuserValue,-1);
	card4->setProperty(WSNlabelString,"?");
    case 5:
	card5->setProperty(WSNuserValue,-1);
	card5->setProperty(WSNlabelString,"?");
    case 6:
	card6->setProperty(WSNuserValue,-1);
	card6->setProperty(WSNlabelString,"?");
    case 7:
	card7->setProperty(WSNuserValue,-1);
	card7->setProperty(WSNlabelString,"?");
    case 8:
	card8->setProperty(WSNuserValue,-1);
	card8->setProperty(WSNlabelString,"?");
    case 9:
	card9->setProperty(WSNuserValue,-1);
	card9->setProperty(WSNlabelString,"?");
  }

}
static WSCfunctionRegister  op("num3_c_click",(void*)num3_c_click);
