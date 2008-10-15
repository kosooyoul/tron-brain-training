#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCtform* frmrecord3;

void frmrecord3_close_click(WSCbase* object){
  //do something...
  frmrecord3->setProperty(WSNvis,false);
}
static WSCfunctionRegister  op("frmrecord3_close_click",(void*)frmrecord3_close_click);
