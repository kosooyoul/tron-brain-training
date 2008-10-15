VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{38911DA0-E448-11D0-84A3-00DD01104159}#1.1#0"; "COMCT332.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmServerMain 
   BackColor       =   &H00000000&
   Caption         =   "정보 관리 서버"
   ClientHeight    =   9090
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   12585
   LinkTopic       =   "Form1"
   ScaleHeight     =   9090
   ScaleWidth      =   12585
   StartUpPosition =   3  'Windows 기본값
   Begin VB.PictureBox FrameBottom 
      Align           =   2  '아래 맞춤
      BorderStyle     =   0  '없음
      Height          =   1890
      Left            =   0
      ScaleHeight     =   1890
      ScaleWidth      =   12585
      TabIndex        =   20
      Top             =   6510
      Width           =   12585
      Begin VB.ListBox LogList1 
         Height          =   1320
         Left            =   0
         TabIndex        =   23
         Top             =   570
         Width           =   12855
      End
      Begin ComCtl3.CoolBar CoolBar4 
         Height          =   390
         Left            =   0
         TabIndex        =   21
         Top             =   150
         Width           =   12855
         _ExtentX        =   22675
         _ExtentY        =   688
         BandCount       =   1
         _CBWidth        =   12855
         _CBHeight       =   390
         _Version        =   "6.0.8169"
         Child1          =   "Toolbar4"
         MinHeight1      =   330
         Width1          =   2535
         NewRow1         =   0   'False
         Begin MSComctlLib.Toolbar Toolbar4 
            Height          =   330
            Left            =   30
            TabIndex        =   22
            Top             =   30
            Width           =   12735
            _ExtentX        =   22463
            _ExtentY        =   582
            ButtonWidth     =   609
            ButtonHeight    =   582
            Style           =   1
            ImageList       =   "ImageList2"
            _Version        =   393216
            BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
               NumButtons      =   3
               BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Object.ToolTipText     =   "로그 저장"
                  Object.Tag             =   "28"
                  ImageIndex      =   28
               EndProperty
               BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Object.ToolTipText     =   "메시지 입력"
                  Object.Tag             =   "25"
                  ImageIndex      =   25
               EndProperty
               BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               EndProperty
            EndProperty
         End
      End
      Begin VB.Label LeftFrameDrag 
         Alignment       =   2  '가운데 맞춤
         BackStyle       =   0  '투명
         Caption         =   "----- DRAG -----"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000010&
         Height          =   255
         Index           =   3
         Left            =   -600
         MousePointer    =   7  'N S크기 조정
         TabIndex        =   24
         Top             =   -45
         Width           =   12855
      End
      Begin VB.Line Line5 
         BorderColor     =   &H80000005&
         X1              =   0
         X2              =   12855
         Y1              =   90
         Y2              =   90
      End
      Begin VB.Line Line6 
         BorderColor     =   &H80000010&
         X1              =   -360
         X2              =   12495
         Y1              =   45
         Y2              =   45
      End
   End
   Begin VB.PictureBox FrameLeft1 
      Align           =   3  '왼쪽 맞춤
      BorderStyle     =   0  '없음
      Height          =   6120
      Left            =   0
      ScaleHeight     =   6120
      ScaleWidth      =   3900
      TabIndex        =   7
      Top             =   390
      Width           =   3900
      Begin VB.ListBox RequestList1 
         Height          =   2400
         Left            =   0
         TabIndex        =   9
         Top             =   3420
         Width           =   3735
      End
      Begin VB.ListBox ConnectedUserList1 
         Height          =   2400
         ItemData        =   "frmServerMain.frx":0000
         Left            =   0
         List            =   "frmServerMain.frx":0002
         TabIndex        =   8
         Top             =   450
         Width           =   3735
      End
      Begin ComCtl3.CoolBar CoolBar2 
         Height          =   390
         Left            =   0
         TabIndex        =   10
         Top             =   30
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   688
         BandCount       =   1
         _CBWidth        =   3735
         _CBHeight       =   390
         _Version        =   "6.0.8169"
         Child1          =   "Toolbar2"
         MinHeight1      =   330
         Width1          =   1455
         NewRow1         =   0   'False
         Begin VB.Frame Frame1 
            BorderStyle     =   0  '없음
            Height          =   180
            Left            =   2610
            TabIndex        =   11
            Top             =   120
            Width           =   975
            Begin VB.Label UserCount 
               Alignment       =   1  '오른쪽 맞춤
               AutoSize        =   -1  'True
               Caption         =   "0 명 접속"
               Height          =   180
               Left            =   240
               TabIndex        =   12
               Top             =   0
               Width           =   750
            End
         End
         Begin MSComctlLib.Toolbar Toolbar2 
            Height          =   330
            Left            =   30
            TabIndex        =   13
            Top             =   30
            Width           =   3615
            _ExtentX        =   6376
            _ExtentY        =   582
            ButtonWidth     =   609
            ButtonHeight    =   582
            AllowCustomize  =   0   'False
            Style           =   1
            ImageList       =   "ImageList2"
            _Version        =   393216
            BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
               NumButtons      =   7
               BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "refresh"
                  Object.ToolTipText     =   "접속자 목록 새로고침"
                  Object.Tag             =   "6"
                  ImageIndex      =   6
               EndProperty
               BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Style           =   3
               EndProperty
               BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "info"
                  Object.ToolTipText     =   "접속자 정보 보기"
                  Object.Tag             =   "1"
                  ImageIndex      =   1
               EndProperty
               BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "close"
                  Object.ToolTipText     =   "접속자 강제 종료"
                  Object.Tag             =   "9"
                  ImageIndex      =   9
               EndProperty
               BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Style           =   3
               EndProperty
               BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "server"
                  Object.ToolTipText     =   "서버 개폐"
                  Object.Tag             =   "8"
                  ImageIndex      =   8
                  Style           =   1
               EndProperty
               BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Style           =   3
               EndProperty
            EndProperty
         End
      End
      Begin ComCtl3.CoolBar CoolBar3 
         Height          =   390
         Left            =   0
         TabIndex        =   14
         Top             =   3000
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   688
         BandCount       =   1
         _CBWidth        =   3735
         _CBHeight       =   390
         _Version        =   "6.0.8169"
         Child1          =   "Toolbar3"
         MinHeight1      =   330
         Width1          =   915
         NewRow1         =   0   'False
         Begin VB.Frame Frame2 
            BorderStyle     =   0  '없음
            Height          =   180
            Left            =   1770
            TabIndex        =   15
            Top             =   120
            Width           =   1785
            Begin VB.Label RequestCount 
               Alignment       =   1  '오른쪽 맞춤
               AutoSize        =   -1  'True
               Caption         =   "Front : 50, End : 0"
               Height          =   180
               Left            =   240
               TabIndex        =   16
               Top             =   0
               Width           =   1500
            End
         End
         Begin MSComctlLib.Toolbar Toolbar3 
            Height          =   330
            Left            =   30
            TabIndex        =   17
            Top             =   30
            Width           =   3615
            _ExtentX        =   6376
            _ExtentY        =   582
            ButtonWidth     =   609
            ButtonHeight    =   582
            Style           =   1
            ImageList       =   "ImageList2"
            _Version        =   393216
            BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
               NumButtons      =   7
               BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "refresh"
                  Object.ToolTipText     =   "요청메시지목록 새로고침"
                  Object.Tag             =   "11"
                  ImageIndex      =   11
               EndProperty
               BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Style           =   3
               EndProperty
               BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "timer"
                  Object.ToolTipText     =   "요청메시지처리 시간 간격 설정"
                  Object.Tag             =   "3"
                  ImageIndex      =   3
               EndProperty
               BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "reset"
                  Object.ToolTipText     =   "요청메시지배열 리셋"
                  Object.Tag             =   "22"
                  ImageIndex      =   22
               EndProperty
               BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Style           =   3
               EndProperty
               BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "stop"
                  Object.ToolTipText     =   "요청메시지처리 동작"
                  Object.Tag             =   "2"
                  ImageIndex      =   2
                  Style           =   1
               EndProperty
               BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
                  Style           =   3
               EndProperty
            EndProperty
         End
      End
      Begin VB.Label LeftFrameDrag 
         Alignment       =   2  '가운데 맞춤
         BackStyle       =   0  '투명
         Caption         =   $"frmServerMain.frx":0004
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000010&
         Height          =   6255
         Index           =   2
         Left            =   3720
         MousePointer    =   9  'W E 크기 조정
         TabIndex        =   28
         Top             =   0
         Width           =   225
      End
      Begin VB.Line Line7 
         BorderColor     =   &H80000010&
         X1              =   3780
         X2              =   3780
         Y1              =   0
         Y2              =   6120
      End
      Begin VB.Label LeftFrameDrag 
         Alignment       =   2  '가운데 맞춤
         BackStyle       =   0  '투명
         Caption         =   "----- DRAG -----"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000010&
         Height          =   255
         Index           =   1
         Left            =   0
         MousePointer    =   7  'N S크기 조정
         TabIndex        =   19
         Top             =   5775
         Width           =   3735
      End
      Begin VB.Label LeftFrameDrag 
         Alignment       =   2  '가운데 맞춤
         BackStyle       =   0  '투명
         Caption         =   "----- DRAG -----"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000010&
         Height          =   255
         Index           =   0
         Left            =   -120
         MousePointer    =   7  'N S크기 조정
         TabIndex        =   18
         Top             =   2805
         Width           =   3735
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000010&
         X1              =   0
         X2              =   3720
         Y1              =   2895
         Y2              =   2895
      End
      Begin VB.Line Line2 
         BorderColor     =   &H80000005&
         X1              =   0
         X2              =   3720
         Y1              =   2940
         Y2              =   2940
      End
      Begin VB.Line Line3 
         BorderColor     =   &H80000010&
         X1              =   0
         X2              =   3720
         Y1              =   5865
         Y2              =   5865
      End
      Begin VB.Line Line4 
         BorderColor     =   &H80000005&
         X1              =   0
         X2              =   3720
         Y1              =   5910
         Y2              =   5910
      End
      Begin VB.Line Line8 
         BorderColor     =   &H80000005&
         X1              =   3840
         X2              =   3840
         Y1              =   0
         Y2              =   6120
      End
   End
   Begin VB.PictureBox FrameBottom1 
      Align           =   2  '아래 맞춤
      BorderStyle     =   0  '없음
      Height          =   690
      Left            =   0
      ScaleHeight     =   690
      ScaleWidth      =   12585
      TabIndex        =   0
      Top             =   8400
      Width           =   12585
      Begin VB.TextBox TargetUser 
         Enabled         =   0   'False
         Height          =   300
         Left            =   2200
         TabIndex        =   4
         Text            =   "수신자"
         Top             =   30
         Width           =   2175
      End
      Begin VB.ComboBox CommandList 
         Height          =   300
         ItemData        =   "frmServerMain.frx":003E
         Left            =   0
         List            =   "frmServerMain.frx":005D
         Style           =   2  '드롭다운 목록
         TabIndex        =   3
         Top             =   30
         Width           =   2175
      End
      Begin VB.TextBox ServerMessage 
         Height          =   300
         Left            =   4410
         TabIndex        =   2
         Top             =   30
         Width           =   7185
      End
      Begin 정보관리서버.isButton SendButton 
         Height          =   300
         Left            =   11640
         TabIndex        =   1
         Top             =   30
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   529
         Icon            =   "frmServerMain.frx":013C
         Caption         =   "전송"
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
      Begin VB.Frame Frame3 
         Height          =   400
         Left            =   0
         TabIndex        =   5
         Top             =   280
         Width           =   12855
         Begin VB.Label Notice 
            Alignment       =   2  '가운데 맞춤
            BackStyle       =   0  '투명
            Caption         =   "Notice"
            ForeColor       =   &H80000010&
            Height          =   180
            Left            =   0
            MouseIcon       =   "frmServerMain.frx":0158
            MousePointer    =   99  '사용자 정의
            TabIndex        =   6
            Top             =   165
            Width           =   12855
         End
      End
   End
   Begin VB.Timer ProcessTimer 
      Enabled         =   0   'False
      Left            =   7080
      Top             =   3720
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   5160
      Top             =   3720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   24
      ImageHeight     =   24
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   20
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":0A22
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":0E66
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":12B6
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":16B1
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":1AAA
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":1ECF
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":22F1
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":26E3
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":2B24
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":2F52
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":3363
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":374C
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":3B39
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":3F89
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":436F
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":4758
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":4B29
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":4F3E
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":532D
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":577B
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSWinsockLib.Winsock wsServer 
      Index           =   0
      Left            =   6480
      Top             =   3720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   6000
      Top             =   5040
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   31
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":5BAD
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":6147
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":66E1
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":6C7B
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":7215
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":77AF
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":7D49
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":82E3
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":887D
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":8E17
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":93B1
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":994B
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":9EE5
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":A47F
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":AA19
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":AFB3
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":B54D
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":BAE7
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":C081
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":C61B
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":CBB5
            Key             =   ""
         EndProperty
         BeginProperty ListImage22 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":D14F
            Key             =   ""
         EndProperty
         BeginProperty ListImage23 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":D6E9
            Key             =   ""
         EndProperty
         BeginProperty ListImage24 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":DC83
            Key             =   ""
         EndProperty
         BeginProperty ListImage25 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":E21D
            Key             =   ""
         EndProperty
         BeginProperty ListImage26 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":E7B7
            Key             =   ""
         EndProperty
         BeginProperty ListImage27 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":ED51
            Key             =   ""
         EndProperty
         BeginProperty ListImage28 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":F2EB
            Key             =   ""
         EndProperty
         BeginProperty ListImage29 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":F885
            Key             =   ""
         EndProperty
         BeginProperty ListImage30 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":FE1F
            Key             =   ""
         EndProperty
         BeginProperty ListImage31 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmServerMain.frx":103B9
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin ComCtl3.CoolBar CoolBar1 
      Align           =   1  '위 맞춤
      Height          =   390
      Left            =   0
      TabIndex        =   25
      Top             =   0
      Width           =   12585
      _ExtentX        =   22199
      _ExtentY        =   688
      BandCount       =   1
      _CBWidth        =   12585
      _CBHeight       =   390
      _Version        =   "6.0.8169"
      Child1          =   "Toolbar1"
      MinHeight1      =   330
      Width1          =   375
      NewRow1         =   0   'False
      Begin MSComctlLib.Toolbar Toolbar1 
         Height          =   330
         Left            =   30
         TabIndex        =   26
         Top             =   30
         Width           =   12465
         _ExtentX        =   21987
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         Style           =   1
         ImageList       =   "ImageList2"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   31
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "os"
               Object.ToolTipText     =   "서버 개방"
               ImageIndex      =   8
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "cs"
               Object.ToolTipText     =   "서버 닫기"
               ImageIndex      =   30
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "ss"
               Object.ToolTipText     =   "서버 설정"
               ImageIndex      =   19
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "ep"
               Object.ToolTipText     =   "프로그램 종료"
               ImageIndex      =   18
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "sd"
               Object.ToolTipText     =   "데이터베이스 설정"
               ImageIndex      =   7
            EndProperty
            BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "vu"
               Object.ToolTipText     =   "사용자 현황 보기"
               ImageIndex      =   20
            EndProperty
            BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "vr"
               Object.ToolTipText     =   "점수 기록 보기"
               ImageIndex      =   21
            EndProperty
            BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "vc"
               Object.ToolTipText     =   "접속자 현황 보기"
               ImageIndex      =   15
            EndProperty
            BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "rv"
               Object.ToolTipText     =   "접속자 현황 갱신"
               ImageIndex      =   6
            EndProperty
            BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "vv"
               Object.ToolTipText     =   "접속자 정보 보기"
               ImageIndex      =   1
            EndProperty
            BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "ev"
               Object.ToolTipText     =   "접속자 강제 종료"
               ImageIndex      =   9
            EndProperty
            BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "vq"
               Object.ToolTipText     =   "처리 대기중인 요청메시지 보기"
               ImageIndex      =   16
            EndProperty
            BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "rq"
               Object.ToolTipText     =   "요청메시지 목록 갱신"
               ImageIndex      =   11
            EndProperty
            BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "st"
               Object.ToolTipText     =   "요청메시지 처리 시간각격 설정"
               ImageIndex      =   3
            EndProperty
            BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "rr"
               Object.ToolTipText     =   "요청메시지 목록 리셋"
               ImageIndex      =   22
            EndProperty
            BeginProperty Button20 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "sp"
               Object.ToolTipText     =   "요청메시지 처리 시작"
               ImageIndex      =   2
            EndProperty
            BeginProperty Button21 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "pp"
               Object.ToolTipText     =   "요청메시지 처리 중지"
               ImageIndex      =   23
            EndProperty
            BeginProperty Button22 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button23 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "vl"
               Object.ToolTipText     =   "로그 보기"
               ImageIndex      =   24
            EndProperty
            BeginProperty Button24 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "sl"
               Object.ToolTipText     =   "로그 저장"
               ImageIndex      =   28
            EndProperty
            BeginProperty Button25 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button26 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "im"
               Object.ToolTipText     =   "메시지 입력"
               ImageIndex      =   25
            EndProperty
            BeginProperty Button27 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button28 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "gs"
               Object.ToolTipText     =   "서버 동작 안내"
               ImageIndex      =   26
            EndProperty
            BeginProperty Button29 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "re"
               Object.ToolTipText     =   "오류 보고"
               ImageIndex      =   17
            EndProperty
            BeginProperty Button30 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button31 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "pi"
               Object.ToolTipText     =   "프로그램 정보"
               ImageIndex      =   27
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame MainFrame 
      Height          =   6200
      Left            =   3900
      TabIndex        =   27
      Top             =   330
      Width           =   8690
   End
   Begin VB.Menu M 
      Caption         =   "ㅁㄴㅇ"
   End
