VERSION 5.00
Begin VB.Form frmSetServer 
   BorderStyle     =   1  '단일 고정
   Caption         =   "포트 설정"
   ClientHeight    =   1695
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4095
   Icon            =   "frmSetServer.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1695
   ScaleWidth      =   4095
   StartUpPosition =   2  '화면 가운데
   Begin VB.Frame Frame1 
      Height          =   855
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   3840
      Begin VB.TextBox In_PortNumber 
         Height          =   300
         Left            =   1920
         TabIndex        =   0
         Top             =   300
         Width           =   1455
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "사용 할 포트 번호 :"
         Height          =   180
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   1560
      End
   End
   Begin 게임정보관리서버.isButton OKButton 
      Height          =   345
      Left            =   1440
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   609
      Icon            =   "frmSetServer.frx":058A
      Caption         =   "확인"
      IconAlign       =   1
      iNonThemeStyle  =   0
      Tooltiptitle    =   ""
      ToolTipIcon     =   0
      ToolTipType     =   0
      ttForeColor     =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin 게임정보관리서버.isButton CancelButton 
      Height          =   345
      Left            =   2760
      TabIndex        =   2
      Top             =   1080
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   609
      Icon            =   "frmSetServer.frx":05A6
      Caption         =   "취소"
      IconAlign       =   1
      iNonThemeStyle  =   0
      Tooltiptitle    =   ""
      ToolTipIcon     =   0
      ToolTipType     =   0
      ttForeColor     =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frmSetServer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub CancelButton_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    In_PortNumber.Text = PortNumber
End Sub

Private Sub In_PortNumber_Change()
    In_PortNumber.Text = Val(Trim(In_PortNumber.Text))
    If Val(In_PortNumber.Text) > 32767 Then
        In_PortNumber.Text = 32767
    End If
End Sub

Private Sub In_PortNumber_GotFocus()
    In_PortNumber.SelStart = 0
    In_PortNumber.SelLength = Len(In_PortNumber.Text)
End Sub

Private Sub In_PortNumber_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then Call OKButton_Click
    If KeyCode = vbKeyEscape Then Unload Me
End Sub

Private Sub OKButton_Click()
    If frmMain.wsServer(0).State = 0 Then
        PortNumber = Val(In_PortNumber.Text)
    Else
        frmMain.CloseServer (0)
        PortNumber = Val(In_PortNumber.Text)
        frmMain.OpenServer (0)
    End If
    
    Call frmMain.SaveOption
    
    Unload Me
End Sub
