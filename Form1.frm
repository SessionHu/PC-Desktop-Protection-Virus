VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "PC Desktop Protection v1.0.0"
   ClientHeight    =   3120
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7815
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "΢���ź�"
      Size            =   9
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3120
   ScaleWidth      =   7815
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command5 
      Appearance      =   0  'Flat
      Caption         =   "X"
      Height          =   375
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   1800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "������"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   240
      PasswordChar    =   "*"
      TabIndex        =   6
      Top             =   1800
      Width           =   7335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "����(&U)"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1680
      TabIndex        =   4
      Top             =   2460
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "��֤(&E)"
      Enabled         =   0   'False
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   2460
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "����(&R)"
      Height          =   495
      Left            =   4920
      TabIndex        =   2
      Top             =   2460
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�ػ�(&S)"
      Height          =   495
      Left            =   6360
      TabIndex        =   1
      Top             =   2460
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "by Session"
      ForeColor       =   &H80000011&
      Height          =   375
      Left            =   3480
      TabIndex        =   8
      Top             =   2580
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "���������Խ������棺"
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   1460
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "���������ѱ�������"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   42
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   360
      TabIndex        =   0
      Top             =   50
      Width           =   7575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text1_Change()
    If Text1.Text <> "" Then
        Let Command5.Visible = True
        Let Command3.Enabled = True
    Else
        Let Command5.Visible = False
        Let Command3.Enabled = False
    End If
End Sub

Private Sub Command5_Click()
    Let Text1.Text = ""
End Sub

Private Sub Command3_Click()
    If Text1.Text = "1145141919810" Then
        Let Command4.Enabled = True
        Let Command5.Enabled = False
        Let Text1.Enabled = False
        Let Command3.Enabled = False
    Else
        MsgBox "�������", vbExclamation, "��ʾ"
    End If
End Sub

Private Sub Command4_Click()
    Shell "explorer.exe"
    End
End Sub

Private Sub Command1_Click()
    Set ws = CreateObject("wscript.Shell")
    ws.run "shutdown /s /t 0", 0
End Sub

Private Sub Command2_Click()
    Set ws = CreateObject("wscript.Shell")
    ws.run "shutdown /r /t 0", 0
End Sub

Private Sub Label3_DblClick()
    MsgBox "(C) XhuOffice 2022 ��Ȩ����", vbInformation, "��Ȩ��Ϣ"
End Sub

