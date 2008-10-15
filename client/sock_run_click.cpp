#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------
#include <WSCvcsocket.h>
#include <WSCmessageDialog.h>

extern WSCvcsocket* mainsock;

void sock_run_click(WSCbase* object){
  //do something...

  long ret = mainsock->exec();
  if (ret != WS_NO_ERR){
    WSGIappMessageDialog()->setProperty(WSNwidth,200);
    WSGIappMessageDialog()->setProperty(WSNlabelString,"data send and receive failed..");
    WSGIappMessageDialog()->popup();
    return;
  }
}
static WSCfunctionRegister  op("sock_run_click",(void*)sock_run_click);
