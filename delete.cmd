@ECHO OFF
TITLE=Удаление CrystalDiskInfo

RD /S /Q "%PROGRAMFILES%\CrystalDiskInfo"
RD /S /Q "%PROGRAMFILES(x86)%\CrystalDiskInfo"
RD /S /Q "D:\Progs\CrystalDiskInfo"
RD /S /Q "C:\Progs\CrystalDiskInfo"
DEL /F /Q "%USERPROFILE%\Desktop\DiskInfo.lnk"
DEL /F /Q "%USERPROFILE%\Desktop\CrystalDiskInfo.lnk"
