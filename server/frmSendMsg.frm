VERSION 5.00
Begin VB.Form frmSendMsg 
   BorderStyle     =   1  '단일 고정
   Caption         =   "메시지 전송"
   ClientHeight    =   885
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7260
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   885
   ScaleWidth      =   7260
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "frmSendMsg.frx":0000
      Left            =   120
      List            =   "frmSendMsg.frx":001F
      Style           =   2  '드롭다운 목록
      TabIndex        =   2
      Top             =   120
      Width           =   2175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "전송"
      Height          =   375
      Left            =   6000
      TabIndex        =   1
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   2520
      TabIndex        =   0
      Top             =   240
      Width           =   3375
   End
End
Attribute VB_Name = "frmSendMsg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Combo1_Click()
    Text2.Text = Combo1.Text
End Sub

Private Sub Command3_Click()
    Dim i As Integer
    If frmMain.ConnectedUserList1.ListIndex < 0 Or Trim(Text2.Text) = "" Then Exit Sub
    i = Left(frmMain.ConnectedUserList1.List(frmMain.ConnectedUserList1.ListIndex), InStr(frmMain.ConnectedUserList1.List(frmMain.ConnectedUserList1.ListIndex), "#") - 1)
    frmMain.ServerToClient i, Text2.Text
    Text2.Text = ""
End Sub

Private Sub Form_Load()
    Combo1.ListIndex = 0
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then Call Command3_Click
End Sub
