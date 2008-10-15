VERSION 5.00
Begin VB.Form frmSetProcessTimer 
   BorderStyle     =   1  '단일 고정
   Caption         =   "요청메시지 처리 시간간격 설정"
   ClientHeight    =   1695
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4095
   Icon            =   "frmSetProcessTimer.frx":0000
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
      Begin VB.ComboBox TimeList 
         Height          =   300
         ItemData        =   "frmSetProcessTimer.frx":058A
         Left            =   1680
         List            =   "frmSetProcessTimer.frx":05CD
         Style           =   2  '드롭다운 목록
         TabIndex        =   0
         Top             =   300
         Width           =   1695
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "처리 시간간격 :"
         Height          =   180
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   1260
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
      Caption         =   "확인"
      IconAlign       =   1
      Tooltiptitle    =   ""
      ToolTipIcon     =   0
      ToolTipType     =   0
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
      Caption         =   "취소"
      IconAlign       =   1
      Tooltiptitle    =   ""
      ToolTipIcon     =   0
      ToolTipType     =   0
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
Attribute VB_Name = "frmSetProcessTimer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CancelButton_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    TimeList.ListIndex = 12
End Sub

Private Sub OKButton_Click()
    AddLog "SERVER > 요청메시지처리 시간간격 조절 " & TimeList.Text
    frmMain.ProcessTimer.Interval = Val(TimeList.Text)
    Unload Me
End Sub
