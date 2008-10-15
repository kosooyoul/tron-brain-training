VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   1  '단일 고정
   Caption         =   "사용자 등록"
   ClientHeight    =   4695
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5055
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   5055
   StartUpPosition =   2  '화면 가운데
   Begin VB.Frame Frame1 
      Height          =   3855
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4815
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   2
         Left            =   1320
         TabIndex        =   15
         Top             =   1560
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   1
         Left            =   1320
         TabIndex        =   14
         Top             =   1080
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   0
         Left            =   1320
         TabIndex        =   7
         Top             =   360
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   3
         Left            =   1320
         TabIndex        =   6
         Top             =   2160
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   4
         Left            =   1320
         TabIndex        =   5
         Top             =   2640
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Index           =   5
         Left            =   1320
         TabIndex        =   4
         Top             =   3120
         Width           =   2055
      End
      Begin VB.CommandButton Command1 
         Caption         =   "중복확인"
         Height          =   375
         Left            =   3480
         TabIndex        =   3
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label1 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "아이디"
         Height          =   180
         Left            =   240
         TabIndex        =   13
         Top             =   480
         Width           =   960
      End
      Begin VB.Label Label2 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "암호"
         Height          =   180
         Left            =   240
         TabIndex        =   12
         Top             =   1200
         Width           =   960
      End
      Begin VB.Label Label3 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "암호 재입력"
         Height          =   180
         Left            =   240
         TabIndex        =   11
         Top             =   1560
         Width           =   960
      End
      Begin VB.Label Label4 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "이름"
         Height          =   180
         Left            =   240
         TabIndex        =   10
         Top             =   2280
         Width           =   960
      End
      Begin VB.Label Label5 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "나이"
         Height          =   180
         Left            =   240
         TabIndex        =   9
         Top             =   2760
         Width           =   960
      End
      Begin VB.Label Label6 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "메일주소"
         Height          =   180
         Left            =   240
         TabIndex        =   8
         Top             =   3240
         Width           =   960
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "취소"
      Height          =   375
      Left            =   3360
      TabIndex        =   1
      Top             =   4080
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "등록완료"
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   4080
      Width           =   1335
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox "사용할 수 있는 아이디입니다. (Ok경우 임시)"
MsgBox Trim(Text1(0).Text) & "는 이미 사용 중인 아이디입니다. (No경우 임시)"
End Sub

Private Sub Command2_Click()
MsgBox "등록하였습니다."
Form1.Text1.Text = Trim(Text1(0).Text)
Unload Me
End Sub

Private Sub Command3_Click()
Unload Me
End Sub
