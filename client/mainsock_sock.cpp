#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

#include <WSCvcsocket.h>
#include <WSCmessageDialog.h>
#include <WSCvlabel.h>

extern WSCvlabel* sock_send;
extern WSCvlabel* sock_recv;
extern WSCvlabel* permition;

void mainsock_sock(WSCbase* object){
  //do something...
  WSCstring tstr;
  WSCvcsocket* mainsock_sock = (WSCvcsocket*)object->cast("WSCvcsocket");

  char buffer[256];
  long send_len;

///////////////////////////////
  tstr = permition->getProperty(WSNlabelString);
  strcpy(buffer,tstr);
//  if(buffer[0] == '#'){
//    send_len = mainsock_sock->write((WSCuchar*)buffer,256);
//  }
/////////////////////////////////

  sprintf(buffer,"%s%s",buffer,(char*)sock_send->getProperty(WSNlabelString));
  
  //send data;
  send_len = mainsock_sock->write((WSCuchar*)buffer,256);
  //newvlab_005->setProperty(WSNlabelString,buffer);

  if (send_len == 256){
    //success! do something..
  }else{
    //error!
    return;
  } 

  //receive data;
  memset(buffer,0,256);
  long recv_len = mainsock_sock->read((WSCuchar*)buffer,256);
  sock_recv->setProperty(WSNlabelString,buffer);

  if (recv_len == 256){
    //success! do something..
  }else{
    //error!
    return;
  } 



}
static WSCfunctionRegister  op("mainsock_sock",(void*)mainsock_sock);
