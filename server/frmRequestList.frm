VERSION 5.00
Begin VB.Form frmRequestList 
   BorderStyle     =   1  '단일 고정
   Caption         =   "클라이언트 요청 메시지 목록"
   ClientHeight    =   5340
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8295
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5340
   ScaleWidth      =   8295
   StartUpPosition =   3  'Windows 기본값
   Begin VB.ListBox RequestList1 
      Height          =   5100
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   5895
   End
   Begin VB.CommandButton Command6 
      Caption         =   "요청 메시지 목록 보기"
      Height          =   615
      Left            =   6000
      TabIndex        =   2
      Top             =   240
      Width           =   2055
   End
   Begin VB.CommandButton Command7 
      Caption         =   "요청 메시지 목록 리셋"
      Height          =   615
      Left            =   6000
      TabIndex        =   1
      Top             =   960
      Width           =   2055
   End
   Begin VB.CommandButton Command8 
      Caption         =   "임의 꺼내기"
      Height          =   615
      Left            =   6000
      TabIndex        =   0
      Top             =   1680
      Width           =   2055
   End
End
Attribute VB_Name = "frmRequestList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command6_Click()
    Dim i As Integer
    RequestList1.Clear
    For i = 0 To 50
    RequestList1.AddItem (i & " : " & Request1.message(i))
    Next i
End Sub

Private Sub Command7_Click()
    ResetRequest
End Sub

Private Sub Command8_Click()
    Dim a As VbMsgBoxResult
    a = MsgBox(Request1.FrontIndex & " :::: " & Request1.EndIndex, vbOKCancel)
    If a = vbOK Then
    GetRequest
    MsgBox "a::::" & Request1.CurrentRequest
    End If
End Sub
