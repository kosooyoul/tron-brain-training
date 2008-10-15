VERSION 5.00
Begin VB.Form frmProgramInfo 
   BorderStyle     =   1  '단일 고정
   Caption         =   "프로그램 정보"
   ClientHeight    =   2895
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6255
   Icon            =   "frmProgramInfo.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   6255
   StartUpPosition =   2  '화면 가운데
   Begin VB.Frame Frame1 
      BackColor       =   &H80000005&
      BorderStyle     =   0  '없음
      Height          =   2175
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   7095
      Begin VB.Line Line1 
         BorderColor     =   &H80000010&
         X1              =   0
         X2              =   7095
         Y1              =   2145
         Y2              =   2145
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Copyright 2008 www.Ahyane.net && Semyung Univ. ICS 08."
         ForeColor       =   &H80000010&
         Height          =   180
         Left            =   840
         TabIndex        =   5
         Top             =   1800
         Width           =   4950
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Server for Game Management Information"
         ForeColor       =   &H80000010&
         Height          =   180
         Left            =   840
         TabIndex        =   4
         Top             =   600
         Width           =   3540
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Game Information Management Server 1"
         Height          =   180
         Left            =   840
         TabIndex        =   3
         Top             =   360
         Width           =   3420
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Server for Training Game in T-Engine"
         Height          =   180
         Left            =   840
         TabIndex        =   2
         Top             =   1080
         Width           =   3195
      End
      Begin VB.Image Image1 
         Height          =   480
         Left            =   240
         Picture         =   "frmProgramInfo.frx":058A
         Top             =   240
         Width           =   480
      End
   End
   Begin 게임정보관리서버.isButton OKButton 
      Height          =   345
      Left            =   4560
      TabIndex        =   0
      Top             =   2280
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   609
      Caption         =   "닫기"
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
Attribute VB_Name = "frmProgramInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub OKButton_Click()
    Unload Me
End Sub
