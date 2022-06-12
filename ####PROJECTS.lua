Make New Project
1)Make the Following
5 Buttons 
2 Radiobuttons
2 Labels
1 Listboxes
1 Timers
1 OpenFileDialog
1 Checkbox
1 Textbox

2).Rename the Following
Quote:
Changing Name :
Listbox1 = "DLLs"

Changing Text :
Button1 = "Browse"
Button2 = "Remove"
Button3 = "Clear List"
Button4 = "Inject"
Button5 = "Quit"
RadioButton1 = "Manual"
RadioButton2 = "Automatic"
Checkbox1 = "Close after Inject"
Textbox1 = ""

3)Double Click the Title And delete All and Paste This
Code:
Public Class Form1
Private TargetProcessHandle As Integer
Private pfnStartAddr As Integer
Private pszLibFileRemote As String
Private TargetBufferSize As Integer

Public Const PROCESS_VM_READ = &H10
Public Const TH32CS_SNAPPROCESS = &H2
Public Const MEM_COMMIT = 4096
Public Const PAGE_READWRITE = 4
Public Const PROCESS_CREATE_THREAD = (&H2)
Public Const PROCESS_VM_OPERATION = (&H8)
Public Const PROCESS_VM_WRITE = (&H20)
Dim DLLFileName As String
Public Declare Function ReadProcessMemory Lib "kernel32" ( _
ByVal hProcess As Integer, _
ByVal lpBaseAddress As Integer, _
ByVal lpBuffer As String, _
ByVal nSize As Integer, _
ByRef lpNumberOfBytesWritten As Integer) As Integer

Public Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" ( _
ByVal lpLibFileName As String) As Integer

Public Declare Function VirtualAllocEx Lib "kernel32" ( _
ByVal hProcess As Integer, _
ByVal lpAddress As Integer, _
ByVal dwSize As Integer, _
ByVal flAllocationType As Integer, _
ByVal flProtect As Integer) As Integer

Public Declare Function WriteProcessMemory Lib "kernel32" ( _
ByVal hProcess As Integer, _
ByVal lpBaseAddress As Integer, _
ByVal lpBuffer As String, _
ByVal nSize As Integer, _
ByRef lpNumberOfBytesWritten As Integer) As Integer

Public Declare Function GetProcAddress Lib "kernel32" ( _
ByVal hModule As Integer, ByVal lpProcName As String) As Integer

Private Declare Function GetModuleHandle Lib "Kernel32" Alias "GetModuleHandleA" ( _
ByVal lpModuleName As String) As Integer

Public Declare Function CreateRemoteThread Lib "kernel32" ( _
ByVal hProcess As Integer, _
ByVal lpThreadAttributes As Integer, _
ByVal dwStackSize As Integer, _
ByVal lpStartAddress As Integer, _
ByVal lpParameter As Integer, _
ByVal dwCreationFlags As Integer, _
ByRef lpThreadId As Integer) As Integer

Public Declare Function OpenProcess Lib "kernel32" ( _
ByVal dwDesiredAccess As Integer, _
ByVal bInheritHandle As Integer, _
ByVal dwProcessId As Integer) As Integer

Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" ( _
ByVal lpClassName As String, _
ByVal lpWindowName As String) As Integer

Private Declare Function CloseHandle Lib "kernel32" Alias "CloseHandleA" ( _
ByVal hObject As Integer) As Integer


Dim ExeName As String = IO.Path.GetFileNameWithoutExtension(Application.ExecutablePath)
Private Sub Inject()
On Error GoTo 1 ' If error occurs, app will close without any error messages
Timer1.Stop()
Dim TargetProcess As Process() = Process.GetProcessesByName(TextBox1.Text)
TargetProcessHandle = OpenProcess(PROCESS_CREATE_THREAD Or PROCESS_VM_OPERATION Or PROCESS_VM_WRITE, False, TargetProcess(0).Id)
pszLibFileRemote = OpenFileDialog1.FileName
pfnStartAddr = GetProcAddress(GetModuleHandle("Kernel32"), "LoadLibraryA")
TargetBufferSize = 1 + Len(pszLibFileRemote)
Dim Rtn As Integer
Dim LoadLibParamAdr As Integer
LoadLibParamAdr = VirtualAllocEx(TargetProcessHandle, 0, TargetBufferSize, MEM_COMMIT, PAGE_READWRITE)
Rtn = WriteProcessMemory(TargetProcessHandle, LoadLibParamAdr, pszLibFileRemote, TargetBufferSize, 0)
CreateRemoteThread(TargetProcessHandle, 0, 0, pfnStartAddr, LoadLibParamAdr, 0, 0)
CloseHandle(TargetProcessHandle)
1: Me.Show()
End Sub

Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
DLLs.Name = "DLLs"
Button1.Text = "Browse"
Label1.Text = "Waiting for Program to Start.."
Timer1.Interval = 50
Timer1.Start()
End Sub

Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
OpenFileDialog1.Filter = "DLL (*.dll) |*.dll"
OpenFileDialog1.ShowDialog()
End Sub

Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
For i As Integer = (DLLs.SelectedItems.Count - 1) To 0 Step -1
DLLs.Items.Remove(DLLs.SelectedItems(i))
Next
End Sub

Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
DLLs.Items.Clear()
End Sub

Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
If IO.File.Exists(OpenFileDialog1.FileName) Then
Dim TargetProcess As Process() = Process.GetProcessesByName(TextBox1.Text)
If TargetProcess.Length = 0 Then

Me.Label1.Text = ("Waiting for " + TextBox1.Text + ".exe")
Else
Timer1.Stop()
Me.Label1.Text = "Successfully Injected!"
Call Inject()
If CheckBox1.Checked = True Then
End
Else
End If
End If
Else
End If 
End Sub

Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
If IO.File.Exists(OpenFileDialog1.FileName) Then
Dim TargetProcess As Process() = Process.GetProcessesByName(TextBox1.Text)
If TargetProcess.Length = 0 Then

Me.Label1.Text = ("Waiting for " + TextBox1.Text + ".exe")
Else
Timer1.Stop()
Me.Label1.Text = "Successfully Injected!"
Call Inject()
If CheckBox1.Checked = True Then
End
Else
End If
End If
Else
End If
End Sub

Private Sub OpenFileDialog1_FileOk(ByVal sender As System.Object, ByVal e As System.ComponentModel.CancelEventArgs) Handles OpenFileDialog1.FileOk
Dim FileName As String
FileName = OpenFileDialog1.FileName.Substring(OpenFileDialog1.FileName.LastIndexOf("\"))
Dim DllFileName As String = FileName.Replace("\", "")
Me.DLLs.Items.Add(DllFileName)
End Sub

Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
Me.Close()
End Sub

Private Sub RadioButton1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged
Button4.Enabled = True
Timer1.Enabled = False
End Sub

Private Sub RadioButton2_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadioButton2.CheckedChanged
Button4.Enabled = False
Timer1.Enabled = True
End Sub
End Class