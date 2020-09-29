@echo off

echo Iniciando script - ambiente windows 2020
echo .
echo Instalando gerenciador de pacotes chocolatey
echo .

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation

echo .
echo versão do choco:
choco -?
echo .

PAUSE

REM primarios
choco install -y googlechrome googledrive franz geforce-experience samsung-magician msiafterburner cpu-z lightscreen
echo programas primarios instalados com sucesso
echo .

REM jogos
choco install -y steam epicgameslauncher uplay discord origin vibrancegui
echo programas para jogos instalados com sucesso
echo .

REM trabalho
choco install -y python javaruntime jdk11 android-sdk git vscode notepadplusplus cmder pycharm github androidstudio
echo programas para trabalho instalados com sucesso
echo .

REM utilitarios
choco install -y spotify transmission microsoft-teams teamviewer9 teamspeak vlc foxitreader 7zip winrar
echo programas utilitarios instalados com sucesso
echo .

echo Concluido com sucesso!