End
Attribute VB_Name = "frmServerMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim PortNumber As Integer
Dim KeyNumber As Integer
Dim Dragable As Boolean
Dim DragX As Single, DragY As Single

'#################### 프레임크기변경 ####################

Private Sub LeftFrameDrag_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dragable = True
    If Index = 0 Or Index = 1 Or Index = 3 Then
        DragY = Y
    ElseIf Index = 2 Then
        DragX = X
    End If
End Sub

Private Sub LeftFrameDrag_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If Dragable = True Then
    If Index = 0 Or Index = 1 Or Index = 3 Then
        LeftFrameDrag(Index).Top = LeftFrameDrag(Index).Top + Y - DragY
    ElseIf Index = 2 Then
        LeftFrameDrag(Index).Left = LeftFrameDrag(Index).Left + X - DragX
    End If
End If
End Sub

Private Sub LeftFrameDrag_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dragable = False
    Select Case Index
        Case 0
            If LeftFrameDrag(0).Top < ConnectedUserList1.Top Then
                LeftFrameDrag(0).Top = ConnectedUserList1.Top
            ElseIf LeftFrameDrag(0).Top > FrameLeft1.Height - 1000 Then
                LeftFrameDrag(0).Top = FrameLeft1.Height - 1000
            End If
            ConnectedUserList1.Height = Abs(LeftFrameDrag(0).Top - ConnectedUserList1.Top + 40)
            LeftFrameDrag(0).Top = ConnectedUserList1.Height + ConnectedUserList1.Top - 40
            Line1.Y1 = LeftFrameDrag(0).Top + 90: Line1.Y2 = Line1.Y1
            Line2.Y1 = LeftFrameDrag(0).Top + 140: Line2.Y2 = Line2.Y1
            CoolBar3.Top = LeftFrameDrag(0).Top + 200
            RequestList1.Top = LeftFrameDrag(0).Top + 620
            
            RequestList1.Height = Abs(FrameLeft1.Height - RequestList1.Top - 240)
            LeftFrameDrag(1).Top = RequestList1.Height + RequestList1.Top - 40
            Line3.Y1 = LeftFrameDrag(1).Top + 90: Line3.Y2 = Line3.Y1
            Line4.Y1 = LeftFrameDrag(1).Top + 140: Line4.Y2 = Line4.Y1
           
        Case 1
            If LeftFrameDrag(1).Top < RequestList1.Top Then
                LeftFrameDrag(1).Top = RequestList1.Top
            ElseIf LeftFrameDrag(1).Top > FrameLeft1.Height - 240 Then
                LeftFrameDrag(1).Top = FrameLeft1.Height - 240
            End If
            RequestList1.Height = LeftFrameDrag(1).Top - RequestList1.Top + 40
            LeftFrameDrag(1).Top = RequestList1.Height + RequestList1.Top - 40
            Line3.Y1 = LeftFrameDrag(1).Top + 90: Line3.Y2 = Line3.Y1
            Line4.Y1 = LeftFrameDrag(1).Top + 140: Line4.Y2 = Line4.Y1

        Case 2
            If LeftFrameDrag(2).Left < 3640 Then
                LeftFrameDrag(2).Left = 3640
            ElseIf LeftFrameDrag(2).Left > 6340 Then
                LeftFrameDrag(2).Left = 6330
            End If
            FrameLeft1.Width = LeftFrameDrag(2).Left + 180
            Line1.X2 = FrameLeft1.Width - 120
            Line2.X2 = Line1.X2
            Line3.X2 = Line1.X2
            Line4.X2 = Line1.X2
            Line7.X1 = FrameLeft1.Width - 120: Line7.X2 = Line7.X1
            Line8.X1 = FrameLeft1.Width - 60: Line8.X2 = Line8.X1
            LeftFrameDrag(0).Width = LeftFrameDrag(2).Left + 135
            LeftFrameDrag(1).Width = LeftFrameDrag(2).Left + 135
            CoolBar2.Width = LeftFrameDrag(2).Left + 15
            CoolBar3.Width = LeftFrameDrag(2).Left + 15
            ConnectedUserList1.Width = LeftFrameDrag(2).Left + 15
            RequestList1.Width = LeftFrameDrag(2).Left + 15
            Frame1.Left = CoolBar2.Width - 1140
            Frame2.Left = CoolBar3.Width - 1935
            
        Case 3
            If FrameBottom.Height - LeftFrameDrag(3).Top > 4000 Then
                LeftFrameDrag(3).Top = FrameBottom.Height - 4000
            ElseIf FrameBottom.Height - LeftFrameDrag(3).Top < 1200 Then
                LeftFrameDrag(3).Top = FrameBottom.Height - 1200
            End If
            
            FrameBottom.Height = FrameBottom.Height - LeftFrameDrag(3).Top - 40
            LogList1.Height = FrameBottom.Height - 570
            FrameBottom.Height = LogList1.Height + 570
            LeftFrameDrag(3).Top = -40
            FrameBottom1.Top = Me.Height
            Call LeftFrameDrag_MouseUp(0, 0, 0, 0, 0)
            
    End Select
    LeftFrameDrag(2).Height = FrameLeft1.Height
    Line7.Y2 = LeftFrameDrag(2).Height: Line8.Y2 = Line7.Y2
    MainFrame.Left = FrameLeft1.Width
    'MainFrame.Width = Abs(Me.Width - MainFrame.Left - 130) + 5
    'MainFrame.Height = Abs(FrameBottom.Top - 320) + 10
