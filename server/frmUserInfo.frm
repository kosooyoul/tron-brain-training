VERSION 5.00
Begin VB.Form frmUserInfo 
   BorderStyle     =   1  '단일 고정
   Caption         =   "접속자 정보"
   ClientHeight    =   7950
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7575
   Icon            =   "frmUserInfo.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7950
   ScaleWidth      =   7575
   StartUpPosition =   2  '화면 가운데
   Begin VB.ListBox List1 
      Height          =   3120
      ItemData        =   "frmUserInfo.frx":058A
      Left            =   240
      List            =   "frmUserInfo.frx":058C
      TabIndex        =   18
      Top             =   4200
      Width           =   4575
   End
   Begin VB.Frame Frame1 
      Caption         =   "접속 정보"
      Height          =   1455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3615
      Begin VB.Label ConnectInfo 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   180
         Index           =   2
         Left            =   1320
         TabIndex        =   4
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label ConnectInfo 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   180
         Index           =   1
         Left            =   1320
         TabIndex        =   3
         Top             =   720
         Width           =   90
      End
      Begin VB.Label ConnectInfo 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   180
         Index           =   0
         Left            =   1320
         TabIndex        =   2
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Label1 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"frmUserInfo.frx":058E
         Height          =   900
         Left            =   300
         TabIndex        =   1
         Top             =   360
         Width           =   840
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "게임 플레이 정보"
      Height          =   3135
      Left            =   3840
      TabIndex        =   7
      Top             =   120
      Width           =   3615
      Begin VB.Label PlayInfo 
         AutoSize        =   -1  'True
         Caption         =   "NULL"
         Height          =   180
         Index           =   3
         Left            =   1200
         TabIndex        =   15
         Top             =   1800
         Width           =   465
      End
      Begin VB.Label PlayInfo 
         AutoSize        =   -1  'True
         Caption         =   "NULL"
         Height          =   180
         Index           =   2
         Left            =   1200
         TabIndex        =   14
         Top             =   1440
         Width           =   465
      End
      Begin VB.Label PlayInfo 
         AutoSize        =   -1  'True
         Caption         =   "NULL"
         Height          =   180
         Index           =   1
         Left            =   1200
         TabIndex        =   13
         Top             =   1080
         Width           =   465
      End
      Begin VB.Label PlayInfo 
         AutoSize        =   -1  'True
         Caption         =   "NULL"
         Height          =   180
         Index           =   0
         Left            =   1200
         TabIndex        =   12
         Top             =   360
         Width           =   465
      End
      Begin VB.Label Label3 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"frmUserInfo.frx":05B6
         Height          =   1620
         Left            =   270
         TabIndex        =   8
         Top             =   360
         Width           =   840
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "사용자 정보"
      Height          =   1455
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   3615
      Begin VB.Label UserInfo 
         AutoSize        =   -1  'True
         Caption         =   "NULL"
         Height          =   180
         Index           =   2
         Left            =   1200
         TabIndex        =   11
         Top             =   1080
         Width           =   465
      End
      Begin VB.Label UserInfo 
         AutoSize        =   -1  'True
         Caption         =   "NULL"
         Height          =   180
         Index           =   1
         Left            =   1200
         TabIndex        =   10
         Top             =   720
         Width           =   465
      End
      Begin VB.Label UserInfo 
         AutoSize        =   -1  'True
         Caption         =   "Anonymous"
         Height          =   180
         Index           =   0
         Left            =   1200
         TabIndex        =   9
         Top             =   360
         Width           =   1020
      End
      Begin VB.Label Label2 
         Alignment       =   1  '오른쪽 맞춤
         AutoSize        =   -1  'True
         Caption         =   $"frmUserInfo.frx":05F0
         Height          =   900
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Width           =   840
      End
   End
   Begin 정보관리서버.isButton CloseButton 
      Height          =   345
      Left            =   5880
      TabIndex        =   16
      Top             =   3480
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   609
      Icon            =   "frmUserInfo.frx":0614
      Caption         =   "닫기"
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
   Begin 정보관리서버.isButton isButton1 
      Height          =   345
      Left            =   4200
      TabIndex        =   17
      Top             =   3480
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   609
      Icon            =   "frmUserInfo.frx":0630
      Caption         =   "게임 기록 보기"
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
   Begin VB.Line Line2 
      BorderColor     =   &H80000005&
      X1              =   0
      X2              =   7560
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000010&
      BorderWidth     =   2
      X1              =   0
      X2              =   7560
      Y1              =   3360
      Y2              =   3360
   End
End
Attribute VB_Name = "frmUserInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Function ShowUserInfo(UserNumber As Integer)
    Dim i As Integer, j As Integer
    
    Me.Caption = "접속자 정보 - [ " & iUser(UserNumber).Name & "(" & iUser(UserNumber).RequestID & ") ]"
    ConnectInfo(0).Caption = UserNumber
    ConnectInfo(1).Caption = iUser(UserNumber).Name
    ConnectInfo(2).Caption = iUser(UserNumber).RequestID
    
    On Error GoTo Err
    UserRecord.MoveFirst
    For i = 0 To UserRecord.RecordCount - 1
        If iUser(UserNumber).Name = UserRecord.Fields(0) Then
            UserInfo(0).Caption = UserRecord.Fields(0)
            UserInfo(1).Caption = UserRecord.Fields(2)
            UserInfo(2).Caption = UserRecord.Fields(3)
            PlayInfo(0).Caption = UserRecord.Fields(4)
            PlayInfo(1).Caption = UserRecord.Fields(5)
            PlayInfo(2).Caption = UserRecord.Fields(6)
            PlayInfo(3).Caption = UserRecord.Fields(7)
            Exit For
        End If
    UserRecord.MoveNext
    Next i
    
    For j = 0 To 2
        RecordRecord(j).MoveFirst
        For i = 0 To UserRecord.RecordCount - 1
            If iUser(UserNumber).Name = RecordRecord(j).Fields(1) Then
                RecordList.AddItem Format(RecordRecord(j).Fields(0), "00000#") & " > " & Format(RecordRecord(j).Fields(2), "yy-mm-dd") & " " & Format(RecordRecord(j).Fields(3), "hh:mm:ss") & " : " & RecordRecord(j).Fields(4) & " 점"
            End If
        RecordRecord(j).MoveNext
        Next i
    Next j
    
    
Err:
    If Err = 3704 Then
        SetNotice "데이터베이스가 로드되지 않았습니다."
        Unload Me
    End If

End Function

Private Sub CloseButton_Click()
    Unload Me
End Sub






Private Sub isButton1_Click()

End Sub
