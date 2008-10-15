#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvtimer.h>

//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCvtimer* timer_rand;

void timer_rand_timer(WSCbase* object){
  static int randcount = 0;

  timer_rand->setProperty(WSNuserValue,randcount);

  if(randcount > 1000) randcount=0;

  randcount++;

}
static WSCfunctionRegister  op("timer_rand_timer",(void*)timer_rand_timer);
