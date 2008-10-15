Attribute VB_Name = "RequestModule"
Option Explicit

Public Type RequestList
    message(50) As String
    FrontIndex As Integer
    EndIndex As Integer
    CurrentRequest As String
End Type

Public Request1 As RequestList

Function ResetRequest() '초기화
    Dim i As Integer
    
    For i = 0 To 50
        Request1.message(i) = ""
    Next i
    
    Request1.FrontIndex = 50
    Request1.EndIndex = 0
    Request1.CurrentRequest = ""
    
    ViewRequestCount
End Function

Function AddRequest(RequestMessage As String) '요청메시지삽입
    If Request1.FrontIndex <> Request1.EndIndex Then
        Request1.message(Request1.EndIndex) = RequestMessage
        
        If Request1.EndIndex = 50 Then
            Request1.EndIndex = 0
        Else
            Request1.EndIndex = Request1.EndIndex + 1
        End If
    Else
        AddLog "SERVER > 더 이상 요청메시지가 들어갈 공간이 없으므로 무시."
        '요청목록이 꽉차있는 경우
    End If
    
    ViewRequestCount
End Function

Function GetRequest() '요청메시지꺼냄
    Dim TempIndex As Integer
    
    If Request1.FrontIndex = 50 Then
        TempIndex = 0
    Else
        TempIndex = Request1.FrontIndex + 1
    End If
    
    If TempIndex <> Request1.EndIndex Then
        If Request1.FrontIndex = 50 Then
            Request1.FrontIndex = 0
        Else
            Request1.FrontIndex = Request1.FrontIndex + 1
        End If
        
        Request1.CurrentRequest = Request1.message(Request1.FrontIndex)
        Request1.message(Request1.FrontIndex) = ""
    Else
        '요청목록이 없는 경우
    End If
    
    ViewRequestCount
End Function

Function GetCurrentRequest()
    GetCurrentRequest = Request1.CurrentRequest
    Request1.CurrentRequest = ""
End Function

Function ViewRequestCount()
    frmMain.RequestCount.Caption = "Front : " & Request1.FrontIndex & ", End : " & Request1.EndIndex
End Function
