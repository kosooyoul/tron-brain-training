VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmServer 
   BorderStyle     =   1  '단일 고정
   Caption         =   "서버 상태"
   ClientHeight    =   5445
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9210
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5445
   ScaleWidth      =   9210
   Begin VB.ListBox ConnectedUserList1 
      Height          =   4200
      Left            =   240
      TabIndex        =   8
      Top             =   600
      Width           =   3855
   End
   Begin MSWinsockLib.Winsock wsServer 
      Index           =   0
      Left            =   5760
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command6 
      Caption         =   "접속종료"
      Height          =   495
      Left            =   4320
      TabIndex        =   6
      Top             =   3600
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "정보보기"
      Height          =   495
      Left            =   4320
      TabIndex        =   4
      Top             =   3120
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Caption         =   "접속자 목록"
      Height          =   4815
      Left            =   120
      TabIndex        =   7
      Top             =   240
      Width           =   4095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "새로고침"
      Height          =   495
      Left            =   4320
      TabIndex        =   5
      Top             =   2640
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "전송"
      Height          =   375
      Left            =   7680
      TabIndex        =   3
      Top             =   4080
      Width           =   735
   End
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   4320
      TabIndex        =   2
      Top             =   4200
      Width           =   3375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "서버닫기"
      Height          =   615
      Left            =   4320
      TabIndex        =   1
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "서버열기"
      Height          =   615
      Left            =   4320
      TabIndex        =   0
      Top             =   600
      Width           =   1815
   End
End
Attribute VB_Name = "frmServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'----------------------------------------------------------------------------------------
Private Sub Command1_Click()
    OpenServer (0)
End Sub

Private Sub Command2_Click()
    CloseServer (0)
End Sub

Private Sub Command3_Click()
    Dim i As Integer
    If ConnectedUserList1.ListIndex < 0 Or Trim(Text2.Text) = "" Then Exit Sub
    i = Left(ConnectedUserList1.List(ConnectedUserList1.ListIndex), InStr(ConnectedUserList1.List(ConnectedUserList1.ListIndex), "#") - 1)
    ServerToClient i, Text2.Text
    Text2.Text = ""
End Sub

Private Sub Command4_Click()
    Dim TempIndex As Integer
    TempIndex = Val(ConnectedUserList1.List(ConnectedUserList1.ListIndex))
    frmUserInfo.Show
    frmUserInfo.ShowUserInfo (TempIndex)
End Sub

Private Sub Command6_Click()
    Dim TempIndex As Integer
    TempIndex = Val(ConnectedUserList1.List(ConnectedUserList1.ListIndex))
    If TempIndex > 0 Then Call wsServer_Close(TempIndex)
End Sub

Private Sub Form_Load()
    SetServer
End Sub


Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then Call Command3_Click
End Sub