End Sub

Private Sub Form_Resize()
    Call LeftFrameDrag_MouseUp(0, 0, 0, 0, 0)
    LeftFrameDrag(3).Width = Me.Width - 120
    LogList1.Width = Me.Width - 120
    Line5.X2 = Me.Width - 120
    Line6.X2 = Me.Width - 120
    CoolBar4.Width = Me.Width - 120
    ServerMessage.Width = Abs(Me.Width - 5840) + 50
    SendButton.Left = Me.Width - 1335
    Frame3.Width = Me.Width - 120
    Notice.Width = Frame3.Width
    'MainFrame.Height = Abs(FrameBottom.Top - 320) + 10
End Sub

'#################### 기본프로시져 ####################

Private Sub Form_Load()
    KeyNumber = 0
    SetServer '서버리셋
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim Result As VbMsgBoxResult
    
    Result = MsgBox("프로그램을 종료하겠습니까?", vbYesNo)
    If Result = vbYes Then
        Unload Me
    Else
        Cancel = 1
    End If
End Sub

Private Sub ConnectedUserList1_Click() '수신자 선택
    TargetUser.Text = ConnectedUserList1.List(ConnectedUserList1.ListIndex)
End Sub

Private Sub Notice_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Notice.Caption = "Notice"
    Notice.ForeColor = &H80000010
