@echo off

echo ***********************************
echo 一步到位反编译apk工具(jad decompile apk)
echo ==================================
echo v1.0.0 20170328 By Singun https://github.com/singun-lxd/onekey-decompile-apk

echo !
echo 功能
echo --------
echo 1. 集成jadx
echo 2. 只需执行一步即可反编译出apk所有资源和代码

echo ?
echo 使用方法
echo --------
echo 1. 将apk文件放到_jad-decompile-apk.bat目录下
echo 2. 将apk文件拖拽到_jad-decompile-apk.bat上
echo 3. 执行完成后
echo    会在jad-decompile-apk.bat目录下生成和apk名称_out的目录(放置了jadx反编译出来的东西)
echo    jadx-gui自动打开显示反编译后的内容
echo ***********************************


rem 拖拽的文件名是命令行的第一个参数
set apkFile=%1
rem 获取输出的文件目录(基于apkFile的名称加上jar后缀名)
set outDir=%apkFile%_out


rem cd到命名所在的根目录
cd /d %apkFile%\..

rem 也可以调用_tools\jadx\bin\jadx -d "%outDir%" "%apkFile%"来输出文件，在gui中通过菜单导出文件
echo ........jadx-gui..........
call _tools\jadx\bin\jadx-gui "%apkFile%"
