@echo off

echo ***********************************
echo һ����λ������apk����(jad decompile apk)
echo ==================================
echo v1.0.0 20170328 By Singun https://github.com/singun-lxd/onekey-decompile-apk

echo !
echo ����
echo --------
echo 1. ����jadx
echo 2. ֻ��ִ��һ�����ɷ������apk������Դ�ʹ���

echo ?
echo ʹ�÷���
echo --------
echo 1. ��apk�ļ��ŵ�_jad-decompile-apk.batĿ¼��
echo 2. ��apk�ļ���ק��_jad-decompile-apk.bat��
echo 3. ִ����ɺ�
echo    ����jad-decompile-apk.batĿ¼�����ɺ�apk����_out��Ŀ¼(������jadx����������Ķ���)
echo    jadx-gui�Զ�����ʾ������������
echo ***********************************


rem ��ק���ļ����������еĵ�һ������
set apkFile=%1
rem ��ȡ������ļ�Ŀ¼(����apkFile�����Ƽ���jar��׺��)
set outDir=%apkFile%_out


rem cd���������ڵĸ�Ŀ¼
cd /d %apkFile%\..

rem Ҳ���Ե���_tools\jadx\bin\jadx -d "%outDir%" "%apkFile%"������ļ�����gui��ͨ���˵������ļ�
echo ........jadx-gui..........
call _tools\jadx\bin\jadx-gui "%apkFile%"
