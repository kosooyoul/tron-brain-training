#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frmrecord3;

void record3_click(WSCbase* object){
  //do something...
  frmrecord3->setProperty(WSNvis, true);
}
static WSCfunctionRegister  op("record3_click",(void*)record3_click);
