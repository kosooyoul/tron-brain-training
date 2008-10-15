VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  '단일 고정
   Caption         =   "머리 굴리기"
   ClientHeight    =   4350
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4230
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   290
   ScaleMode       =   3  '픽셀
   ScaleWidth      =   282
   StartUpPosition =   1  '소유자 가운데
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Height          =   4335
      Index           =   0
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4215
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         Height          =   1695
         Index           =   0
         Left            =   360
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Label1 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "머리 굴리기"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   15
         Left            =   1290
         TabIndex        =   39
         Top             =   240
         Width           =   1650
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "나의 머리"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   2
         Left            =   1440
         TabIndex        =   3
         Top             =   3480
         Width           =   1350
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "연습 하기"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   1
         Left            =   1440
         TabIndex        =   2
         Top             =   3000
         Width           =   1350
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "기록 도전"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   0
         Left            =   1440
         TabIndex        =   1
         Top             =   2520
         Width           =   1350
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  '평면
      BackColor       =   &H00800000&
      BorderStyle     =   0  '없음
      Caption         =   "Frame2"
      ForeColor       =   &H00FFFFFF&
      Height          =   4335
      Index           =   4
      Left            =   0
      TabIndex        =   42
      Top             =   0
      Visible         =   0   'False
      Width           =   4215
      Begin VB.Label Label6 
         Caption         =   "Label6"
         Height          =   255
         Left            =   960
         TabIndex        =   46
         Top             =   1920
         Width           =   2175
      End
      Begin VB.Label Label5 
         Caption         =   "Label5"
         Height          =   255
         Left            =   960
         TabIndex        =   45
         Top             =   1560
         Width           =   2175
      End
      Begin VB.Label Label4 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H00FFFFFF&
         Caption         =   "게임 플레이 화면"
         Height          =   1335
         Left            =   360
         TabIndex        =   44
         Top             =   1200
         Width           =   3375
      End
      Begin VB.Label Label00 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "BacK"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   2
         Left            =   3000
         TabIndex        =   43
         Top             =   3720
         Width           =   795
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Height          =   4335
      Index           =   3
      Left            =   0
      TabIndex        =   12
      Top             =   0
      Visible         =   0   'False
      Width           =   4215
      Begin VB.Label Label00 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "BacK"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   1
         Left            =   3000
         TabIndex        =   36
         Top             =   3720
         Width           =   795
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   9
         Left            =   360
         TabIndex        =   35
         Top             =   3360
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   8
         Left            =   360
         TabIndex        =   34
         Top             =   3120
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   7
         Left            =   360
         TabIndex        =   33
         Top             =   2880
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   6
         Left            =   360
         TabIndex        =   32
         Top             =   2640
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   5
         Left            =   360
         TabIndex        =   31
         Top             =   2400
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   4
         Left            =   360
         TabIndex        =   30
         Top             =   2160
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   3
         Left            =   360
         TabIndex        =   29
         Top             =   1920
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   2
         Left            =   360
         TabIndex        =   28
         Top             =   1680
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   1
         Left            =   360
         TabIndex        =   27
         Top             =   1440
         Width           =   720
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "07/03/01"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   0
         Left            =   360
         TabIndex        =   26
         Top             =   1200
         Width           =   720
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   9
         Left            =   1200
         TabIndex        =   25
         Top             =   3360
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   8
         Left            =   1200
         TabIndex        =   24
         Top             =   3120
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   7
         Left            =   1200
         TabIndex        =   23
         Top             =   2880
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   6
         Left            =   1200
         TabIndex        =   22
         Top             =   2640
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   5
         Left            =   1200
         TabIndex        =   21
         Top             =   2400
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   4
         Left            =   1200
         TabIndex        =   20
         Top             =   2160
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   3
         Left            =   1200
         TabIndex        =   19
         Top             =   1920
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "100 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   2
         Left            =   1200
         TabIndex        =   18
         Top             =   1680
         Width           =   2505
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "80 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   1
         Left            =   1200
         TabIndex        =   17
         Top             =   1440
         Width           =   2000
      End
      Begin VB.Label Label2 
         Alignment       =   2  '가운데 맞춤
         BackColor       =   &H0000FFFF&
         Caption         =   "50 점"
         BeginProperty Font 
            Name            =   "굴림"
            Size            =   8.25
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   150
         Index           =   0
         Left            =   1200
         TabIndex        =   16
         Top             =   1200
         Width           =   1250
      End
      Begin VB.Label selScoreL 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "<"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Left            =   240
         TabIndex        =   15
         Top             =   240
         Width           =   165
      End
      Begin VB.Label selScoreListName 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "계산능력"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Left            =   1485
         TabIndex        =   14
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label selScoreR 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   ">"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Left            =   3840
         TabIndex        =   13
         Top             =   240
         Width           =   165
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Height          =   4335
      Index           =   2
      Left            =   0
      TabIndex        =   8
      Top             =   0
      Visible         =   0   'False
      Width           =   4215
      Begin VB.Label Label000 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "BacK"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   0
         Left            =   3000
         TabIndex        =   41
         Top             =   3720
         Width           =   795
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         Height          =   1695
         Index           =   2
         Left            =   360
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Label1 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "난이도"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   14
         Left            =   1620
         TabIndex        =   38
         Top             =   240
         Width           =   900
      End
      Begin VB.Label Difc 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Expert"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   2
         Left            =   1545
         TabIndex        =   11
         Top             =   3480
         Width           =   1095
      End
      Begin VB.Label Difc 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Nomal"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   1
         Left            =   1560
         TabIndex        =   10
         Top             =   3000
         Width           =   1065
      End
      Begin VB.Label Difc 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "Easy"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   0
         Left            =   1695
         TabIndex        =   9
         Top             =   2520
         Width           =   795
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Height          =   4335
      Index           =   1
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Visible         =   0   'False
      Width           =   4215
      Begin VB.Label Label00 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "BacK"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   0
         Left            =   3000
         TabIndex        =   40
         Top             =   3720
         Width           =   795
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         Height          =   1695
         Index           =   1
         Left            =   360
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label MO 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "기록 도전"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Left            =   1440
         TabIndex        =   37
         Top             =   240
         Width           =   1350
      End
      Begin VB.Label selGame 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "계산 능력"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   0
         Left            =   1080
         TabIndex        =   7
         Top             =   2520
         Width           =   2100
      End
      Begin VB.Label selGame 
         Alignment       =   2  '가운데 맞춤
         BackStyle       =   0  '투명
         Caption         =   "공간 지각 능력"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   1
         Left            =   1080
         TabIndex        =   6
         Top             =   3000
         Width           =   2100
      End
      Begin VB.Label selGame 
         Alignment       =   2  '가운데 맞춤
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "암기 능력"
         BeginProperty Font 
            Name            =   "해뜰날l"
            Size            =   18
            Charset         =   129
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   360
         Index           =   2
         Left            =   1080
         TabIndex        =   5
         Top             =   3480
         Width           =   2100
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim GMode As Integer
Dim SelectedGame As Integer
Dim Difficulty As Integer
Dim selScoreList As Integer

