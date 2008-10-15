Attribute VB_Name = "ConnectDatabase"
Option Explicit

Public Const DataBasePassWord = "Library"                               '데이터베이스 암호
Public UserRecord As ADODB.Recordset                                    '사용자
Public UserConnection As ADODB.Connection
Public RecordRecord(2) As ADODB.Recordset                               '점수목록
Public RecordConnection(2) As ADODB.Connection
Public RecordBase As ADODB.Recordset                                    '점수-나이표
Public RecordBaseConnection As ADODB.Connection

Public Function SetRecordBaseConnection() '데이터베이스연결 - 점수-나이표 테이블
        Set RecordBaseConnection = New ADODB.Connection
        RecordBaseConnection.CursorLocation = adUseClient
        RecordBaseConnection.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "Data Source=" & App.Path & "\Database\Library.mdb;Jet OLEDB:Database Password=" & DataBasePassWord & ";"
End Function

Public Function CloseRecordBaseConnection() '데이터베이스연결해제 - 점수-나이표 테이블
'   If RecordBaseConnection.State <> 0 Then
        On Error GoTo Err:
        RecordBase.Close
        RecordBaseConnection.Close
'   End If
Err:
    If Err = 3219 Then SetNotice "데이터 입력 오류 - 빈칸"
    
End Function

Function ConnectRecordBaseTable(Query As String)  '테이블연결 - 점수-나이표 테이블
    On Error GoTo Err
    Set RecordBase = New ADODB.Recordset
    RecordBase.Open Query, UserConnection, adOpenStatic, adLockOptimistic
'   Set frmUser.UserList.DataSource = RecordBase
'   frmUser.UserList.ReBind
    
Err:
    If Err = -2147467259 Then SetNotice "다른 프로그램에서 작업중인 데이터베이스는 열 수 없습니다."
End Function

Public Function SetUserConnection() '데이터베이스연결 - 사용자 테이블
        Set UserConnection = New ADODB.Connection
        UserConnection.CursorLocation = adUseClient
        UserConnection.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "Data Source=" & App.Path & "\Database\Library.mdb;Jet OLEDB:Database Password=" & DataBasePassWord & ";"
End Function

Public Function CloseUserConnection() '데이터베이스연결해제 - 사용자 테이블
    If UserRecord.State <> 0 Then
        On Error GoTo Err:
        UserRecord.Close
        UserConnection.Close
    End If
Err:
    If Err = 3219 Then SetNotice "데이터 입력 오류 - 빈칸"
    
End Function

Function ConnectUserTable(Query As String)  '테이블연결 - 사용자 테이블
    On Error GoTo Err
    Set UserRecord = New ADODB.Recordset
    UserRecord.Open Query, UserConnection, adOpenStatic, adLockOptimistic
    Set frmUser.UserList.DataSource = UserRecord
    frmUser.UserList.ReBind
    
Err:
    If Err = -2147467259 Then SetNotice "다른 프로그램에서 작업중인 데이터베이스는 열 수 없습니다."
End Function

Public Function SetRecordConnection(Index As Integer)  '데이터베이스연결 - 점수목록 테이블
        Set RecordConnection(Index) = New ADODB.Connection
        RecordConnection(Index).CursorLocation = adUseClient
        RecordConnection(Index).Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;" & "Data Source=" & App.Path & "\Database\Library.mdb;Jet OLEDB:Database Password=" & DataBasePassWord & ";"
End Function

Public Function CloseRecordConnection(Index As Integer)  '데이터베이스연결해제 - 점수목록 테이블
    If RecordRecord(Index).State <> 0 Then
        RecordRecord(Index).Close
        RecordConnection(Index).Close
    End If
End Function

Function ConnectRecordTable(Index As Integer, Query As String)  '테이블연결 - 점수목록 테이블
    On Error GoTo Err
    Set RecordRecord(Index) = New ADODB.Recordset
    RecordRecord(Index).Open Query, RecordConnection(Index), adOpenStatic, adLockOptimistic
    Set frmRecord.RecordList(Index).DataSource = RecordRecord(Index)
    frmRecord.RecordList(Index).ReBind
    
Err:
    If Err = -2147467259 Then SetNotice "다른 프로그램에서 작업중인 데이터베이스는 열 수 없습니다."
End Function

