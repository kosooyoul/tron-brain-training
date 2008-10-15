<html>
<head>
<title>웹 메일러</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
</head>

<body>

<?
//=========================================================================
//  함수 명     : send_mail()
//  함수 설명   : 일반 메일 발송 함수
//  페러미터    : $rc -> 받는 사람 메일 주소
//                $sd -> 보내는 사람 메일 주소
//                $sn -> 보내는 사람 이름
//                $tt -> 메일 제목
//                $body -> 메일 내용
//                $ht -> HTML TAG 사용 여부
//=========================================================================
function send_mail( $get, $send, $name, $title, $body, $html ) {

    $head       = "ReplyTo: ".$send."\n";
    $head      .= "Return-Path: ".$send."\n";
    $head      .= "From: ".$name."<".$send.">\n";

    if ($html){
        $head .= "Content-Type: text/html; charset=EUC-KR\r\r\n";
    }
    $head      .= "Content-Transfer-Encoding: 8bit\r\n\r\n";

    $result     = mail($get, $title, $body, $head);

    return $result;
}


    $sd = "secret@ahyane.net";								//보내는 사람 이메일
    $tt = "두뇌 트레이닝 게임에서 탈퇴하셨음을 알려드립니다.";	//제목
    $ht = "1";										//(1:사용, 0:사용안함)
    $sn = "정보관리서버";								//보내는 사람의 이름
    //$rc = "ahyane@ahyane.net";							//받는 사람의 이메일을 입력하세요


$body	 = "<table width='480' cellspacing='0' bordercolordark='white' bordercolorlight='black' cellpadding='0'><tr><td width='40' height='40'>&nbsp;</td><td width='398' style='border-right-width:1; border-left-width:1; border-right-color:rgb(239,101,49); border-left-color:rgb(239,101,49); border-right-style:dashed; border-left-style:dashed;' height='40'>&nbsp;</td><td width='40' height='40'>&nbsp;</td></tr><tr><td width='40' height='150' style='border-top-width:1; border-bottom-width:1; border-top-color:rgb(239,101,49); border-bottom-color:rgb(239,101,49); border-top-style:dashed; border-bottom-style:dashed;'>&nbsp;</td><td width='398' height='150' style='border-width:1; border-color:rgb(239,101,49); border-style:dashed;' valign='top'><p align='center'><span style='font-size:10pt;'><font face='돋움'><br>안녕하세요?<br>트레이닝 정보관리서버입니다.<br><br></font><b><font face='돋움' color='#006699'>";
$body	.= $nm."(".$id.")</font></b><font face='돋움'> 님 정상적으로 탈퇴되었습니다.<br>감사합니다.<br><br>";
$body	.= "기타 문의 사항은 http://www.ahyane.net로 해주시기 바랍니다.<br></font></span></p></td><td width='40' height='150' style='border-top-width:1; border-bottom-width:1; border-top-color:rgb(239,101,49); border-bottom-color:rgb(239,101,49); border-top-style:dashed; border-bottom-style:dashed;'>&nbsp;</td></tr><tr><td width='40' height='40'>&nbsp;</td><td width='398' style='border-right-width:1; border-left-width:1; border-right-color:rgb(239,101,49); border-left-color:rgb(239,101,49); border-right-style:dashed; border-left-style:dashed;' height='40'>&nbsp;</td><td width='40' height='40'>&nbsp;</td></tr></table>";

    if($rc!="") send_mail( $rc, $sd, $sn, $tt, $body, $ht);

?>

흠냥... -ㅅ-<br>
형식<br>
http://www.ahyane.net/@mail/mailpass.php<br>
?rc=ahyane@ahyane.net&sd=secret@ahyane.net&tt=title&ht=1&nm=ahyane&nt=none


</body>
</html>