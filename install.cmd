@ECHO OFF
TITLE=Установка CrystalDiskInfo

RD /S /Q "C:\Progs\Temp"
RD /S /Q "%PROGRAMFILES%\CrystalDiskInfo"
RD /S /Q "%PROGRAMFILES(x86)%\CrystalDiskInfo"
RD /S /Q "D:\Progs\CrystalDiskInfo"
RD /S /Q "C:\Progs\CrystalDiskInfo"
DEL /F /Q "%USERPROFILE%\Desktop\DiskInfo.lnk"
DEL /F /Q "%USERPROFILE%\Desktop\CrystalDiskInfo.lnk"

XCOPY ".\files" "C:\Progs\CrystalDiskInfo" /E /I /H /K /Y /Q
COPY /Y ".\DiskInfo.ini" "C:\Progs\CrystalDiskInfo"

DEL /F /Q "C:\Progs\CrystalDiskInfo\ReadMe.txt"
DEL /F /Q "C:\Progs\CrystalDiskInfo\DiskInfo32.exe"
RD /S /Q "C:\Progs\CrystalDiskInfo\License"
RD /S /Q "C:\Progs\CrystalDiskInfo\CdiResource\themes\FlatSquare"
RD /S /Q "C:\Progs\CrystalDiskInfo\CdiResource\themes\Simplicity"

MD "C:\Progs\Temp"
COPY /Y "C:\Progs\CrystalDiskInfo\CdiResource\language\English.lang" "C:\Progs\Temp"
COPY /Y "C:\Progs\CrystalDiskInfo\CdiResource\language\Russian.lang" "C:\Progs\Temp"
DEL /F /Q "C:\Progs\CrystalDiskInfo\CdiResource\language\*.*"
COPY /Y "C:\Progs\Temp\English.lang" "C:\Progs\CrystalDiskInfo\CdiResource\language"
COPY /Y "C:\Progs\Temp\Russian.lang" "C:\Progs\CrystalDiskInfo\CdiResource\language"
RD /S /Q "C:\Progs\Temp"

COPY /Y ".\DiskInfo.lnk" "%USERPROFILE%\Desktop\"
