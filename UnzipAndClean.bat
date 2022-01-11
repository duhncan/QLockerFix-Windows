pushd %~dp0
@echo ON

for /R "%CD%" %%I in (*.7z) do "C:\Program Files\7-Zip\7z.exe" x -o"%%~dpI" -y -- "%%I"
del /S *.7z
del /S "!!!READ_ME.txt"

popd

@pause