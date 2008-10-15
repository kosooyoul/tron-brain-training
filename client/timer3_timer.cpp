#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvlabel.h>
#include <WSCvtimer.h>
#include <WSCvifield.h>
#include <WSCmessageDialog.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* msg3;
extern WSCvlabel* label_timer3;
extern WSCvlabel* label_level3;
extern WSCvlabel* label_point3;
extern WSCvlabel* sdap3;

extern WSCvtimer* timer3;
extern WSCvtimer* timer_rand;
extern WSCvifield* text_ans3;
extern WSCvlabel* sdap1;

extern WSCvlabel* label_notice3;
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
extern WSCvlabel* inputpoint;
extern WSCtform* frame_input3;
extern WSCtform* msg3;

void timer3_timer(WSCbase* object){
  //do something...
  static char tnum[10] = {0,1,2,3,4,5,6,7,8,9};
  static int equal = 0;
  char tstr[50];

  int count = timer3->getProperty(WSNuserValue);
  int i;
  int temp = (int)timer_rand->getProperty(WSNuserValue);
  int tcnt, tval;

  if(count == 0){		//숫자 섞기
    for(i = 0; i < 10; i++){
       tcnt = (temp + rand())%10;
       tval = tnum[i];
       tnum[i] = tnum[tcnt];
       tnum[tcnt] = tval;
       frame_input3->setProperty(WSNvis, false);
    }

    label_notice3->setProperty(WSNlabelString,"REMEMBER CARD NUMBER");

    card0->setProperty(WSNlabelString,tnum[0]);
    card1->setProperty(WSNlabelString,tnum[1]);
    card2->setProperty(WSNlabelString,tnum[2]);
    card3->setProperty(WSNlabelString,tnum[3]);
    card4->setProperty(WSNlabelString,tnum[4]);
    card5->setProperty(WSNlabelString,tnum[5]);
    card6->setProperty(WSNlabelString,tnum[6]);
    card7->setProperty(WSNlabelString,tnum[7]);
    card8->setProperty(WSNlabelString,tnum[8]);
    card9->setProperty(WSNlabelString,tnum[9]);
    inputpoint->setProperty(WSNuserValue, 0);

  }else if(count == 100){
    card0->setProperty(WSNuserValue,-1);
    card0->setProperty(WSNlabelString,"?");
  }else if(count == 101){
    card1->setProperty(WSNuserValue,-1);
    card1->setProperty(WSNlabelString,"?");
  }else if(count == 102){
    card2->setProperty(WSNuserValue,-1);
    card2->setProperty(WSNlabelString,"?");
  }else if(count == 103){
    card3->setProperty(WSNuserValue,-1);
    card3->setProperty(WSNlabelString,"?");
  }else if(count == 104){
    card4->setProperty(WSNuserValue,-1);
    card4->setProperty(WSNlabelString,"?");
  }else if(count == 105){
    card5->setProperty(WSNuserValue,-1);
    card5->setProperty(WSNlabelString,"?");
  }else if(count == 106){
    card6->setProperty(WSNuserValue,-1);
    card6->setProperty(WSNlabelString,"?");
  }else if(count == 107){
    card7->setProperty(WSNuserValue,-1);
    card7->setProperty(WSNlabelString,"?");
  }else if(count == 108){
    card8->setProperty(WSNuserValue,-1);
    card8->setProperty(WSNlabelString,"?");
  }else if(count == 109){
    card9->setProperty(WSNuserValue,-1);
    card9->setProperty(WSNlabelString,"?");
    frame_input3->setProperty(WSNvis, true);
    label_notice3->setProperty(WSNlabelString,"INPUT NUMBER KEY");

  }else if(count == 300){
    frame_input3->setProperty(WSNvis, false);

    tval = card0->getProperty(WSNuserValue);
    if(tval == tnum[0]){equal++;}
    else{card0->setProperty(WSNlabelString, "X");}

  }else if(count == 301){
    tval = card1->getProperty(WSNuserValue);
    if(tval == tnum[1]){equal++;}
    else{card1->setProperty(WSNlabelString, "X");}

  }else if(count == 302){
    tval = card2->getProperty(WSNuserValue);
    if(tval == tnum[2]){equal++;}
    else{card2->setProperty(WSNlabelString, "X");}

  }else if(count == 303){
    tval = card3->getProperty(WSNuserValue);
    if(tval == tnum[3]){equal++;}
    else{card3->setProperty(WSNlabelString, "X");}

  }else if(count == 304){
    tval = card4->getProperty(WSNuserValue);
    if(tval == tnum[4]){equal++;}
    else{card4->setProperty(WSNlabelString, "X");}

  }else if(count == 305){
    tval = card5->getProperty(WSNuserValue);
    if(tval == tnum[5]){equal++;}
    else{card5->setProperty(WSNlabelString, "X");}

  }else if(count == 306){
    tval = card6->getProperty(WSNuserValue);
    if(tval == tnum[6]){equal++;}
    else{card6->setProperty(WSNlabelString, "X");}

  }else if(count == 307){
    tval = card7->getProperty(WSNuserValue);
    if(tval == tnum[7]){equal++;}
    else{card7->setProperty(WSNlabelString, "X");}

  }else if(count == 308){
    tval = card8->getProperty(WSNuserValue);
    if(tval == tnum[8]){equal++;}
    else{card8->setProperty(WSNlabelString, "X");}

  }else if(count == 309){
    tval = card9->getProperty(WSNuserValue);
    if(tval == tnum[9]){equal++;}
    else{card9->setProperty(WSNlabelString, "X");}

  }else if(count > 320){
    tval = label_point3->getProperty(WSNuserValue);
    tval = tval + equal*2 + equal/2;
    label_point3->setProperty(WSNuserValue, tval);
    label_point3->setProperty(WSNlabelString, tval);
    timer3->setProperty(WSNrunning, false);
    timer3->setProperty(WSNuserValue, 0);
    msg3->setProperty(WSNvis, true);
    sprintf(tstr,"EQUAL = %d. POINT +%d.",equal,equal*2+equal/2);
    sdap3->setProperty(WSNlabelString,tstr);
    equal = 0;
    count = -1;
  }

  //타이머값 증가
  count++;
  timer3->setProperty(WSNuserValue, count);
  if(count<=300){
    label_timer3->setProperty(WSNlabelString, 300 - count);
  }

}
static WSCfunctionRegister  op("timer3_timer",(void*)timer3_timer);