End Sub

Private Sub ProcessTimer_Timer()
    Answer '요청메시지 처리
End Sub

Private Sub S_GuideSetServer_Click()
    frmServerGuide.Show
End Sub

Private Sub S_Option_Click()
    frmProgramOption.Show
    frmProgramOption.ZOrder (0)
End Sub

Private Sub S_ProgramInfo_Click()
    frmProgramInfo.Show
End Sub

Private Sub S_ReportError_Click()
    frmReportError.Show
End Sub

Private Sub S_SaveLog_Click()
    MsgBox "로그저장 코드 삽입요망"
End Sub

Private Sub S_SetupDatabase_Click()
    frmSetDatabase.Show
    frmSetDatabase.ZOrder (0)
End Sub

Private Sub SendButton_Click() '클라이언트에게 메시지 전송
    Dim UserNumber As Integer
    UserNumber = Val(TargetUser)
    If UserNumber > 0 And UserNumber <= 50 Then
        frmMain.ServerToClient UserNumber, ServerMessage.Text
        ServerMessage.Text = ""
        ServerMessage.SetFocus
    End If
End Sub

Private Sub ServerMessage_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyReturn Then Call SendButton_Click
End Sub
'#################### 메뉴 프로시져 ####################

Private Sub S_ConfigServer_Click()
    frmSetServer.Show
    frmSetServer.ZOrder (0)
