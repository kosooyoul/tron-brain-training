VERSION 5.00
Begin VB.Form frmIndex 
   BorderStyle     =   0  '없음
   Caption         =   "정보 관리 서버"
   ClientHeight    =   2655
   ClientLeft      =   0
   ClientTop       =   -105
   ClientWidth     =   6255
   ControlBox      =   0   'False
   Icon            =   "frmIndex.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2655
   ScaleWidth      =   6255
   StartUpPosition =   2  '화면 가운데
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   5400
      Top             =   2040
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000005&
      BorderStyle     =   0  '없음
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6015
      Begin VB.Image Image1 
         Height          =   480
         Left            =   240
         Picture         =   "frmIndex.frx":08CA
         Top             =   240
         Width           =   480
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Server for Training Game in T-Engine"
         Height          =   180
         Left            =   840
         TabIndex        =   4
         Top             =   1080
         Width           =   3195
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
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Server for Game Management Information"
         ForeColor       =   &H80000010&
         Height          =   180
         Left            =   840
         TabIndex        =   2
         Top             =   600
         Width           =   3540
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Copyright 2008 www.Ahyane.net && Semyung Univ. ICS 08."
         ForeColor       =   &H80000010&
         Height          =   180
         Left            =   840
         TabIndex        =   1
         Top             =   1800
         Width           =   4950
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000010&
         X1              =   0
         X2              =   7095
         Y1              =   2145
         Y2              =   2145
      End
   End
   Begin VB.Shape Shape1 
      Height          =   2655
      Left            =   0
      Top             =   0
      Width           =   6255
   End
End
Attribute VB_Name = "frmIndex"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'2008년 세명대학교 정보통신학과 03학번 고수열
'TCP/IP 서버구현
'데이터베이스 연결 및 쿼리문 작성
'www.ahyane.net
Option Explicit

Private Sub Form_Load()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    On Error GoTo Err:
    
    filename = App.Path & "\option.dat"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        
        ftemp = Trim(ftemp)
        
        If LCase(Left(ftemp, 11)) = "portnumber=" Then
            PortNumber = Val(Mid(ftemp, 12))
        ElseIf LCase(Left(ftemp, 12)) = "logfilepath=" Then
            LogFilePath = Trim(Mid(ftemp, 13))
        End If
    Loop

    Close filenumber '파일을 닫는다.
    
Err:
    If Err.Number = 53 Then
        MsgBox "설정파일을 찾을 수 없습니다." & vbCrLf & filename
        PortNumber = 20001
        LogFilePath = App.Path & "\log.txt"
    End If
    
End Sub

Private Sub Frame1_Click()
    Call Timer1_Timer
End Sub

Private Sub Timer1_Timer()
    Load frmMain
    Unload Me
End Sub
