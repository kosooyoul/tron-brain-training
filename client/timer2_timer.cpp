#include <WScom.h>
#include <WSCfunctionList.h>
#include <WSCbase.h>
#include <WSCvlabel.h>
#include <WSCvtimer.h>
#include <WSCvifield.h>
#include <WSCmessageDialog.h>
#include <WSCvbtn.h>
#include <WSCtform.h>
//----------------------------------------------------------
//Function for the event procedure
//----------------------------------------------------------

extern WSCtform* msg2;
extern WSCvlabel* label_timer2;
extern WSCvlabel* label_level2;
extern WSCvlabel* label_point2;
extern WSCvlabel* sdap2;
extern WSCvtimer* timer2;
extern WSCvtimer* timer_rand;
extern WSCvifield* text_ans2;
extern WSCvbtn* image2;

void timer2_timer(WSCbase* object){
  //do something...
//  int i;

  char tstr[20];				//임시텍스트

//  static bool inits = true;
//  static int temp = (int)timer_rand->getProperty(WSNuserValue);	//랜덤
  static int daps[20] = { 4, 5, 5, 7, 5, 6, 7, 6, 7, 8,  9, 8,15,10,22,10,13,11,19, 7};//답

  static long timer2_count = 0;			//시간
  int  quest2 = 0;			//몇번째문제
  int point;					//맞춘갯수

  static int stage = (int)timer_rand->getProperty(WSNuserValue) % 10 + 1;		//정해진 블록
//  int dap[10];
  char filename[100];				//파일경로

    quest2 = label_level2->getProperty(WSNuserValue);

///////////////////////////////////////////////////////////
if(timer2_count == 0){		//시간제한
    sprintf(filename, "/SYS/test/B%d.jpg",quest2+1+stage);
    image2->setProperty(WSNlabelPixmap,filename);

    text_ans2->setProperty(WSNuserValue,0);
    text_ans2->setProperty(WSNlabelString,"0");
    
//    quest2++;
//    label_level2->setProperty(WSNuserValue,quest2);

//    label_level2->setProperty(WSNlabelString,quest2);
}
///////////////////////////////////////////////////////////

  label_timer2->setProperty(WSNlabelString,99 - timer2_count);

  timer2_count = timer2->getProperty(WSNuserValue);
  timer2_count++;
  timer2->setProperty(WSNuserValue,timer2_count);

  if(timer2_count == 100){		//시간제한
      timer2_count = 0;
      timer2->setProperty(WSNuserValue,0);
      timer2->setProperty(WSNrunning, false);


      timer2->setProperty(WSNrunning, false);
      

      if(daps[quest2 + stage] == (int)text_ans2->getProperty(WSNuserValue)){
        sdap2->setProperty(WSNlabelString," O! CORRECT ANSWER.");

        //정수증가
        point = label_point2->getProperty(WSNuserValue);
        point++;
        label_point2->setProperty(WSNuserValue,point);
        point = point * 10;
        label_point2->setProperty(WSNlabelString,point);
        //정수증가

      }else{
        sprintf(tstr," X! COUNT of BOX = %d.", daps[quest2 + stage]);
        sdap2->setProperty(WSNlabelString,tstr);
      }
      msg2->setProperty(WSNvis,true);
/*
    if(quest2 >= 10){			//10문제
      timer2->setProperty(WSNrunning, false);
    }else{
      timer2->setProperty(WSNrunning, true);
    }
*/

  }

}
static WSCfunctionRegister  op("timer2_timer",(void*)timer2_timer);