End Sub

Private Sub S_Exit_Click()
    Unload Me
End Sub

Private Sub S_CloseServer_Click()
    CloseServer (0)
    Toolbar2.Buttons(6).Value = tbrUnpressed
End Sub

Private Sub S_ExileUser_Click()
    Dim TempIndex As Integer
    TempIndex = Val(ConnectedUserList1.List(ConnectedUserList1.ListIndex))
    If TempIndex > 0 Then
        AddLog "SERVER > 강제종료명령 > " & iUser(TempIndex).Name & "(" & iUser(TempIndex).RequestID & ")"
        Call wsServer_Close(TempIndex)
    End If
End Sub

Private Sub S_OpenServer_Click()
    OpenServer (0)
    Toolbar2.Buttons(6).Value = tbrPressed
End Sub

Private Sub S_PauseProcess_Click()
    AddLog "SERVER > 요청메시지처리 중지"
    ProcessTimer.Enabled = False
    Toolbar3.Buttons(6).Value = tbrUnpressed
End Sub

Private Sub S_RefreshConnectedList_Click()
    RefreshConnectedUser
End Sub

Private Sub S_RefreshRequestMessage_Click()
    Dim i As Integer
    RequestList1.Clear
    For i = 0 To 50
        RequestList1.AddItem (Format(i, "0#") & " > " & Request1.message(i))
    Next i
    RequestList1.ListIndex = Request1.EndIndex
