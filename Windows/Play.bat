@echo off

cd "..\Main"

:rtn

echo �A���̃t�H���_����Main�̒��ɓ���Ă���i��ł��������B&echo.
echo �R�[�X�̑I�������Ă��������B���l�̂��̂��A���̂݁A�֊�(������)���܂߂���̂̓A���t�@�x�b�g�ł��B&echo.

@rem �R�[�X�̑I��
choice /c:123456abcd0 /n /m "1:���o���L(�N��)�R�[�X 2:���o���L(����)�R�[�X 3:�̊O�|���`�I�J���R�[�X 4:�]�C�L���S�����R�[�X 5:���o���L�A���R�[�X 6:���o���L�E�|���`�I�J���R�[�X a:�֊��R�[�X b:�]�C�L���S�����`�X�g���b�`�t���`�R�[�X c:�]�C�L�t���R�[�X�`�X�g���b�`�t���` d:���S�t���R�[�X 0:�����̂�"

if %errorlevel%==1 ( set course="���o���L(�N��)�R�[�X" )
if %errorlevel%==2 ( set course="���o���L(����)�R�[�X" )
if %errorlevel%==3 ( set course="�̊O�|���`�I�J���R�[�X" )
if %errorlevel%==4 ( set course="�]�C�L���S�����R�[�X" )
if %errorlevel%==5 ( set course="���o���L�A���R�[�X" )
if %errorlevel%==6 ( set course="���o���L�E�|���`�I�J���R�[�X" )
if %errorlevel%==7 ( set course="�֊��R�[�X" )
if %errorlevel%==8 ( set course="�]�C�L���S�����`�X�g���b�`�t���`�R�[�X" )
if %errorlevel%==9 ( set course="�]�C�L�t���R�[�X�`�X�g���b�`�t���`" )
if %errorlevel%==10 ( set course="���S�t���R�[�X" )
if %errorlevel%==11 ( set course="�����̂�" )

@rem �b�����Z�b�g
if %course%=="���o���L(�N��)�R�[�X" ( set /a seconds=197+642+1211+113 )
if %course%=="���o���L(����)�R�[�X" ( set /a seconds=197+642+982+113 )
if %course%=="�̊O�|���`�I�J���R�[�X" ( set /a seconds=197+642+635+113 )
if %course%=="�]�C�L���S�����R�[�X" ( set /a seconds=197+642+1520+113+261 )
if %course%=="���o���L�A���R�[�X" ( set /a seconds=197+642+1211+982+113 )
if %course%=="���o���L�E�|���`�I�J���R�[�X" ( set /a seconds=197+642+1211+982+635+113 )
if %course%=="�֊��R�[�X" ( set /a seconds=197+642+773+776+113 )
if %course%=="�]�C�L���S�����`�X�g���b�`�t���`�R�[�X" ( set /a seconds=197+642+1520+113+773 )
if %course%=="�]�C�L�t���R�[�X�`�X�g���b�`�t���`" ( set /a seconds=197+642+1211+982+1520+113+773 )
if %course%=="���S�t���R�[�X" ( set /a seconds=197+642+1211+982+635+1520+773+776+113 )
if %course%=="�����̂�" ( set /a seconds=197+642 )

choice /c:1230 /m "�U���͗v��܂����H 1:�y�� 2:�[�� 3:�[��+�ӎ��t�� 0:�s�v" /n
set guidance=%errorlevel%

if %guidance%==1 ( set /a seconds=%seconds%+623 )
if %guidance%==2 ( set /a seconds=%seconds%+762 )
if %guidance%==3 ( set /a seconds=%seconds%+762+623 )

choice /c:yn /m "%course%��%seconds%�b(1����=3600�b)������܂��B��낵���ł����H"

if %errorlevel%==2 ( echo.&goto rtn ) 

@rem 30�b�ҋ@
timeout /t 30 /nobreak

cls

@rem �I����V���b�g�_�E��
shutdown.exe /s /t %seconds% /f

"%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N1�@���O����.wav"
timeout /t 197 /nobreak

if %guidance%==1 (
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N2�@���O  �U���Ö�.wav"
  timeout /t 623 /nobreak
)
if %guidance%==2 (
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\800DL���T\�[�w�Ö�_01.mp3"
  timeout /t 762 /nobreak    
)
if %guidance%==3 (
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\800DL���T\�[�w�Ö�_01.mp3"
  timeout /t 762 /nobreak    
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N2�@���O  �U���Ö�.wav"
  timeout /t 623 /nobreak  
)

if %course%=="���o���L(�N��)�R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N3�@���U�߁@���o���L(�N��).wav"
  timeout /t 1211 /nobreak  
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak  
)
if %course%=="���o���L(����)�R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N4�@�����ːJ�@���o���L(����).wav"
  timeout /t 982 /nobreak  
)
if %course%=="�̊O�|���`�I�J���R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\100DL���T\WAV\100DL���T�@(�̊O�|���`�I).wav"
  timeout /t 635 /nobreak  
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak  
)
if %course%=="�]�C�L���S�����R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N5�@�������񐄏��@�]�C�L���S�����@(���퐶���Ɏx�Ⴊ�o��\�����L��܂��B).wav"
  timeout /t 1520 /nobreak
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N6�@���o��(���܂�g�p���Ȃ��ŉ������B).wav"
  timeout /t 261 /nobreak
)
if %course%=="���o���L�A���R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N3�@���U�߁@���o���L(�N��).wav"
  timeout /t 1211 /nobreak  
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N4�@�����ːJ�@���o���L(����).wav"
  timeout /t 982 /nobreak          
)
if %course%=="���o���L�E�|���`�I�J���R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N3�@���U�߁@���o���L(�N��).wav"
  timeout /t 1211 /nobreak  
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N4�@�����ːJ�@���o���L(����).wav"
  timeout /t 982 /nobreak      
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\100DL���T\WAV\100DL���T�@(�̊O�|���`�I).wav"
  timeout /t 635 /nobreak  
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak  
)
if %course%=="�֊��R�[�X" ( 
 "%cd%\�֊��@����\�֊����O_01.mp3"
  timeout /t 773 /nobreak  
 "%cd%\�֊��@����\�֊�_01.mp3"
  timeout /t 776 /nobreak  
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak      
)
if %course%=="�]�C�L���S�����`�X�g���b�`�t���`�R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N5�@�������񐄏��@�]�C�L���S�����@(���퐶���Ɏx�Ⴊ�o��\�����L��܂��B).wav"
  timeout /t 1520 /nobreak
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak  
 "%cd%\�֊��@����\�֊����O_01.mp3"
  timeout /t 773 /nobreak      
)
if %course%=="�]�C�L�t���R�[�X�`�X�g���b�`�t���`" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\50DL���T\EX.�g���b�N3.wav"
  timeout /t 1211 /nobreak  
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N4�@�����ːJ�@���o���L(����).wav"
  timeout /t 982 /nobreak      
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N5�@�������񐄏��@�]�C�L���S�����@(���퐶���Ɏx�Ⴊ�o��\�����L��܂��B).wav"
  timeout /t 1520 /nobreak
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak  
 "%cd%\�֊��@����\�֊����O_01.mp3"
  timeout /t 773 /nobreak      
)
if %course%=="���S�t���R�[�X" ( 
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N3�@���U�߁@���o���L(�N��).wav"
  timeout /t 1211 /nobreak  
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N4�@�����ːJ�@���o���L(����).wav"
  timeout /t 982 /nobreak      
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\100DL���T\WAV\100DL���T�@(�̊O�|���`�I).wav"
  timeout /t 635 /nobreak  
  "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N5�@�������񐄏��@�]�C�L���S�����@(���퐶���Ɏx�Ⴊ�o��\�����L��܂��B).wav"
  timeout /t 1520 /nobreak
 "%cd%\�֊��@����\�֊����O_01.mp3"
  timeout /t 773 /nobreak  
 "%cd%\�֊��@����\�֊�_01.mp3"
  timeout /t 776 /nobreak  
 "%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\wav\�g���b�N7�@�Ö�����.wav"
  timeout /t 113 /nobreak  
)

"%cd%\�A �� �`�]�C�L�����` (���Ɉˑ����������̂ł����Ӊ�����)\50DL���T\����.wav"
timeout /t 642 /nobreak

