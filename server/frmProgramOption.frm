VERSION 5.00
Begin VB.Form frmProgramOption 
   Caption         =   "로그 옵션"
   ClientHeight    =   1935
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6135
   Icon            =   "frmProgramOption.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1935
   ScaleWidth      =   6135
   StartUpPosition =   2  '화면 가운데
   Begin VB.Frame Frame1 
      Caption         =   "로그"
      Height          =   1215
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   5880
      Begin VB.TextBox TimeRate 
         Height          =   270
         Left            =   4320
         TabIndex        =   2
         Text            =   "0"
         Top             =   680
         Width           =   1215
      End
      Begin VB.CheckBox Chk_AutoSave 
         Caption         =   "자동 저장"
         Height          =   180
         Left            =   1200
         TabIndex        =   1
         Top             =   720
         Width           =   1575
      End
      Begin VB.TextBox In_LogFilePath 
         Height          =   300
         Left            =   1200
         TabIndex        =   0
         Top             =   300
         Width           =   4335
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "주기 :"
         Height          =   180
         Left            =   3720
         TabIndex        =   7
         Top             =   720
         Width           =   480
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "파일 경로 :"
         Height          =   180
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Width           =   900
      End
   End
   Begin 게임정보관리서버.isButton OKButton 
      Height          =   345
      Left            =   3480
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   609
      Icon            =   "frmProgramOption.frx":058A
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
      Left            =   4800
      TabIndex        =   4
      Top             =   1440
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   609
      Icon            =   "frmProgramOption.frx":05A6
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
Attribute VB_Name = "frmProgramOption"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub CancelButton_Click()
    Unload Me
End Sub

Private Sub Chk_AutoSave_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then Call OKButton_Click
    If KeyCode = vbKeyEscape Then Unload Me
End Sub

Private Sub Form_Load()
    TimeRate.Text = frmMain.AutoSaveLogTimer.Interval
    If frmMain.AutoSaveLogTimer.Enabled Then
        Chk_AutoSave.Value = 1
    Else
        Chk_AutoSave.Value = 0
    End If
    If Trim(LogFilePath) = "" Then
        In_LogFilePath.Text = App.Path & "\log.txt"
    Else
        In_LogFilePath.Text = Trim(LogFilePath)
    End If
    
End Sub

Private Sub In_LogFilePath_Change()
    If Trim(In_LogFilePath.Text) = "" Then
        In_LogFilePath.Text = App.Path & "\log.txt"
    End If
End Sub

Private Sub In_LogFilePath_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then Call OKButton_Click
    If KeyCode = vbKeyEscape Then Unload Me
End Sub

Private Sub OKButton_Click()
    Dim filenumber As Integer

    filenumber = FreeFile
   
    On Error GoTo Err
    
    Open Trim(In_LogFilePath.Text) For Output As filenumber
    Close filenumber

    LogFilePath = Trim(In_LogFilePath.Text)
    frmMain.AutoSaveLogTimer.Interval = Val(TimeRate.Text)
    frmMain.AutoSaveLogTimer.Enabled = Chk_AutoSave.Value
    
    Call frmMain.SaveOption
    Unload Me
    
Err:
    If Err.Number = 76 Or Err.Number = 52 Then
        MsgBox "잘못된 경로 입니다."
        In_LogFilePath.Text = App.Path & "\log.txt"
    End If
End Sub

Private Sub TimeRate_Change()
    If Val(TimeRate.Text) > 65535 Then TimeRate.Text = 65535
    TimeRate.ToolTipText = "약 " & Val(TimeRate.Text) / 1000 & "초"
End Sub

Private Sub TimeRate_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then Call OKButton_Click
    If KeyCode = vbKeyEscape Then Unload Me
End Sub