End Sub

Private Sub S_ResetRequestMessage_Click()
    AddLog "SERVER > 요청메시지목록 리셋"
    ResetRequest
End Sub

Private Sub S_SetProcessTime_Click()
    frmSetProcessTimer.Show
    frmSetProcessTimer.ZOrder (0)
End Sub

Private Sub S_ShowConnected_Click()
    frmUser.Show '여는 동시에 데이터베이스 로드
    frmUser.ZOrder (0)
End Sub

Private Sub S_ShowInput_Click()
    S_ShowInput.Checked = Not (S_ShowInput.Checked)
    FrameBottom1.Visible = S_ShowInput.Checked
End Sub

Private Sub S_ShowLog_Click()
    S_ShowLog.Checked = Not (S_ShowLog.Checked)
    FrameBottom.Visible = S_ShowLog.Checked
End Sub

Private Sub S_ShowRecord_Click()
    frmRecord.Show '여는 동시에 데이터베이스 로드
    frmRecord.ZOrder (0)
End Sub

Private Sub S_ShowRequestMessage_Click()
    S_ShowRequestMessage.Checked = Not (S_ShowRequestMessage.Checked)
    RequestList1.Visible = S_ShowRequestMessage.Checked
    CoolBar3.Visible = S_ShowRequestMessage.Checked
    FrameLeft1.Visible = S_ShowRequestMessage.Checked Or S_ShowUser.Checked
