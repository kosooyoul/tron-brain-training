VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{38911DA0-E448-11D0-84A3-00DD01104159}#1.1#0"; "COMCT332.OCX"
Begin VB.Form frmUser 
   Caption         =   "데이터베이스 - 사용자 목록"
   ClientHeight    =   4920
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9210
   Icon            =   "frmUser.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4920
   ScaleWidth      =   9210
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   9600
      Top             =   1440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmUser.frx":058A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmUser.frx":0B24
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin ComCtl3.CoolBar CoolBar1 
      Align           =   1  '위 맞춤
      Height          =   390
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   9210
      _ExtentX        =   16245
      _ExtentY        =   688
      BandCount       =   1
      _CBWidth        =   9210
      _CBHeight       =   390
      _Version        =   "6.0.8169"
      Child1          =   "Toolbar1"
      MinHeight1      =   330
      Width1          =   3105
      NewRow1         =   0   'False
      Begin MSComctlLib.Toolbar Toolbar1 
         Height          =   330
         Left            =   30
         TabIndex        =   7
         Top             =   30
         Width           =   9090
         _ExtentX        =   16034
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         Style           =   1
         ImageList       =   "ImageList2"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   4
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "refresh"
               Object.ToolTipText     =   "사용자 목록 새로고침"
               ImageIndex      =   1
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "array"
               Object.ToolTipText     =   "현재 사용자 목록 검색"
               ImageIndex      =   2
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
         EndProperty
         Begin VB.Frame Frame1 
            Height          =   480
            Left            =   840
            TabIndex        =   8
            Top             =   -120
            Width           =   7575
            Begin VB.CheckBox DESC 
               Caption         =   "▲"
               ForeColor       =   &H000000FF&
               Height          =   375
               Left            =   2220
               TabIndex        =   1
               ToolTipText     =   "내림차순 / 오름차순"
               Top             =   100
               Width           =   495
            End
            Begin VB.ComboBox SelectOperator 
               Height          =   300
               ItemData        =   "frmUser.frx":10BE
               Left            =   4980
               List            =   "frmUser.frx":10D1
               Style           =   2  '드롭다운 목록
               TabIndex        =   3
               Top             =   140
               Width           =   735
            End
            Begin VB.TextBox SelectValue 
               Height          =   300
               Left            =   5760
               TabIndex        =   4
               Top             =   140
               Width           =   1695
            End
            Begin VB.ComboBox SelectList 
               Height          =   300
               ItemData        =   "frmUser.frx":10E6
               Left            =   3600
               List            =   "frmUser.frx":10FF
               Style           =   2  '드롭다운 목록
               TabIndex        =   2
               Top             =   140
               Width           =   1335
            End
            Begin VB.ComboBox ArrayList 
               Height          =   300
               ItemData        =   "frmUser.frx":113B
               Left            =   1080
               List            =   "frmUser.frx":1154
               Style           =   2  '드롭다운 목록
               TabIndex        =   0
               Top             =   140
               Width           =   1095
            End
            Begin VB.Label Label1 
               Caption         =   "정렬기준 :"
               Height          =   255
               Left            =   180
               TabIndex        =   10
               Top             =   200
               Width           =   855
            End
            Begin VB.Label Label2 
               Caption         =   "조건검색 :"
               Height          =   255
               Left            =   2700
               TabIndex        =   9
               Top             =   200
               Width           =   855
            End
         End
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4590
      Left            =   0
      TabIndex        =   11
      Top             =   330
      Width           =   9210
      Begin MSDataGridLib.DataGrid UserList 
         Height          =   4460
         Left            =   10
         TabIndex        =   5
         Top             =   100
         Width           =   9160
         _ExtentX        =   16140
         _ExtentY        =   7858
         _Version        =   393216
         AllowUpdate     =   0   'False
         AllowArrows     =   -1  'True
         ColumnHeaders   =   -1  'True
         HeadLines       =   1.5
         RowHeight       =   14
         TabAction       =   1
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "굴림"
            Size            =   9
            Charset         =   129
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   8
         BeginProperty Column00 
            DataField       =   "ID"
            Caption         =   "ID"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   "비밀번호"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column02 
            DataField       =   "이름"
            Caption         =   "이름"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "#0 EA "
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "메일주소"
            Caption         =   "메일주소"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "#0 EA "
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "생년"
            Caption         =   "생년"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column05 
            DataField       =   "계산나이"
            Caption         =   "계산나이"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column06 
            DataField       =   "공간나이"
            Caption         =   "공간나이"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column07 
            DataField       =   "암기나이"
            Caption         =   "암기나이"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
               ColumnWidth     =   1005.165
            EndProperty
            BeginProperty Column01 
               ColumnWidth     =   824.882
            EndProperty
            BeginProperty Column02 
               ColumnWidth     =   1140.095
            EndProperty
            BeginProperty Column03 
               ColumnWidth     =   1995.024
            EndProperty
            BeginProperty Column04 
               Alignment       =   2
               ColumnWidth     =   900.284
            EndProperty
            BeginProperty Column05 
               Alignment       =   2
               ColumnWidth     =   900.284
            EndProperty
            BeginProperty Column06 
               Alignment       =   2
               ColumnWidth     =   900.284
            EndProperty
            BeginProperty Column07 
               Alignment       =   2
               ColumnWidth     =   900.284
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frmUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub DESC_Click()
    If DESC.Value = Checked Then
        DESC.Caption = "▼"
        DESC.ForeColor = RGB(0, 0, 255)
    Else
        DESC.Caption = "▲"
        DESC.ForeColor = RGB(255, 0, 0)
    End If
