#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCtform* frmrecord2;

void frmrecord2_close_click(WSCbase* object){
  //do something...
  frmrecord2->setProperty(WSNvis,false);
}
static WSCfunctionRegister  op("frmrecord2_close_click",(void*)frmrecord2_close_click);