End Sub

Private Sub S_ShowUser_Click()
    S_ShowUser.Checked = Not (S_ShowUser.Checked)
    ConnectedUserList1.Visible = S_ShowUser.Checked
    CoolBar2.Visible = S_ShowUser.Checked
    FrameLeft1.Visible = S_ShowRequestMessage.Checked Or S_ShowUser.Checked
End Sub

Private Sub S_StartProcess_Click()
    AddLog "SERVER > 요청메시지처리 시작"
    ProcessTimer.Enabled = True
    Toolbar3.Buttons(6).Value = tbrPressed
End Sub

Private Sub S_ViewUser_Click()
    Dim TempIndex As Integer
    If ConnectedUserList1.ListIndex >= 0 Then
        TempIndex = Val(ConnectedUserList1.List(ConnectedUserList1.ListIndex))
        frmUserInfo.Show
        frmUserInfo.ShowUserInfo (TempIndex)
        frmUserInfo.ZOrder (0)
    Else
        SetNotice "정보를 보려면 왼쪽 접속자 목록에서 접속자를 선택하세요."
    End If
End Sub

'#################### 툴바 프로시져 ####################

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
        Case "os": Call S_OpenServer_Click
        Case "cs": Call S_CloseServer_Click
        Case "ss": Call S_ConfigServer_Click
        Case "ep": Call S_Exit_Click
        
        Case "sd": Call S_SetupDatabase_Click
        Case "vu": Call S_ShowConnected_Click
        Case "vr": Call S_ShowRecord_Click
        
        Case "vc": Call S_ShowUser_Click
        Case "rv": Call S_RefreshConnectedList_Click
        Case "vv": Call S_ViewUser_Click
        Case "ev": Call S_ExileUser_Click
        
        Case "vq": Call S_ShowRequestMessage_Click
        Case "rq": Call S_RefreshRequestMessage_Click
        Case "st": Call S_SetProcessTime_Click
        Case "rr": Call S_ResetRequestMessage_Click
        Case "sp": Call S_StartProcess_Click
        Case "pp": Call S_PauseProcess_Click
        
        Case "vl": Call S_ShowLog_Click
        Case "sl": Call S_SaveLog_Click
        
        Case "im": Call S_ShowInput_Click
        
        Case "gs": Call S_GuideSetServer_Click
        Case "re": Call S_ReportError_Click
        
        Case "pi": Call S_ProgramInfo_Click
    End Select
End Sub

Private Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
        Case "refresh"
            Call S_RefreshConnectedList_Click
        Case "info"
            Call S_ViewUser_Click
        Case "close"
            Call S_ExileUser_Click
        Case "server"
            If Toolbar2.Buttons(6).Value = tbrPressed Then OpenServer (0) Else CloseServer (0)
    End Select
