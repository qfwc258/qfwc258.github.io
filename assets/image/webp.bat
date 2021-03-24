@echo off
color A
:: 设置转换文件的根目录，脚本会自动按树层次查找和压缩所有的jpg png
:: 注意路劲中不能有空格
:: 设置需要转换的图片路径
SET FOLDER=D:\cwlawyer\assets\image
d:
cd %FOLDER%
echo 正在查找png文件
for /R %%i in (*.png, *.jpg) do ( 
  @echo 正在压缩 %%i
  REM @echo 后缀名=%%~xi 
  REM @echo 完整路径去掉后缀名=%%~dnpi
  cwebp %%i -o %%~dnpi.webp
) 
echo finish!
pause & exit