VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  '단일 고정
   Caption         =   "사용자 로그인"
   ClientHeight    =   3855
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3630
   ControlBox      =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3855
   ScaleWidth      =   3630
   StartUpPosition =   1  '소유자 가운데
   Begin VB.CommandButton Command4 
      Caption         =   "사용자 등록"
      Height          =   375
      Left            =   600
      TabIndex        =   8
      Top             =   3120
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "아이디 / 암호찾기"
      Height          =   375
      Left            =   600
      TabIndex        =   7
      Top             =   2640
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "종료"
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "로그인"
      Height          =   375
      Left            =   600
      TabIndex        =   5
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "로그인"
      Height          =   1695
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3135
      Begin VB.TextBox Text2 
         Height          =   270
         Left            =   1080
         TabIndex        =   2
         Top             =   960
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         Height          =   270
         Left            =   1080
         TabIndex        =   1
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label Label2 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "암호 :"
         Height          =   180
         Left            =   480
         TabIndex        =   4
         Top             =   1020
         Width           =   480
      End
      Begin VB.Label Label1 
         Alignment       =   1  '오른쪽 맞춤
         Caption         =   "아이디 :"
         Height          =   180
         Left            =   300
         TabIndex        =   3
         Top             =   540
         Width           =   660
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form3.Show
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Command3_Click()
Form2.Show vbModal
End Sub

Private Sub Command4_Click()
Form4.Show vbModal
End Sub
