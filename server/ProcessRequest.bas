Attribute VB_Name = "ProcessRequest"
Option Explicit

Private Type User '접속 클라이언트 구조체
    Connection As String
    RequestID As Long
    NAME As String
End Type

Public iUser(50) As User '접속자

Function RefreshConnectedUser() '접속중 유저 확인
    Dim i As Integer

    frmMain.ConnectedUserList1.Clear
    For i = 1 To 50
        If iUser(i).Connection = "Connected" Then
            frmMain.ConnectedUserList1.AddItem Format(i, "0#") & " > " & iUser(i).NAME & "(" & Format(iUser(i).RequestID, "0000000#") & ")"
        End If
    Next i
    frmMain.UserCount.Caption = frmMain.ConnectedUserList1.ListCount & " 명 접속"
End Function

Function FindUser(UserNumber)
    If iUser(UserNumber).Connection = "Connected" Then
        FindUser = True
    Else
        FindUser = False
    End If
End Function

Function SendMailWelcome(ID As String, NAME As String, RECEIVER As String)
    '가입알림 메일
    'http://www.ahyane.net
    SendMailWelcome = frmMain.Inet1.OpenURL("http://www.ahyane.net/@mail/mailwelcome.php?rc=" & RECEIVER & "&nm=" & NAME & "&id=" & ID)
End Function

Function SendMailBye(ID As String, NAME As String, RECEIVER As String)
    '탈퇴알림 메일
    'http://www.ahyane.net
    SendMailBye = frmMain.Inet1.OpenURL("http://www.ahyane.net/@mail/mailbye.php?rc=" & RECEIVER & "&nm=" & NAME & "&id=" & ID)
End Function

Function SendMailPass(ID As String, PW As String, NAME As String, RECEIVER As String)
    '비밀번호를 메일로 보내기위한 인터넷 접속
    'http://www.ahyane.net
    SendMailPass = frmMain.Inet1.OpenURL("http://www.ahyane.net/@mail/mailpass.php?rc=" & RECEIVER & "&nm=" & NAME & "&id=" & ID & "&pw=" & PW)
End Function

Function AgeToYear(IN_Age As Integer)
    AgeToYear = Abs(Year(Now) - IN_Age + 1)
End Function

Function YearToAge(IN_Year As Integer)
    YearToAge = Abs(Year(Now) - IN_Year + 1)
End Function

Function Answer()
    Dim MSG As String
    Dim IN_CMD As String
    Dim UserNumber As Integer
    Dim UserCMDID As Long
    Dim ACK As String
    Dim INSTR_TEMP As Integer

