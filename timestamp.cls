VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub Worksheet_Change(ByVal Target As Range)
    Dim x1, y1, x2, y2 As Integer
    x1 = Sheets("�^�C���X�^���v").Range("B2").Value
    y1 = Columns(Sheets("�^�C���X�^���v").Range("A2").Value).Column
    x2 = Sheets("�^�C���X�^���v").Range("D2").Value
    y2 = Columns(Sheets("�^�C���X�^���v").Range("C2").Value).Column

    If Target.Count = 1 Then
    If Target.Row >= x1 And Target.Row <= x2 Then
    If Target.Column >= y1 And Target.Column <= y2 Then
    If Target.Row Mod 2 = 0 Then
    
        If InStr(Target.Value, "�m�F��") <> 0 Then
            Sheets("�^�C���X�^���v").Cells.Find(Target.Address(False, False)).Offset(0, 1) = Now()
        ElseIf InStr(Target.Value, "OK") <> 0 Then
            Sheets("�^�C���X�^���v").Cells.Find(Target.Address(False, False)).Offset(0, 2) = Now()
        End If
        
    End If
    End If
    End If
    End If
End Sub

Sub reset()
Attribute reset.VB_ProcData.VB_Invoke_Func = "q\n14"
    Dim x1, y1, x2, y2 As Integer
    x1 = Sheets("�^�C���X�^���v").Range("B2").Value
    y1 = Columns(Sheets("�^�C���X�^���v").Range("A2").Value).Column
    x2 = Sheets("�^�C���X�^���v").Range("D2").Value
    y2 = Columns(Sheets("�^�C���X�^���v").Range("C2").Value).Column

    Sheets("�^�C���X�^���v").Range("G3:I" & Sheets("�^�C���X�^���v").Range("G3").End(xlDown).Row).ClearContents
    
    Dim start_row, last_row, counter As Integer, H As Variant
    start_row = 3
    last_row = start_row + Application.WorksheetFunction.RoundUp((x2 - x1 + 1) / 2, 0) * (y2 - y1 + 1)

    H = Sheets("�^�C���X�^���v").Range(Sheets("�^�C���X�^���v").Cells(start_row, 7), Sheets("�^�C���X�^���v").Cells(last_row, 7))

    counter = 1
    For y = y1 To y2
     For x = x1 To x2
      If x Mod 2 = 0 Then
       'Debug.Print Cells(x, y).Address(False, False)
       H(counter, 1) = Cells(x, y).Address(False, False)
       counter = counter + 1
      End If
     Next
    Next
    
    Sheets("�^�C���X�^���v").Range(Sheets("�^�C���X�^���v").Cells(start_row, 7), Sheets("�^�C���X�^���v").Cells(last_row, 7)) = H
    
End Sub