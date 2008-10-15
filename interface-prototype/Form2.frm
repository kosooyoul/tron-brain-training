VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  '단일 고정
   Caption         =   "아이디 / 암호 찾기"
   ClientHeight    =   3495
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   4215
   StartUpPosition =   1  '소유자 가운데
   Begin VB.CommandButton Command3 
      Caption         =   "닫기"
      Height          =   375
      Left            =   2760
      TabIndex        =   10
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "비밀번호 찾기"
      Height          =   975
      Left            =   120
      TabIndex        =   6
      Top             =   1800
      Width           =   3975
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1080
         TabIndex        =   8
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton Command2 
         Caption         =   "요청"
         Height          =   375
         Left            =   2520
         TabIndex        =   7
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label4 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "아이디"
         Height          =   180
         Left            =   420
         TabIndex        =   9
         Top             =   480
         Width           =   540
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "아이디 찾기"
      Height          =   1455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3975
      Begin VB.CommandButton Command1 
         Caption         =   "확인"
         Height          =   375
         Left            =   2520
         TabIndex        =   5
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1080
         TabIndex        =   4
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1080
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label2 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "메일주소"
         Height          =   180
         Left            =   255
         TabIndex        =   3
         Top             =   960
         Width           =   720
      End
      Begin VB.Label Label1 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "이름"
         Height          =   180
         Left            =   615
         TabIndex        =   2
         Top             =   480
         Width           =   360
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command3_Click()
Unload Me
End Sub
