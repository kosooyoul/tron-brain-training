<html>
<head>
<title>�� ���Ϸ�</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
</head>

<body>

<?
//=========================================================================
//  �Լ� ��     : send_mail()
//  �Լ� ����   : �Ϲ� ���� �߼� �Լ�
//  �䷯����    : $rc -> �޴� ��� ���� �ּ�
//                $sd -> ������ ��� ���� �ּ�
//                $sn -> ������ ��� �̸�
//                $tt -> ���� ����
//                $body -> ���� ����
//                $ht -> HTML TAG ��� ����
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


    $sd = "secret@ahyane.net";								//������ ��� �̸���
    $tt = "�γ� Ʈ���̴� ���ӿ��� Ż���ϼ����� �˷��帳�ϴ�.";	//����
    $ht = "1";										//(1:���, 0:������)
    $sn = "������������";								//������ ����� �̸�
    //$rc = "ahyane@ahyane.net";							//�޴� ����� �̸����� �Է��ϼ���


$body	 = "<table width='480' cellspacing='0' bordercolordark='white' bordercolorlight='black' cellpadding='0'><tr><td width='40' height='40'>&nbsp;</td><td width='398' style='border-right-width:1; border-left-width:1; border-right-color:rgb(239,101,49); border-left-color:rgb(239,101,49); border-right-style:dashed; border-left-style:dashed;' height='40'>&nbsp;</td><td width='40' height='40'>&nbsp;</td></tr><tr><td width='40' height='150' style='border-top-width:1; border-bottom-width:1; border-top-color:rgb(239,101,49); border-bottom-color:rgb(239,101,49); border-top-style:dashed; border-bottom-style:dashed;'>&nbsp;</td><td width='398' height='150' style='border-width:1; border-color:rgb(239,101,49); border-style:dashed;' valign='top'><p align='center'><span style='font-size:10pt;'><font face='����'><br>�ȳ��ϼ���?<br>Ʈ���̴� �������������Դϴ�.<br><br></font><b><font face='����' color='#006699'>";
$body	.= $nm."(".$id.")</font></b><font face='����'> �� ���������� Ż��Ǿ����ϴ�.<br>�����մϴ�.<br><br>";
$body	.= "��Ÿ ���� ������ http://www.ahyane.net�� ���ֽñ� �ٶ��ϴ�.<br></font></span></p></td><td width='40' height='150' style='border-top-width:1; border-bottom-width:1; border-top-color:rgb(239,101,49); border-bottom-color:rgb(239,101,49); border-top-style:dashed; border-bottom-style:dashed;'>&nbsp;</td></tr><tr><td width='40' height='40'>&nbsp;</td><td width='398' style='border-right-width:1; border-left-width:1; border-right-color:rgb(239,101,49); border-left-color:rgb(239,101,49); border-right-style:dashed; border-left-style:dashed;' height='40'>&nbsp;</td><td width='40' height='40'>&nbsp;</td></tr></table>";

    if($rc!="") send_mail( $rc, $sd, $sn, $tt, $body, $ht);

?>

���... -��-<br>
����<br>
http://www.ahyane.net/@mail/mailpass.php<br>
?rc=ahyane@ahyane.net&sd=secret@ahyane.net&tt=title&ht=1&nm=ahyane&nt=none


</body>
</html>