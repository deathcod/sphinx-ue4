D:
cd Sphinx_UE4_Demo\Plugins\sphinx-ue4\voice_data
@echo off
setlocal enabledelayedexpansion
set /p i=<buffer.txt
for %x in (*.raw) do (
..\sox-14-4-2\sox -r 16k -e signed -b 16 -c 1 %x !i!.wav
set /A i+=1
)
endlocal