End Sub

Private Sub Toolbar3_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
        Case "refresh"
            Call S_RefreshRequestMessage_Click
        Case "reset"
            Call S_ResetRequestMessage_Click
        Case "timer"
            Call S_SetProcessTime_Click
        Case "stop"
            If Toolbar3.Buttons(6).Value = tbrPressed Then
                AddLog "SERVER > 요청메시지처리 시작"
                ProcessTimer.Enabled = True
            Else
                AddLog "SERVER > 요청메시지처리 중지"
                ProcessTimer.Enabled = False
            End If
    End Select
End Sub

'#################### 소켓프로시져 ####################

Private Sub wsServer_Close(Index As Integer) '패시브_클라이언트 접속 해제 경우
    wsServer(Index).Close
    Unload wsServer(Index)
    
    iUser(Index).Connection = "Disconnected"
    
    AddLog iUser(Index).Name & "(" & iUser(Index).RequestID & ") > 종료"  '로깅
    
    iUser(Index).RequestID = 0
    
    Call RefreshConnectedUser
End Sub

Private Sub wsServer_ConnectionRequest(Index As Integer, ByVal RequestID As Long) '패시브_클라이언트 접속 요청 경우
    Dim NewUser As Integer
    NewUser = FindOpenSocket
    If NewUser > -1 Then
        Load wsServer(NewUser)
        iUser(NewUser).Connection = "Connected"
        iUser(NewUser).RequestID = RequestID & Format(KeyNumber, "0#")
        If KeyNumber >= 99 Then
            KeyNumber = 0
        Else
            KeyNumber = KeyNumber + 1
        End If
        iUser(NewUser).Name = "Anonymous"
       
        wsServer(NewUser).Accept RequestID
    
        AddLog iUser(NewUser).Name & "(" & iUser(NewUser).RequestID & ") > 접속"  '로깅
       
        Call RefreshConnectedUser
    End If
End Sub

Private Sub wsServer_DataArrival(Index As Integer, ByVal bytesTotal As Long) '패시브_클라이언트 메시지를 보내옴
    Dim TempString As String
    wsServer(Index).GetData TempString
    If Left(TempString, 1) = "#" Then AddRequest (Format(Index, "0#") & Format(iUser(Index).RequestID, "000000#") & TempString) '요청메시지 보관
    
     AddLog iUser(Index).Name & "(" & iUser(Index).RequestID & ") > " & TempString  '로깅
End Sub

'#################### 소켓기능 ####################

Function SetServer() '서버 초기 설정
    PortNumber = 20001                  '초기 설정 포트번호
End Function

Function OpenServer(Index As Integer) '서버 열기
    If wsServer(Index).State <> 2 Then
        If PortNumber Then wsServer(Index).LocalPort = PortNumber     '포트 설정
        wsServer(Index).Listen                     '서버는 청취 모드
        
        AddLog "SERVER > 서버개방" '로깅
    End If
End Function

Function CloseServer(Index As Integer) '서버 닫기
    If wsServer(Index).State > 0 Then
        wsServer(Index).Close
        
        AddLog "SERVER > 서버닫음(새 접속자 막음)" '로깅
    End If
End Function

Function ServerToClient(Index As Integer, message As String) '서버가 클라이언트에게 메시지 전송
    On Error GoTo Err
    wsServer(Index).SendData message
    AddLog "SERVER > " & iUser(Index).Name & "(" & iUser(Index).RequestID & ")에게 전송 : " & message '로깅
    
Err:
    If Err = 340 Then SetNotice "현재 접속자가 아닙니다."
End Function

Function FindOpenSocket() '새 소켓 찾기
    Dim i As Integer
    FindOpenSocket = -1
    For i = 1 To 50
        If iUser(i).Connection = "" Or iUser(i).Connection = "Disconnected" Then
            FindOpenSocket = i
            Exit For
        End If
    Next i
    If FindOpenSocket = 0 Then FindOpenSocket = i
End Function

Function RefreshConnectedUser() '접속중 유저 확인
    Dim i As Integer
    ConnectedUserList1.Clear
    For i = 1 To 50
        If iUser(i).Connection = "Connected" Then
            ConnectedUserList1.AddItem Format(i, "0#") & " # " & iUser(i).Name & "(" & iUser(i).RequestID & ")"
        End If
    Next i
    UserCount = ConnectedUserList1.ListCount & " 명 접속"
End Function

'#################### 기타기능 ####################

