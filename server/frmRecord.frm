VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{38911DA0-E448-11D0-84A3-00DD01104159}#1.1#0"; "COMCT332.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Begin VB.Form frmRecord 
   Caption         =   "데이터베이스 - 점수기록목록"
   ClientHeight    =   5535
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8430
   Icon            =   "frmRecord.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5535
   ScaleWidth      =   8430
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
            Picture         =   "frmRecord.frx":058A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmRecord.frx":0B24
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
      Width           =   8430
      _ExtentX        =   14870
      _ExtentY        =   688
      BandCount       =   1
      _CBWidth        =   8430
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
         Width           =   8310
         _ExtentX        =   14658
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
               Object.ToolTipText     =   "현재 점수 목록 새로고침"
               ImageIndex      =   1
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Key             =   "array"
               Object.ToolTipText     =   "현재 점수 목록 검색"
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
            Begin VB.ComboBox ArrayList 
               Height          =   300
               ItemData        =   "frmRecord.frx":10BE
               Left            =   1080
               List            =   "frmRecord.frx":10D1
               Style           =   2  '드롭다운 목록
               TabIndex        =   0
               Top             =   140
               Width           =   1095
            End
            Begin VB.ComboBox SelectList 
               Height          =   300
               ItemData        =   "frmRecord.frx":10F2
               Left            =   3600
               List            =   "frmRecord.frx":1102
               Style           =   2  '드롭다운 목록
               TabIndex        =   2
               Top             =   140
               Width           =   1335
            End
            Begin VB.TextBox SelectValue 
               Height          =   300
               Left            =   5760
               TabIndex        =   4
               Text            =   "찾을 데이터"
               Top             =   140
               Width           =   1695
            End
            Begin VB.ComboBox SelectOperator 
               Height          =   300
               ItemData        =   "frmRecord.frx":111D
               Left            =   4980
               List            =   "frmRecord.frx":1130
               Style           =   2  '드롭다운 목록
               TabIndex        =   3
               Top             =   140
               Width           =   735
            End
            Begin VB.Label Label2 
               Caption         =   "조건검색 :"
               Height          =   255
               Left            =   2700
               TabIndex        =   10
               Top             =   200
               Width           =   855
            End
            Begin VB.Label Label1 
               Caption         =   "정렬기준 :"
               Height          =   255
               Left            =   180
               TabIndex        =   9
               Top             =   200
               Width           =   855
            End
         End
      End
   End
   Begin TabDlg.SSTab TabMenu 
      Height          =   4950
      Left            =   15
      TabIndex        =   5
      Top             =   460
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   8731
      _Version        =   393216
      Style           =   1
      Tab             =   2
      TabHeight       =   635
      WordWrap        =   0   'False
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "계산능력"
      TabPicture(0)   =   "frmRecord.frx":1145
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "RecordList(0)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "공간지각능력"
      TabPicture(1)   =   "frmRecord.frx":1161
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "RecordList(1)"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "암기능력"
      TabPicture(2)   =   "frmRecord.frx":117D
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "RecordList(2)"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      Begin MSDataGridLib.DataGrid RecordList 
         Height          =   4455
         Index           =   2
         Left            =   45
         TabIndex        =   11
         Top             =   405
         Width           =   8115
         _ExtentX        =   14314
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
         ColumnCount     =   5
         BeginProperty Column00 
            DataField       =   "INDEX"
            Caption         =   "INDEX"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "yyyy-MM-dd"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
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
         BeginProperty Column02 
            DataField       =   "날짜"
            Caption         =   "날짜"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "yy/mm/dd"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "시간"
            Caption         =   "시간"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "hh:mm:ss"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "점수"
            Caption         =   "점수"
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
               ColumnWidth     =   1005.165
            EndProperty
            BeginProperty Column02 
               ColumnWidth     =   1500.095
            EndProperty
            BeginProperty Column03 
               ColumnWidth     =   1500.095
            EndProperty
            BeginProperty Column04 
               Alignment       =   2
               ColumnWidth     =   1005.165
            EndProperty
         EndProperty
      End
      Begin MSDataGridLib.DataGrid RecordList 
         Height          =   4455
         Index           =   1
         Left            =   -74955
         TabIndex        =   12
         Top             =   405
         Width           =   8115
         _ExtentX        =   14314
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
         ColumnCount     =   5
         BeginProperty Column00 
            DataField       =   "INDEX"
            Caption         =   "INDEX"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "yyyy-MM-dd"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
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
         BeginProperty Column02 
            DataField       =   "날짜"
            Caption         =   "날짜"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "yy/mm/dd"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "시간"
            Caption         =   "시간"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "hh:mm:ss"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "점수"
            Caption         =   "점수"
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
               ColumnWidth     =   1005.165
            EndProperty
            BeginProperty Column02 
               ColumnWidth     =   1500.095
            EndProperty
            BeginProperty Column03 
               ColumnWidth     =   1500.095
            EndProperty
            BeginProperty Column04 
               Alignment       =   2
               ColumnWidth     =   1005.165
            EndProperty
         EndProperty
      End
      Begin MSDataGridLib.DataGrid RecordList 
         Height          =   4485
         Index           =   0
         Left            =   -74960
         TabIndex        =   13
         Top             =   400
         Width           =   8185
         _ExtentX        =   14420
         _ExtentY        =   7911
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
         ColumnCount     =   5
         BeginProperty Column00 
            DataField       =   "INDEX"
            Caption         =   "INDEX"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   "yyyy-MM-dd"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
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
         BeginProperty Column02 
            DataField       =   "날짜"
            Caption         =   "날짜"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "yy/mm/dd"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column03 
            DataField       =   "시간"
            Caption         =   "시간"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "hh:mm:ss"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1042
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column04 
            DataField       =   "점수"
            Caption         =   "점수"
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
               ColumnWidth     =   1005.165
            EndProperty
            BeginProperty Column02 
               ColumnWidth     =   1500.095
            EndProperty
            BeginProperty Column03 
               ColumnWidth     =   1500.095
            EndProperty
            BeginProperty Column04 
               Alignment       =   2
               ColumnWidth     =   1005.165
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frmRecord"
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

    SetRecordConnection (0)
    SetRecordConnection (1)
    SetRecordConnection (2)
    ConnectRecordTable 0, "select INDEX,ID,날짜,시간,점수 from 계산점수목록 Order by INDEX"
    ConnectRecordTable 1, "select INDEX,ID,날짜,시간,점수 from 공간점수목록 Order by INDEX"
    ConnectRecordTable 2, "select INDEX,ID,날짜,시간,점수 from 암기점수목록 Order by INDEX"
    
