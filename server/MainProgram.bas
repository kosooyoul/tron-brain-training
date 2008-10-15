Attribute VB_Name = "MainProgram"
Option Explicit
Public Parts(2) As String
Public PortNumber As Integer
Public LogFilePath As String

Function InitPublicValue()
    Parts(0) = "계산"
    Parts(1) = "공간"
    Parts(2) = "암기"
End Function
        
Function AddLog(Behavior As String) '로그
    frmMain.LogList1.AddItem Now & " > " & Behavior
    frmMain.LogList1.ListIndex = frmMain.LogList1.ListCount - 1
End Function

Function SetNotice(Notice As String)
    frmMain.Notice.Caption = Notice
    frmMain.Notice.ForeColor = RGB(255, 0, 0)
End Function

