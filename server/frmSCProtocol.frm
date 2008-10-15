VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmSCProtocol 
   BorderStyle     =   1  '단일 고정
   Caption         =   "서버-클라이언트간 메시지 형식"
   ClientHeight    =   5655
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8655
   Icon            =   "frmSCProtocol.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   8655
   StartUpPosition =   2  '화면 가운데
   Begin TabDlg.SSTab SSTab1 
      Height          =   4935
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8415
      _ExtentX        =   14843
      _ExtentY        =   8705
      _Version        =   393216
      Style           =   1
      Tabs            =   2
      TabHeight       =   520
      TabCaption(0)   =   "클라이언트 -> 서버"
      TabPicture(0)   =   "frmSCProtocol.frx":058A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "CS1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "서버 -> 클라이언트"
      TabPicture(1)   =   "frmSCProtocol.frx":05A6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "SC2"
      Tab(1).ControlCount=   1
      Begin VB.TextBox CS1 
         Height          =   4335
         Left            =   120
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  '수직
         TabIndex        =   2
         Top             =   480
         Width           =   8175
      End
      Begin VB.TextBox SC2 
         Height          =   4335
         Left            =   -74880
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  '수직
         TabIndex        =   3
         Top             =   480
         Width           =   8175
      End
   End
   Begin 게임정보관리서버.isButton OKButton 
      Height          =   345
      Left            =   7320
      TabIndex        =   1
      Top             =   5160
      Width           =   1215
      _ExtentX        =   2143
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
Attribute VB_Name = "frmSCProtocol"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Call LoadCS 'Client->
    Call LoadSC 'Server->
End Sub

Private Sub OKButton_Click()
    Unload Me
End Sub

Function LoadCS()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    Dim Temp As String
    On Error GoTo Err:
    
    Temp = "* 클라이언트가 서버에게 요청하는 메시지" & vbCrLf
    filename = App.Path & "\clienttoserver.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        Temp = Temp & vbCrLf & ftemp
    Loop
        CS1.Text = Temp
    
    Close filenumber '파일을 닫는다.
    
Err:
    If Err.Number = 53 Then MsgBox "파일을 찾을 수 없습니다." & vbCrLf & filename
End Function
    
Function LoadSC()
    Dim filenumber As Integer '파일번호
    Dim filename As String '파일이름
    Dim ftemp As String '파일내용
    Dim Temp As String
    On Error GoTo Err:
    
    Temp = "* 서버가 클라이언트에게 답하는 메시지" & vbCrLf
    filename = App.Path & "\servertoclient.txt"
    filenumber = FreeFile '사용가능한 파일번호를 구하고
    '파일을 Input 모드(읽기 전용)로 연다.
    Open filename For Input As filenumber

    Do Until EOF(filenumber)
        '줄단위로 파일 끝가지 ftemp 라는 변수로 읽어 들인다.
        Line Input #filenumber, ftemp
        Temp = Temp & vbCrLf & ftemp
    Loop
        SC2.Text = Temp
    
    Close filenumber '파일을 닫는다.
    
Err:
    If Err.Number = 53 Then MsgBox "파일을 찾을 수 없습니다." & vbCrLf & filename
End Function

