#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
extern WSCtform* frmrecord1;

void frmrecord1_close_click(WSCbase* object){
  //do something...
  frmrecord1->setProperty(WSNvis,false);
}
static WSCfunctionRegister  op("frmrecord1_close_click",(void*)frmrecord1_close_click);
