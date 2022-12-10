@echo off
echo Warning!
echo 您正在运行具有对计算机有一定的破坏性的病毒！
echo You will run a virus that has some damage to your computer!
echo 确定要运行吗？（任意键继续/Crl+C并键入y回车继续）
echo ARE YOU SURE?
pause > nul
echo 确定要运行吗？运行本程序造成的一切后果作者一律概不负责！
pause > nul
echo 这是最后一次警告！请确保当前环境为虚拟机！
pause > nul
echo 好吧，我拦不住你。具体流程详见"README.md"。
echo Good luck!
ping 127.0.0.1 > nul
cls
::以上为运行前警告
::以下为版权信息
echo PC Desktop Protection v1.0.0
echo (C) 2022 XhuOffice. All Rights Reserved.
timeout /t 3 > nul
::以上为版权信息
