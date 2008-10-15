#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
#include <WSCvlabel.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------


extern WSCtform* frame_index;
extern WSCtform* frame_menu;
extern WSCtform* frame_game1;
extern WSCtform* frame_game2;
extern WSCtform* frame_game3;
extern WSCvlabel* permition;

void btn_gotoindex_click(WSCbase* object){
  //do something...
  permition->setProperty(WSNlabelString,"");

  frame_index->setProperty(WSNvis, true);
  frame_menu->setProperty(WSNvis, false);
  frame_game1->setProperty(WSNvis, false);
  frame_game2->setProperty(WSNvis, false);
  frame_game3->setProperty(WSNvis, false);

}
static WSCfunctionRegister  op("btn_gotoindex_click",(void*)btn_gotoindex_click);
