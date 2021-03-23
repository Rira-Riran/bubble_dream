@echo off

cd "..\Main"

:rtn

echo 泡夢のフォルダごとMainの中に入れてから進んでください。&echo.
echo コースの選択をしてください。数値のものが泡夢のみ、禁忌(完成版)を含めるものはアルファベットです。&echo.

@rem コースの選択
choice /c:123456abcd0 /n /m "1:感覚共有(クリ)コース 2:感覚共有(性器)コース 3:体外ポルチオ開発コース 4:脳イキ完全調教コース 5:感覚共有連続コース 6:感覚共有・ポルチオ開発コース a:禁忌コース b:脳イキ完全調教～ストレッチ付き～コース c:脳イキフルコース～ストレッチ付き～ d:完全フルコース 0:睡眠のみ"

if %errorlevel%==1 ( set course="感覚共有(クリ)コース" )
if %errorlevel%==2 ( set course="感覚共有(性器)コース" )
if %errorlevel%==3 ( set course="体外ポルチオ開発コース" )
if %errorlevel%==4 ( set course="脳イキ完全調教コース" )
if %errorlevel%==5 ( set course="感覚共有連続コース" )
if %errorlevel%==6 ( set course="感覚共有・ポルチオ開発コース" )
if %errorlevel%==7 ( set course="禁忌コース" )
if %errorlevel%==8 ( set course="脳イキ完全調教～ストレッチ付き～コース" )
if %errorlevel%==9 ( set course="脳イキフルコース～ストレッチ付き～" )
if %errorlevel%==10 ( set course="完全フルコース" )
if %errorlevel%==11 ( set course="睡眠のみ" )

@rem 秒数をセット
if %course%=="感覚共有(クリ)コース" ( set /a seconds=197+642+1211+113 )
if %course%=="感覚共有(性器)コース" ( set /a seconds=197+642+982+113 )
if %course%=="体外ポルチオ開発コース" ( set /a seconds=197+642+635+113 )
if %course%=="脳イキ完全調教コース" ( set /a seconds=197+642+1520+113+261 )
if %course%=="感覚共有連続コース" ( set /a seconds=197+642+1211+982+113 )
if %course%=="感覚共有・ポルチオ開発コース" ( set /a seconds=197+642+1211+982+635+113 )
if %course%=="禁忌コース" ( set /a seconds=197+642+773+776+113 )
if %course%=="脳イキ完全調教～ストレッチ付き～コース" ( set /a seconds=197+642+1520+113+773 )
if %course%=="脳イキフルコース～ストレッチ付き～" ( set /a seconds=197+642+1211+982+1520+113+773 )
if %course%=="完全フルコース" ( set /a seconds=197+642+1211+982+635+1520+773+776+113 )
if %course%=="睡眠のみ" ( set /a seconds=197+642 )

choice /c:1230 /m "誘導は要りますか？ 1:軽く 2:深く 3:深く+意識付け 0:不要" /n
set guidance=%errorlevel%

if %guidance%==1 ( set /a seconds=%seconds%+623 )
if %guidance%==2 ( set /a seconds=%seconds%+762 )
if %guidance%==3 ( set /a seconds=%seconds%+762+623 )

choice /c:yn /m "%course%は%seconds%秒(1時間=3600秒)かかります。よろしいですか？"

if %errorlevel%==2 ( echo.&goto rtn ) 

@rem 30秒待機
timeout /t 30 /nobreak

cls

@rem 終了後シャットダウン
shutdown.exe /s /t %seconds% /f

"%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック1　事前説明.wav"
timeout /t 197 /nobreak

if %guidance%==1 (
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック2　事前  誘導催眠.wav"
  timeout /t 623 /nobreak
)
if %guidance%==2 (
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\800DL特典\深層催眠_01.mp3"
  timeout /t 762 /nobreak    
)
if %guidance%==3 (
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\800DL特典\深層催眠_01.mp3"
  timeout /t 762 /nobreak    
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック2　事前  誘導催眠.wav"
  timeout /t 623 /nobreak  
)

if %course%=="感覚共有(クリ)コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック3　耳攻め　感覚共有(クリ).wav"
  timeout /t 1211 /nobreak  
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak  
)
if %course%=="感覚共有(性器)コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック4　口内陵辱　感覚共有(性器).wav"
  timeout /t 982 /nobreak  
)
if %course%=="体外ポルチオ開発コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\100DL特典\WAV\100DL特典　(体外ポルチオ).wav"
  timeout /t 635 /nobreak  
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak  
)
if %course%=="脳イキ完全調教コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック5　※視聴非推奨　脳イキ完全調教　(日常生活に支障が出る可能性が有ります。).wav"
  timeout /t 1520 /nobreak
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック6　半覚醒(あまり使用しないで下さい。).wav"
  timeout /t 261 /nobreak
)
if %course%=="感覚共有連続コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック3　耳攻め　感覚共有(クリ).wav"
  timeout /t 1211 /nobreak  
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック4　口内陵辱　感覚共有(性器).wav"
  timeout /t 982 /nobreak          
)
if %course%=="感覚共有・ポルチオ開発コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック3　耳攻め　感覚共有(クリ).wav"
  timeout /t 1211 /nobreak  
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック4　口内陵辱　感覚共有(性器).wav"
  timeout /t 982 /nobreak      
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\100DL特典\WAV\100DL特典　(体外ポルチオ).wav"
  timeout /t 635 /nobreak  
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak  
)
if %course%=="禁忌コース" ( 
 "%cd%\禁忌　完成\禁忌事前_01.mp3"
  timeout /t 773 /nobreak  
 "%cd%\禁忌　完成\禁忌_01.mp3"
  timeout /t 776 /nobreak  
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak      
)
if %course%=="脳イキ完全調教～ストレッチ付き～コース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック5　※視聴非推奨　脳イキ完全調教　(日常生活に支障が出る可能性が有ります。).wav"
  timeout /t 1520 /nobreak
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak  
 "%cd%\禁忌　完成\禁忌事前_01.mp3"
  timeout /t 773 /nobreak      
)
if %course%=="脳イキフルコース～ストレッチ付き～" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\50DL特典\EX.トラック3.wav"
  timeout /t 1211 /nobreak  
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック4　口内陵辱　感覚共有(性器).wav"
  timeout /t 982 /nobreak      
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック5　※視聴非推奨　脳イキ完全調教　(日常生活に支障が出る可能性が有ります。).wav"
  timeout /t 1520 /nobreak
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak  
 "%cd%\禁忌　完成\禁忌事前_01.mp3"
  timeout /t 773 /nobreak      
)
if %course%=="完全フルコース" ( 
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック3　耳攻め　感覚共有(クリ).wav"
  timeout /t 1211 /nobreak  
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック4　口内陵辱　感覚共有(性器).wav"
  timeout /t 982 /nobreak      
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\100DL特典\WAV\100DL特典　(体外ポルチオ).wav"
  timeout /t 635 /nobreak  
  "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック5　※視聴非推奨　脳イキ完全調教　(日常生活に支障が出る可能性が有ります。).wav"
  timeout /t 1520 /nobreak
 "%cd%\禁忌　完成\禁忌事前_01.mp3"
  timeout /t 773 /nobreak  
 "%cd%\禁忌　完成\禁忌_01.mp3"
  timeout /t 776 /nobreak  
 "%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\wav\トラック7　催眠解除.wav"
  timeout /t 113 /nobreak  
)

"%cd%\泡 夢 ～脳イキ音声～ (非常に依存性が高いのでご注意下さい)\50DL特典\睡眠.wav"
timeout /t 642 /nobreak

