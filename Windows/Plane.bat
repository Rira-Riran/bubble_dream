@echo off

@rem 事前準備：WindowsMediaPlayerでプレイリストをこのファイルと同階層に作成

@rem プレイリスト名をここに入れてください
set wpl_name=任意のプレイリスト名.wpl

@rem プレイリストの総再生秒数をここに入れてください
set seconds=任意の秒数

echo shutdown.exe /s /t %seconds% /f

timeout /t 30 /nobreak

cls

@rem そのままファイル名を指定すれば実行してくれます
"%cd%\%wpl_name%"

shutdown.exe /s /t %seconds% /f


