@echo off

@rem ���O�����FWindowsMediaPlayer�Ńv���C���X�g�����̃t�@�C���Ɠ��K�w�ɍ쐬

@rem �v���C���X�g���������ɓ���Ă�������
set wpl_name=�C�ӂ̃v���C���X�g��.wpl

@rem �v���C���X�g�̑��Đ��b���������ɓ���Ă�������
set seconds=�C�ӂ̕b��

echo shutdown.exe /s /t %seconds% /f

timeout /t 30 /nobreak

cls

@rem ���̂܂܃t�@�C�������w�肷��Ύ��s���Ă���܂�
"%cd%\%wpl_name%"

shutdown.exe /s /t %seconds% /f