Private Sub Difc_Click(Index As Integer)
Difficulty = Index
Frame1(2).Visible = False
Frame1(4).Visible = True
Label5.Caption = "선택 게임 : " & selGame(SelectedGame).Caption
Label6.Caption = "난  이  도 : " & Difc(Difficulty).Caption
End Sub

Private Sub Form_Load()
Unload Form1
End Sub

Private Sub Label00_Click(Index As Integer)
Frame1(4).Visible = False
Frame1(3).Visible = False
Frame1(1).Visible = False
Frame1(0).Visible = True
GMode = 0
End Sub

Private Sub Label000_Click(Index As Integer)
Frame1(2).Visible = False
Frame1(1).Visible = True
End Sub

Private Sub Label1_Click(Index As Integer)
GMode = Index + 1

Frame1(0).Visible = False
Select Case GMode
    Case 1
        Frame1(1).Visible = True
        MO.Caption = "기록 도전"
        Difficulty = 4
    Case 2
        Frame1(1).Visible = True
        MO.Caption = "연습 하기"
    Case 3
        Frame1(3).Visible = True
End Select

End Sub

Private Sub selGame_Click(Index As Integer)
If GMode = 2 Then
    SelectedGame = Index
    Frame1(1).Visible = False
    Frame1(2).Visible = True
Else
Frame1(4).Visible = True
Label5.Caption = "선택 게임 : " & selGame(SelectedGame).Caption
Label6.Caption = "난  이  도 : 없음"
End If

End Sub

Private Sub selScoreL_Click()
selScoreList = selScoreList - 1
If selScoreList <= -1 Then selScoreList = 2
selScoreListName.Caption = selGame(selScoreList).Caption
End Sub

Private Sub selScoreR_Click()
selScoreList = selScoreList + 1
If selScoreList >= 3 Then selScoreList = 0
selScoreListName.Caption = selGame(selScoreList).Caption
End Sub