End Sub

Private Sub Form_Load() '폼 시작
    Me.Width = 7500
    Me.Height = 4500
    
    ArrayList.ListIndex = 0
    SelectList.ListIndex = 0
    SelectOperator.ListIndex = 0

    SetUserConnection
    ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 Order by ID")
End Sub

Private Sub Form_Resize()
    On Error GoTo Err
    
    If Me.Width < 7500 Then Me.Width = 7500
    If Me.Height < 4500 Then Me.Height = 4500
    UserList.Width = Abs(Me.Width - 165) + 5
    UserList.Height = Abs(Me.Height - 870) + 5
    Frame2.Width = UserList.Width + 40
    Frame2.Height = UserList.Height + 130
    
Err:
    '창 최소화임
End Sub

Private Sub Form_Unload(Cancel As Integer) '폼 종료
    CloseUserConnection
End Sub

''테스트용
'Private Sub Label1_Click()
'   Dim i As Integer
'   RecordBase.MoveFirst
'   For i = 0 To RecordBase.RecordCount - 1
'       If MsgBox(RecordBase.Fields(0) & " " & RecordBase.Fields(1), vbOKCancel) = vbCancel Then Exit For
'   RecordBase.MoveNext
'   Next i
'End Sub
''테스트용

Private Sub SelectList_Click()
    If SelectList.ListIndex < 3 Then
        SelectValue.Text = "찾을 데이터"
    Else
        SelectValue.Text = 0
    End If
End Sub

Private Sub SelectValue_GotFocus()
    SelectValue.SelStart = 0
    SelectValue.SelLength = Len(SelectValue.Text)
End Sub

Private Sub SelectValue_LostFocus()
    If SelectList.ListIndex > 3 Then
        If SelectValue.Text = "" Then SelectValue.Text = 0
    End If
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Dim TempArray As String
    
    If DESC.Value = Checked Then
        TempArray = " DESC"
    Else
        TempArray = " ASC"
    End If
    
    Select Case Button.Key
        Case "refresh" '전부출력 및 정렬
            CloseUserConnection
            SetUserConnection
            ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 Order by " & ArrayList.Text) & TempArray
        Case "array" '조건검색 및 정렬
            CloseUserConnection
            SetUserConnection
            If SelectList.ListIndex < 3 Then
                ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 where " & SelectList.Text & "='" & Trim(SelectValue.Text) & "' Order by " & ArrayList.Text) & TempArray
            Else
                ConnectUserTable ("select ID,비밀번호,이름,메일주소,생년,계산나이,공간나이,암기나이 from 사용자 where " & SelectList.Text & SelectOperator.Text & Val(SelectValue.Text) & " Order by " & ArrayList.Text) & TempArray
            End If
    End Select
End Sub
