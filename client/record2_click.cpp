#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* frmrecord2;

void record2_click(WSCbase* object){
  //do something...
  frmrecord2->setProperty(WSNvis, true);
}
static WSCfunctionRegister  op("record2_click",(void*)record2_click);