Reget:

    GetRequest
    MSG = GetCurrentRequest
    
    If MSG <> "" Then
    
        UserNumber = Val(Left(MSG, 2))
        UserCMDID = Val(Mid(MSG, 1, 8))
        
        '현재 접속중인 유저냐? / 현재 소켓번호랑 ID 매치 되냐?
        'If FindUser(UserNumber) And iUser(UserNumber).RequestID = UserCMDID Then
            MSG = Mid(MSG, InStr(MSG, "#"))
            INSTR_TEMP = InStr(MSG, " ")
            If INSTR_TEMP Then
                IN_CMD = Mid(MSG, 2, INSTR_TEMP - 2)
                
                Select Case Trim(IN_CMD)
                    Case "login"    '로그인
                        ACK = A_Login(UserNumber, MSG)
                    Case "logout"   '로그아웃
                        ACK = A_Logout(UserNumber, MSG)
                    Case "findid"   '아이디찾기
                        ACK = A_FindID(UserNumber, MSG)
                    Case "findpass" '암호찾기
                        ACK = A_FindPass(UserNumber, MSG)
                    Case "join"     '사용자등록
                        ACK = A_Join(UserNumber, MSG)
                    Case "dupid"    '중복아이디확인
                        ACK = A_DupID(UserNumber, MSG)
                    Case "record"   '점수확인
                        ACK = A_Record(UserNumber, MSG)
                    Case "today"    '오늘 점수기록했는지 확인
                        ACK = A_Today(UserNumber, MSG)
                    Case "save"     '오늘 점수저장
                        ACK = A_Save(UserNumber, MSG)
                        
                    '2008.09.11 추가
                    Case "average"  '자신의 평균기록확인
                        ACK = A_Average(UserNumber, MSG)
                    Case "getinfo"  '자신의 정보보기
                        ACK = A_GetInfo(UserNumber, MSG)
                    Case "setinfo"  '자신의 정보수정
                        ACK = A_SetInfo(UserNumber, MSG)
                    Case "leave"    '탈퇴
                        ACK = A_Leave(UserNumber, MSG)
                        
                        
                    Case "tlogin"    '로그인
                        ACK = T_Login(UserNumber, MSG)
                        
                    '2008.09.30 추가
                    'Case "tlogin"    '로그인
                    '    ACK = TA_Login(UserNumber, MSG)
                    'Case "tlogout"   '로그아웃
                    '    ACK = TA_Logout(UserNumber, MSG)
                    'Case "tfindid"   '아이디찾기
                    '    ACK = TA_FindID(UserNumber, MSG)
                    'Case "tfindpass" '암호찾기
                    '    ACK = TA_FindPass(UserNumber, MSG)
                    'Case "tjoin"     '사용자등록
                    '    ACK = TA_Join(UserNumber, MSG)
                    'Case "tdupid"    '중복아이디확인
                    '    ACK = TA_DupID(UserNumber, MSG)
                    'Case "trecord"   '점수확인
                    '    ACK = TA_Record(UserNumber, MSG)
                    'Case "ttoday"    '오늘 점수기록했는지 확인
                    '    ACK = TA_Today(UserNumber, MSG)
                    'Case "tsave"     '오늘 점수저장
                    '    ACK = TA_Save(UserNumber, MSG)
                    'Case "taverage"  '자신의 평균기록확인
                    '    ACK = TA_Average(UserNumber, MSG)
                    'Case "tgetinfo"  '자신의 정보보기
                    '    ACK = TA_GetInfo(UserNumber, MSG)
                    'Case "tsetinfo"  '자신의 정보수정
                    '    ACK = TA_SetInfo(UserNumber, MSG)
                    'Case "tleave"    '탈퇴
                    '    ACK = TA_Leave(UserNumber, MSG)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                End Select
                
                '오류이거나 응답할수 없는 경우x
                If Trim(ACK) <> "" Then
                    frmMain.ServerToClient UserNumber, ACK
                End If
            Else
                AddLog "SERVER > 요청메시지에 인수가 없어 무시함 : " & MSG
            End If
        'Else
        '    AddLog "SERVER > 수신자가 접속을 끊었으므로 요청메시지 처리 안함 : " & MSG
        '    GoTo Reget
        'End If
    End If
    
End Function

