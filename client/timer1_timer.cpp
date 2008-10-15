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

extern WSCtform* msg1;
extern WSCvlabel* label_timer1;
extern WSCvlabel* label_oprnd1;
extern WSCvlabel* label_oprnd2;
extern WSCvlabel* label_level1;
extern WSCvlabel* label_point1;
extern WSCvlabel* sdap1;

extern WSCvtimer* timer1;
extern WSCvtimer* timer_rand;
extern WSCvifield* text_ans1;

void timer1_timer(WSCbase* object){
  //do something...
  char tstr[20];

  static long timer1_count = 0;
  int  quest1 = 0;
  int point;

  int temp = (int)timer_rand->getProperty(WSNuserValue);
  
  static int op1;
  static int op2;

  quest1 = label_level1->getProperty(WSNuserValue);

  if(timer1_count == 0){		//문제 초기화
    op1 = (temp+rand()) % 90 + 10;
    op2 = (temp+rand()) % 90 + 10;

    label_oprnd1->setProperty(WSNlabelString, op1);
    label_oprnd2->setProperty(WSNlabelString, op2);
    label_oprnd1->setProperty(WSNuserValue, op1);
    label_oprnd2->setProperty(WSNuserValue, op2);

    
    text_ans1->setProperty(WSNuserValue,0);
    text_ans1->setProperty(WSNlabelString,"0");
    
    quest1++;
    label_level1->setProperty(WSNuserValue,quest1);
    label_level1->setProperty(WSNlabelString,quest1);
  }

  label_timer1->setProperty(WSNlabelString,100 - timer1_count);

  timer1_count = timer1->getProperty(WSNuserValue);
  timer1_count++;
  timer1->setProperty(WSNuserValue,timer1_count);

  if(timer1_count > 100){		//시간제한
      timer1_count = 0;
      timer1->setProperty(WSNuserValue,0);

      timer1->setProperty(WSNrunning, false);
      
//      WSGIappMessageDialog()->setProperty(WSNwidth,200);
      if(op1 + op2 == (int)text_ans1->getProperty(WSNuserValue)){
//        WSGIappMessageDialog()->setProperty(WSNlabelString," O ");

        point = label_point1->getProperty(WSNuserValue);
        point++;
        label_point1->setProperty(WSNuserValue,point);
        point = point * 10;
        label_point1->setProperty(WSNlabelString,point);

        sdap1->setProperty(WSNlabelString," O! CORRECT ANSWER.");	////

      }else{
        sprintf(tstr," X! %d + %d = %d.", op1, op2, op1 + op2);		////
        sdap1->setProperty(WSNlabelString,tstr);		////
      }
      msg1->setProperty(WSNvis, true);

/*   
    if(quest1 >= 10){			//10문제
      timer1->setProperty(WSNrunning, false);
    }else{
      timer1->setProperty(WSNrunning, true);
    }
*/
  }


}
static WSCfunctionRegister  op("timer1_timer",(void*)timer1_timer);
