VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "..::..::: - Calculator - :::..::.."
   ClientHeight    =   1080
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3660
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1080
   ScaleWidth      =   3660
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "E&xit"
      Enabled         =   0   'False
      Height          =   615
      Left            =   2880
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "/"
      Height          =   255
      Left            =   2280
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   480
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Caption         =   "x"
      Height          =   255
      Left            =   1680
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   480
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "+"
      Height          =   255
      Left            =   1680
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   120
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "-"
      Height          =   255
      Left            =   2280
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   120
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label1 
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   840
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

     If Text1.Text = "" Or Text2.Text = "" Then
        MsgBox "An Error Occured, Please try again...", vbCritical, "Error"
    Else
        Sum = CInt(Text1.Text) + CInt(Text2.Text)
        Label1.Caption = "The Answer is: " & Sum
    End If
    
End Sub

Private Sub Command2_Click()

    If Text1.Text = "" Or Text2.Text = "" Then
        MsgBox "An Error Occured, Please try again...", vbCritical, "Error"
    Else
        Sum = CInt(Text1.Text) - CInt(Text2.Text)
        Label1.Caption = "The Answer is: " & Sum
    End If

End Sub

Private Sub Command3_Click()

    If Text1.Text = "" Or Text2.Text = "" Then
       MsgBox "An Error Occured, Please try again...", vbCritical, "Error"
    Else
       Sum = CInt(Text1.Text) * CInt(Text2.Text)
       Label1.Caption = "The Answer is: " & Sum
    End If
    
End Sub

Private Sub Command4_Click()

    If Text1.Text = "" Or Text2.Text = "" Then
       MsgBox "An Error Occured, Please try again...", vbCritical, "Error"
    Else
       Sum = CInt(Text1.Text) / CInt(Text2.Text)
       Label1.Caption = "The Answer is: " & Sum
    End If
    
End Sub

Private Sub Command5_Click()
    End
End Sub

Private Sub Text1_Change()
Command5.Enabled = True
End Sub

Private Sub Text2_Change()
Command5.Enabled = True
End Sub