'#login userid,password
'1234567890123456789012
'0000000001111111111222
'1) 로그인 성공 : @login 0
'2) 로그인 실패 : @login 1
'3) 중복 로그인 : @login 2
'4) 또 로그인?? : @login 3
Function A_Login(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim IN_PASS As String
    Dim i As Integer, j As Integer
        
    If iUser(UserNumber).NAME <> "Anonymous" Then
        A_Login = "@login 3" '"이미 로그인하셨습니다."
        Exit Function
    End If
    
    IN_ID = Trim(Mid(MSG, 8, InStr(MSG, ",") - 8))
    IN_PASS = Trim(Mid(MSG, InStr(MSG, ",") + 1))
    'MsgBox "[" & IN_ID & "] [" & IN_PASS & "]"
    
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_PASS
    IN_PASS = frmMain.Text1.Text
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(0) = IN_ID And UserRecord.Fields(1) = IN_PASS Then
            For j = 0 To 50 '중복로그인 확인
                If iUser(j).NAME = IN_ID Then
                    A_Login = "@login 2" '"다른 곳에서 이미 로그인 하였습니다."
                    Exit Function
                End If
            Next j
            iUser(UserNumber).NAME = IN_ID '접속자 아이디 적용
            A_Login = "@login 0" '"로그인이 성공하였습니다."
            
            RefreshConnectedUser '접속자목록 갱신
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    A_Login = "@login 1" '"로그인이 실패하였습니다."
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 로그인처리를 할 수 없습니다."
End Function

'#logout state  //게임상태?(0=안좋음(-2),1=별로임(-1),2=그럭저럭(0),3=괜찮음(+1),4=좋음(+2))
'1234567890123
'0000000001111
'1) 로그아웃 완료 : @logout 0
'2) 로그인 상태 아님 : @logout 1
Function A_Logout(UserNumber As Integer, MSG As String)
  
    If iUser(UserNumber).NAME = "Anonymous" Then
        A_Logout = "@logout 1" '"로그아웃 상태입니다."
        Exit Function
    End If
    
    ''만족도 계산 코드 삽입
    
    iUser(UserNumber).NAME = "Anonymous"
    A_Logout = "@logout 0" '"로그아웃 하였습니다."
    
    RefreshConnectedUser '접속자목록 갱신
End Function

'#findid inputname,mailaddress
'12345678901234567890123456789
'00000000011111111112222222222
'1) 입력한 정보 일치 : @findid 0,아이디
'2) 입력한 정보를 찾지 못함 : @findid 1
Function A_FindID(UserNumber As Integer, MSG As String)
    Dim IN_NAME As String
    Dim IN_MAIL As String
    Dim i As Integer

    IN_NAME = Trim(Mid(MSG, 9, InStr(MSG, ",") - 9))
    IN_MAIL = Trim(Mid(MSG, InStr(MSG, ",") + 1))

    frmMain.Text1.Text = IN_NAME
    IN_NAME = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_MAIL
    IN_MAIL = frmMain.Text1.Text

    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(2) = IN_NAME And UserRecord.Fields(3) = IN_MAIL Then
            A_FindID = "@findid 0," & UserRecord.Fields(0)  '아이디 찾음
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    A_FindID = "@findid 1" '"해당 아이디를 찾을 수 없습니다."
        
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 아이디검색을 할 수 없습니다."
    
End Function

'#findpass userid,mailaddress
'1234567890123456789012345678
'0000000001111111111222222222
'1) 입력한 정보 일치 : @findpass 0
'2) 입력한 정보를 찾지 못함 : @findpass 1
Function A_FindPass(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim IN_MAIL As String
    Dim i As Integer

    IN_ID = Trim(Mid(MSG, 11, InStr(MSG, ",") - 11))
    IN_MAIL = Trim(Mid(MSG, InStr(MSG, ",") + 1))
    
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_MAIL
    IN_MAIL = frmMain.Text1.Text
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(0) = IN_ID And UserRecord.Fields(3) = IN_MAIL Then
            
            SendMailPass UserRecord.Fields(0), UserRecord.Fields(1), UserRecord.Fields(2), UserRecord.Fields(3) '메일보내기
            
            A_FindPass = "@findpass 0" '"해당 메일로 비밀번호를 보내드렸습니다."
            
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    A_FindPass = "@findpass 1" '"잘못된 정보를 입력하셨습니다."
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 비밀번호검색을 할 수 없습니다."
End Function

'#join userid,pass,name,mailaddress,age
'12345678901234567890123456789012345678
'00000000011111111112222222222333333333
'1) 등록 성공 : @join 0
'2) 계정 중복 : @join 1
'3) 로그인상태: @join 2
Function A_Join(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim IN_PASS As String
    Dim IN_NAME As String
    Dim IN_MAIL As String
    Dim IN_Age As Integer
    Dim Query As String

    If iUser(UserNumber).NAME <> "Anonymous" Then
        A_Join = "@join 2" '"로그인상태에서 등록하실수 없습니다."
        Exit Function
    End If

    MSG = Mid(MSG, 7)
    IN_ID = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_PASS = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_NAME = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_MAIL = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_Age = Val(MSG)
    
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_NAME
    IN_NAME = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_PASS
    IN_PASS = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_MAIL
    IN_MAIL = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_Age
    IN_Age = frmMain.Text1.Text
    
    '정보를 데이터베이스에 삽입
    On Error GoTo OverLap
    Query = "INSERT INTO 사용자(ID,비밀번호,이름,메일주소,생년) "
    Query = Query & "VALUES('" & IN_ID & "', "
    Query = Query & "'" & IN_PASS & "', "
    Query = Query & "'" & IN_NAME & "', "
    Query = Query & "'" & IN_MAIL & "', "
    Query = Query & AgeToYear(IN_Age) & ")"
    UserConnection.Execute (Query)
    
    '데이터베이스 새로고침
    CloseUserConnection
    SetUserConnection
    ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 Order by ID")
    
    iUser(UserNumber).NAME = IN_ID
    SendMailWelcome IN_ID, IN_NAME, IN_MAIL
    A_Join = "@join 0" '"정상적으로 등록이 완료되었습니다."
    
    RefreshConnectedUser '접속자목록 갱신
    Exit Function

OverLap:
    If Err.Number = -2147467259 Then
        A_Join = "@join 1" '"같은 아이디의 계정이 존재합니다."
    ElseIf Err.Number = 91 Then
        SetNotice "데이터베이스가 열려있지 않아 사용자 등록을 할 수 없습니다."
    End If
        
End Function

'#dupid inputid
'123456789012345
'000000000111111
'1) 입력 아이디 찾지 못함 : @dupid 0
'2) 입력 아이디 존재 : @dupid 1
Function A_DupID(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim i As Integer

    IN_ID = Trim(Mid(MSG, 8))
  
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(0) = IN_ID Then
            A_DupID = "@dupid 1" '"사용할 수 없는 아이디입니다."
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    A_DupID = "@dupid 0" '"사용가능한 아이디입니다."
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 아이디검색을 할 수 없습니다."
    
End Function

'#record gamenumber //(0=계산,1=공간,2=암기)
'123456789012345678
'000000000111111111
'1) 기록이 존재 : @record 0,YY-MM-DD,점수/YY-MM-DD,점수/YY-MM-DD,점수/.....
'2) 기록이 없음 : @record 1
'3) 로그인 하지 않음 : @record 2
Function A_Record(UserNumber As Integer, MSG As String)
    Dim IN_GAME As String
    Dim FoundRecord As String
    Dim i As Integer
    Dim Count As Integer

    Count = 0
    If iUser(UserNumber).NAME = "Anonymous" Then
        A_Record = "@record 2" '"로그인하지 않으면 기록을 볼 수 없습니다."
        Exit Function
    End If

    IN_GAME = Val(Mid(MSG, 9))
    FoundRecord = ""
    
        
    frmMain.Text1.Text = IN_GAME
    IN_GAME = frmMain.Text1.Text
    
    
    On Error GoTo Err
    RecordRecord(IN_GAME).MoveLast
    For i = RecordRecord(IN_GAME).RecordCount - 1 To 0 Step -1
        If RecordRecord(IN_GAME).Fields(1) = iUser(UserNumber).NAME Then  '자신의 아이디 찾으면
            FoundRecord = FoundRecord & Format(RecordRecord(IN_GAME).Fields(2), "yy-mm-dd") & "," & Format(RecordRecord(IN_GAME).Fields(4), "000") & "/"
            Count = Count + 1
        If Count = 5 Then Exit For
        End If
    RecordRecord(IN_GAME).MovePrevious
    Next i
    
    If FoundRecord = "" Then
        A_Record = "@record 1" '"기록이 없습니다."
    Else
        A_Record = "@record " & FoundRecord
    End If
    
Err:
    If Err = 91 Then SetNotice "점수목록에 대한 데이터베이스가 열려있지 않아 기록을 찾을 수 없습니다."
End Function

'#today gamenumber
'12345678901234567
'00000000011111111
'1) 오늘 기록 존재 : @today 0
'2) 오늘 기록 없음 : @today 1
'3) 로그인 하지 않음 : @today 2
Function A_Today(UserNumber As Integer, MSG As String)
    Dim IN_GN As String
    Dim i As Integer

    If iUser(UserNumber).NAME <> "Anonymous" Then
        IN_GN = Trim(Mid(MSG, 7))
        
            
    frmMain.Text1.Text = IN_GN
    IN_GN = frmMain.Text1.Text
        
        
        On Error GoTo Err
        RecordRecord(IN_GN).MoveFirst
        For i = 0 To RecordRecord(IN_GN).RecordCount - 1
            If Format(RecordRecord(IN_GN).Fields(2), "yymmdd") = Format(Now, "yymmdd") Then
                A_Today = "@today 0," & RecordRecord(IN_GN).Fields(4) '"오늘 점수가 기록되어있습니다."
                Exit Function
            End If
        RecordRecord(IN_GN).MoveNext
        Next i
        A_Today = "@today 1" '"오늘 새 기록에 도전하세요."
    Else
        A_Today = "@today 2" '"로그인을 하지 않은 상태이므로 확인할 수 없습니다."
    End If
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 레코드검색을 할 수 없습니다."
    
End Function

'#save gamenumber,point
'1234567890123456789012
'0000000001111111111222
'1) 점수 저장 성공 : @save 0
'2) 로그인 하지 않음 : @save 1
Function A_Save(UserNumber As Integer, MSG As String)
    Dim IN_GN As String
    Dim IN_PNT As String
    Dim i As Integer
    Dim Query As String
    Dim TEMP_AGE As Integer
    TEMP_AGE = 25

    If iUser(UserNumber).NAME <> "Anonymous" Then
        IN_GN = Trim(Mid(MSG, 6, InStr(MSG, ",") - 6))
        IN_PNT = Trim(Mid(MSG, InStr(MSG, ",") + 1))
        
            
    frmMain.Text1.Text = IN_GN
    IN_GN = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_PNT
    IN_PNT = frmMain.Text1.Text
        
    On Error GoTo Err
        Query = "INSERT INTO " & Parts(IN_GN) & "점수목록(ID,점수) "
        Query = Query & "VALUES('" & iUser(UserNumber).NAME & "', "
        Query = Query & IN_PNT & ")"
        RecordConnection(IN_GN).Execute (Query)
    
        CloseRecordConnection (IN_GN)
        SetRecordConnection (IN_GN)
        ConnectRecordTable Val(IN_GN), "select INDEX,ID,날짜,시간,점수 from " & Parts(IN_GN) & "점수목록 Order by INDEX"
        
        '----------------------------------------------------------
        SetRecordBaseConnection
        ConnectRecordBaseTable ("select 점수,나이 from 점수표 Order by 점수")
        RecordBase.MoveFirst
        
        For i = 0 To RecordBase.RecordCount - 1
            If RecordBase.Fields(0) = IN_PNT Then
                TEMP_AGE = RecordBase.Fields(1)
                Exit For
            End If
        RecordBase.MoveNext
        Next i
        CloseRecordBaseConnection
        
        If IN_PNT < 50 Then TEMP_AGE = 70
        
        Query = "UPDATE 사용자 SET " & Parts(IN_GN) & "나이='" & TEMP_AGE & "' Where ID='" & iUser(UserNumber).NAME & "'"
        UserConnection.Execute (Query)
        
        '데이터베이스 새로고침
        CloseUserConnection
        SetUserConnection
        ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 Order by ID")
        '----------------------------------------------------------

        A_Save = "@save 0" '"점수가 정상적으로 저장되었습니다."
    Else
        A_Save = "@save 1" '"로그인을 하지 않은 상태에서는 점수를 저장할 수 없습니다."
    End If
    Exit Function

Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 레코드검색을 할 수 없습니다."
End Function

'#average 0
'1234567890123456789012
'0000000001111111111222
'1) 나이 반환 성공 : @average 0,rcd-int0,rcd-int1,rcd-int2
'2) 로그인 하지 않음: @average 1
Function A_Average(UserNumber As Integer, MSG As String)
    'Dim IN_TEMP As String
    Dim FoundRecord As String
    Dim i As Integer

    If iUser(UserNumber).NAME = "Anonymous" Then
        A_Average = "@average 1" '"로그인하지 않으면 기록을 볼 수 없습니다."
        Exit Function
    End If

    'IN_TEMP = Val(Mid(MSG, 9))
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(0) = iUser(UserNumber).NAME Then
            A_Average = "@average 0," & UserRecord.Fields(5) & "," & UserRecord.Fields(6) & "," & UserRecord.Fields(7)
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 레코드검색을 할 수 없습니다."
    
End Function

'#getinfo 0
'1234567890123456789012
'0000000001111111111222
'1) 정보 반환 성공 : @getinfo 0,name,mail,age
'2) 로그인 하지 않음: @getinfo 1
Function A_GetInfo(UserNumber As Integer, MSG As String)
    'Dim IN_TEMP As String
    Dim FoundRecord As String
    Dim i As Integer

    If iUser(UserNumber).NAME = "Anonymous" Then
        A_GetInfo = "@getinfo 1" '"로그인하지 않으면 기록을 볼 수 없습니다."
        Exit Function
    End If

    'IN_TEMP = Val(Mid(MSG, 9))
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(0) = iUser(UserNumber).NAME Then
            A_GetInfo = "@getinfo 0," & UserRecord.Fields(2) & "," & UserRecord.Fields(3) & "," & YearToAge(UserRecord.Fields(4))
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 레코드검색을 할 수 없습니다."
End Function

'#setinfo id, old-pass, new-pass, name, mail, age
'1234567890123456789012
'0000000001111111111222
'1) 정보 저장 성공 : @setinfo 0
'2) 비밀 번호 틀림 : @setinfo 1
'3) 로그인 하지 않음: @setinfo 2
Function A_SetInfo(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim IN_OLD_PASS As String
    Dim IN_NEW_PASS As String
    Dim IN_NAME As String
    Dim IN_MAIL As String
    Dim IN_Age As Integer
    Dim Query As String
    Dim i As Integer

    If iUser(UserNumber).NAME = "Anonymous" Or iUser(UserNumber).NAME <> IN_ID Then
        A_SetInfo = "@setinfo 2" '"로그인 상태가 아니므로 불가능"
        Exit Function
    End If

    MSG = Mid(MSG, 9)
    IN_ID = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_OLD_PASS = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_NEW_PASS = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_NAME = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_MAIL = Trim(Mid(MSG, 1, InStr(MSG, ",") - 1))
    MSG = Mid(MSG, InStr(MSG, ",") + 1)
    IN_Age = Val(MSG)
    
        
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_OLD_PASS
    IN_OLD_PASS = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_NEW_PASS
    IN_NEW_PASS = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_MAIL
    IN_MAIL = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_Age
    IN_Age = frmMain.Text1.Text
'   MsgBox IN_ID & " / " & IN_OLD_PASS & " / " & IN_NEW_PASS & " / " & IN_NAME & " / " & IN_MAIL & " / " & IN_Age
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        '아이디와 이전 암호가 맞는 경우
        If UserRecord.Fields(0) = IN_ID And UserRecord.Fields(1) = IN_OLD_PASS Then
        
            Query = "UPDATE 사용자 SET 비밀번호='" & IN_NEW_PASS & "', 이름='" & IN_NAME & "', 메일주소='" & IN_MAIL & "', 생년='" & AgeToYear(IN_Age) & "' Where ID='" & IN_ID & "'"
            UserConnection.Execute (Query)
            
            '데이터베이스 새로고침
            CloseUserConnection
            SetUserConnection
            ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 Order by ID")
            
            A_SetInfo = "@setinfo 0" '"정상적으로 수정이 완료되었습니다."
            
            Exit Function
        End If
    UserRecord.MoveNext
    Next i

    A_SetInfo = "@setinfo 1" '"수정이 실패되었습니다."
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 레코드검색을 할 수 없습니다."
End Function

'#leave id,pass
'1234567890123456789012
'0000000001111111111222
'1) 탈퇴 성공 : @leave 0
'2) 로그인 하지 않음: @leave 1
'3) 비밀번호 틀림 : @leave 2
Function A_Leave(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim Temp_Name As String
    Dim Temp_Mail As String
    Dim IN_PASS As String
    Dim Query As String
    Dim i As Integer
    Dim j As Integer
        
    IN_ID = Trim(Mid(MSG, 7, InStr(MSG, ",") - 7))
    IN_PASS = Trim(Mid(MSG, InStr(MSG, ",") + 1))
    
        
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_PASS
    IN_PASS = frmMain.Text1.Text
    
    '#join ahyane,alpha,고수열,ahyane@ahyane.net,24
    
    If iUser(UserNumber).NAME = "Anonymous" Or iUser(UserNumber).NAME <> IN_ID Then
        A_Leave = "@leave 1" '"로그인 상태가 아니므로 불가능"
        Exit Function
    End If
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        '아이디와 이전 암호가 맞는 경우
        If UserRecord.Fields(0) = IN_ID And UserRecord.Fields(1) = IN_PASS Then
            Temp_Name = UserRecord.Fields(2)
            Temp_Mail = UserRecord.Fields(3)
        
            '로그아웃먼저 시킴
            iUser(UserNumber).NAME = "Anonymous"
            
            '기록 주인 없앰
            For j = 0 To 2
                Query = "UPDATE " & Parts(j) & "점수목록 SET ID='Anonymous' Where ID='" & IN_ID & "'"
                UserConnection.Execute (Query)
            Next j

            '사용자목록에서 해당사용자 삭제
            UserRecord.Delete adAffectCurrent
            SendMailBye IN_ID, Temp_Name, Temp_Mail
            
            '접속자목록 새로고침
            RefreshConnectedUser
            
            '데이터베이스 새로고침
            CloseUserConnection
            SetUserConnection
            ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 Order by ID")
            
            CloseRecordConnection (0)
            CloseRecordConnection (1)
            CloseRecordConnection (2)
            SetRecordConnection (0)
            SetRecordConnection (1)
            SetRecordConnection (2)
            ConnectRecordTable 0, "select INDEX,ID,날짜,시간,점수 from 계산점수목록 Order by INDEX"
            ConnectRecordTable 1, "select INDEX,ID,날짜,시간,점수 from 공간점수목록 Order by INDEX"
            ConnectRecordTable 2, "select INDEX,ID,날짜,시간,점수 from 암기점수목록 Order by INDEX"
            
            A_Leave = "@leave 0" '"정상적으로 탈퇴되었습니다."
            
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    
    A_Leave = "@leave 2"    '비밀번호 틀림
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 레코드검색을 할 수 없습니다."
End Function

'#tlogin userid,password
'1234567890123456789012
'0000000001111111111222
'1) 로그인 성공 : @login 0
'2) 로그인 실패 : @login 1
'3) 중복 로그인 : @login 2
'4) 또 로그인?? : @login 3
Function T_Login(UserNumber As Integer, MSG As String)
    Dim IN_ID As String
    Dim IN_PASS As String
    Dim i As Integer, j As Integer
        
    If iUser(UserNumber).NAME <> "Anonymous" Then
      Exit Function
    End If
    
    IN_ID = Trim(Mid(MSG, 8, InStr(MSG, ",") - 8))
    IN_PASS = Trim(Mid(MSG, InStr(MSG, ",") + 1))
    'MsgBox "[" & IN_ID & "] [" & IN_PASS & "]"
    
    frmMain.Text1.Text = IN_ID
    IN_ID = frmMain.Text1.Text
    
    frmMain.Text1.Text = IN_PASS
    IN_PASS = frmMain.Text1.Text
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If UserRecord.Fields(0) = IN_ID And UserRecord.Fields(1) = IN_PASS Then
            For j = 0 To 50 '중복로그인 확인
                If iUser(j).NAME = IN_ID Then
                    Exit Function
                End If
            Next j
            iUser(UserNumber).NAME = IN_ID '접속자 아이디 적용
            RefreshConnectedUser '접속자목록 갱신
            Exit Function
        End If
    UserRecord.MoveNext
    Next i
    
Err:
    If Err = 91 Then SetNotice "데이터베이스가 열려있지 않아 로그인처리를 할 수 없습니다."
End Function
