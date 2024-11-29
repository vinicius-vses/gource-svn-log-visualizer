@echo off
set powershell_dir=%windir%\System32\WindowsPowerShell\v1.0\powershell

echo Usuario:
set /p usuario=

echo Senha:
set /p senha=

cls
echo Carregando...
svn --non-interactive --trust-server-cert --username=%usuario% --password=%senha% checkout https://svn.spo.ifsp.edu.br/svn/a6pgp/S202302-PI-NOT/DeuQuadra/ repo
svn log repo -r 1:HEAD --xml --verbose > projetolog.xml

cls
echo Mudando os nomes...
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp3038963\",\"Brian\"} | set-content projetolog.xml"
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp3039064\",\"Bruno\"} | set-content projetolog.xml"
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp306378X\",\"Erick\"} | set-content projetolog.xml"
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp3070093\",\"Estefanie\"} | set-content projetolog.xml"
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp3039595\",\"Hebert\"} | set-content projetolog.xml"
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp3070727\",\"Natalia\"} | set-content projetolog.xml"
%powershell_dir% -Command "(get-content projetolog.xml) | %%{$_ -replace \"sp3068901\",\"Vinicius\"} | set-content projetolog.xml"

cls
echo Gerando Gource...
gource projetolog.xml --stop-at-end --key --user-image-dir "./Avatar/" -1280x720 --title "deuQuadra!" --seconds-per-day 1.2 --hide filenames --disable-progress --auto-skip-seconds 1 --date-format "%%d/%%m/%%y  %%H:%%M:%%S" -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 "Video_Gource.mp4"