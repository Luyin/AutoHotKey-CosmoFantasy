#Include Constant.ahk
#Include Library.ahk
#Include Run.ahk

Gui,+AlwaysOnTop
Gui, show, x80 y80 h460 w190, '세인트 세이야 매크로'
Gui, Add,Button,x20 y20 h50 w150 gF1, 세인트 육성 퀘스트
Gui, Add,Button,x20 y90 h50 w150 gF2, 소재 수집 퀘스트
Gui, Add,Button,x20 y160 h50 w150 gF3, SP 퀘스트
Gui, Add,Button,x20 y230 h50 w150 gF4, 코스모 배틀 퀘스트
Gui, Add,Button,x20 y300 h50 w150 gF5, 수신함&미션함
Gui, Add,Button,x20 y370 h50 w150 gF6, 전체 실행
return

guiescape:
guiclose:
	exitapp
	return


F1:
;세인트 육성 퀘스트
runSaintNurture()
return

F2:
;모든 소재 수집 퀘스트 수행
runGathering()
return

F3:
;SP 퀘스트 수행
runSPQuest()
return

F4:
;코스모 배틀 수행
runCosmoBattle()
return

F5:
;미션함 & 수신함 선택
runReceiving()
runMission()
return

F6::

;전체 실행
runSaintNurture()
runGathering()
runSPQuest()
runCosmoBattle()
return

F12::
ExitApp
return



