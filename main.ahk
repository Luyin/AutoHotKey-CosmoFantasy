#Include Constant.ahk
#Include Library.ahk
#Include Run.ahk

Gui,+AlwaysOnTop
Gui, show, x80 y80 h460 w190, '����Ʈ ���̾� ��ũ��'
Gui, Add,Button,x20 y20 h50 w150 gF1, ����Ʈ ���� ����Ʈ
Gui, Add,Button,x20 y90 h50 w150 gF2, ���� ���� ����Ʈ
Gui, Add,Button,x20 y160 h50 w150 gF3, SP ����Ʈ
Gui, Add,Button,x20 y230 h50 w150 gF4, �ڽ��� ��Ʋ ����Ʈ
Gui, Add,Button,x20 y300 h50 w150 gF5, ������&�̼���
Gui, Add,Button,x20 y370 h50 w150 gF6, ��ü ����
return

guiescape:
guiclose:
	exitapp
	return


F1:
;����Ʈ ���� ����Ʈ
runSaintNurture()
return

F2:
;��� ���� ���� ����Ʈ ����
runGathering()
return

F3:
;SP ����Ʈ ����
runSPQuest()
return

F4:
;�ڽ��� ��Ʋ ����
runCosmoBattle()
return

F5:
;�̼��� & ������ ����
runReceiving()
runMission()
return

F6::

;��ü ����
runSaintNurture()
runGathering()
runSPQuest()
runCosmoBattle()
return

F12::
ExitApp
return