End Sub

Private Sub Form_Resize()
    On Error GoTo Err

    If Me.Width < 7500 Then Me.Width = 7500
    If Me.Height < 4500 Then Me.Height = 4500
    RecordList(0).Width = Abs(Me.Width - 260) + 5
    RecordList(0).Height = Abs(Me.Height - 1350) + 5
    RecordList(1).Width = RecordList(0).Width
    RecordList(1).Height = RecordList(0).Height
    RecordList(2).Width = RecordList(0).Width
    RecordList(2).Height = RecordList(0).Height
    TabMenu.Width = RecordList(0).Width + 100
    TabMenu.Height = RecordList(0).Height + 460
Err:
    '창 최소화임
End Sub

Private Sub Form_Unload(Cancel As Integer) '폼 종료
    CloseRecordConnection (0)
    CloseRecordConnection (1)
    CloseRecordConnection (2)
End Sub

Private Sub SelectList_Click()
    If SelectList.ListIndex = 2 Then
        SelectValue.Text = DateDiff("d", 0, Now)
    ElseIf SelectList.ListIndex <> 1 Then
        SelectValue.Text = "0"
    End If
End Sub

Private Sub SelectValue_GotFocus()
    SelectValue.SelStart = 0
    SelectValue.SelLength = Len(SelectValue.Text)
End Sub

Private Sub SelectValue_LostFocus()
    Dim Temp As String
    Dim TY As Integer, TM As Integer, TD As Integer
    Dim INSTR_TEMP As Integer
        
    If SelectList.ListIndex = 2 Then
        Temp = SelectValue.Text
        TY = Val(Left(Temp, 4))
        
        INSTR_TEMP = InStr(Temp, "-")
        If INSTR_TEMP = 0 Then GoTo Err:
        
        Temp = Mid(Temp, INSTR_TEMP + 1)
        TM = Val(Left(Temp, 2))
        
        INSTR_TEMP = InStr(Temp, "-")
        If INSTR_TEMP = 0 Then GoTo Err:
        
        Temp = Mid(Temp, INSTR_TEMP + 1)
        TD = Val(Left(Temp, 2))
        If TD > 31 Then
            TM = TM + 1: TD = 1
        ElseIf TD < 1 Then
            TD = 1
        End If
        If TM > 12 Then
            TY = TY + 1: TM = 1
        ElseIf TM < 1 Then
            TM = 1
        End If
        If TY > Year(Now) Then
            TY = Year(Now)
        ElseIf TY < 2000 Then
            TY = 2000
        End If
        
        SelectValue.Text = DateDiff("d", 0, DateSerial(TY, TM, TD))
    ElseIf SelectList.ListIndex <> 1 Then
        If SelectValue.Text = "" Then SelectValue.Text = 0
    End If
    
    Exit Sub
Err:
        SelectValue.Text = DateDiff("d", 0, Val(Left(SelectValue.Text, 5)))
    
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
            CloseRecordConnection (TabMenu.Tab)
            SetRecordConnection (TabMenu.Tab)
            ConnectRecordTable TabMenu.Tab, "select INDEX,ID,날짜,시간,점수 from " & Parts(TabMenu.Tab) & "점수목록 Order by " & ArrayList.Text & TempArray
        Case "array" '조건검색 및 정렬
            CloseRecordConnection (TabMenu.Tab)
            SetRecordConnection (TabMenu.Tab)

            If SelectList.ListIndex = 1 Then
                ConnectRecordTable TabMenu.Tab, "select INDEX,ID,날짜,시간,점수 from " & Parts(TabMenu.Tab) & "점수목록 where " & SelectList.Text & "='" & Trim(SelectValue.Text) & "' Order by " & ArrayList.Text & TempArray
            Else
                ConnectRecordTable TabMenu.Tab, "select INDEX,ID,날짜,시간,점수 from " & Parts(TabMenu.Tab) & "점수목록 where " & SelectList.Text & SelectOperator.Text & Val(SelectValue.Text) & " Order by " & ArrayList.Text & TempArray
            End If
    End Select
End Sub

