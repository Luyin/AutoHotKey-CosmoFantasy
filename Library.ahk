activateNoxPlayer()
{
	/* 
	������ Ȱ��ȭ
	*/
	IfWinExist NoxPlayer
	{
		WinActivate NoxPlayer
		CoordMode, ToolTip, Window
	}
}

selectQuest()
{
	;����Ʈ ��ư ����
	MouseClick, left, 740, 500
	Sleep, 2000
}

selectBattle()
{
	;��Ʋ ��ư ����
	MouseClick, left, 600, 500
	Sleep, 2000
}

selectCosmoChallenge()
{
	;�ڽ��� ç���� ��ư ����
	MouseClick, left, 250, 400
	Sleep, 3000
}

selectNurture()
{
	;����Ʈ ���� ����Ʈ
	MouseClick, left, 160, 451
	Sleep, 2000
}

selectGathering()
{
	;���� ���� ����Ʈ
	MouseClick, left,400, 450
	Sleep, 2000
}

selectSPQuest()
{
	;���� ���� ����Ʈ
	MouseClick, left,533, 257
	Sleep, 2000
}

selectMission()
{
	;;�̼� Ŭ��
	MouseClick, left, 42,  350
	Sleep, 2000
}

selectReceiving()
{
	;;�̼� Ŭ��
	MouseClick, left,  42,  520
	Sleep, 2000
}

selectGetting()
{
	;;ȹ�� ����
	MouseClick, left,  545,  242
	Sleep, 2000
	MouseClick, left,  403,  468
	Sleep, 2000
}

selectGettingAll()
{
	MouseClick, left,  398,  507
	Sleep, 2000
	MouseClick, left,  404,  452
	Sleep, 2000
}

selectNurtureMenu(nurtureMode)
{
	if (nurtureMode = 0)
	{
		;�ɽż����� ��
		selectFirstMenu()
	} 
	else if (nurtureMode = 1)
	{
		;������ȭ�� ��
		selectSecondMenu()
	}
}

selectGatheringMenu(gatherMode)
{
	if gatherMode = 0
	{
		;���� ����
		selectFirstMenu()
	} 
	else if gatherMode = 1
	{
		;���� ����
		selectSecondMenu()
	}
	else if gatherMode = 2
	{
		;����� ����
		selectThirdMenu()
	}
}

selectOpenSPQuestMenu(SPMode)
{
	if SPMode = 0
	{
		;ù��°
		MouseClick, left,581, 239
	} 
	else if SPMode = 1
	{
		;�ι�°
		MouseClick, left,581, 380
	}
	else if SPMode = 2
	{
		;����°
		MouseClick, left,581, 526
	}
	Sleep, 2000
	;���� ������ �Һ� ���� ����Ʈ ����
	MouseClick, left,421, 384
	Sleep, 2000
}

selectSPQuestMenu(SPMode)
{
	if SPMode = 0
	{
		;ù��°
		MouseClick, left,581, 239
	} 
	else if SPMode = 1
	{
		;�ι�°(���� EXP)
		MouseClick, left,581, 380
	}
	else if SPMode = 2
	{
		;����°(�뷮 �帵ũ&����)
		MouseClick, left,581, 526
	}
	Sleep, 2000
}

selectStartFromHard()
{
	;�ڽ��� ç�������� �ϵ� ����
	MouseClick, left, 350, 115
	Sleep, 2000
	
	MouseClick, left, 450, 475
	Sleep, 2000
}

selectFirstMenu()
{
	MouseClick, left,190, 180
	Sleep, 1000
}

selectSecondMenu()
{
	MouseClick, left,320, 180
	Sleep, 1000
}

selectThirdMenu()
{
	MouseClick, left,450, 180
	Sleep, 1000
}

scrollToBottom()
{
	;���ϴ����� ����
	MouseClick, left,700, 500
	Sleep, 500
}

selectSPDifficulty(difficultyMode)
{
	if difficultyMode = 0
	{
		MouseClick, left,552, 240
	}
	else if difficultyMode = 1
	{
		MouseClick, left,552, 320
	}
	else if difficultyMode = 2
	{
		MouseClick, left,552, 400
	}
	else if difficultyMode = 3
	{
		MouseClick, left,552, 480
	}
	else if difficultyMode = 4
	{
		MouseClick, left,552, 560
	}
	else if difficultyMode = 5
	{
		MouseClick, left,703, 593
		Sleep, 1000
		MouseClick, left,552, 560
	}
	Sleep, 2000
}

selectDifficulty(difficultyMode)
{
	if difficultyMode = 0
	{
		MouseClick, left,590, 320
	}
	else if difficultyMode = 1
	{
		MouseClick, left,590, 420		
	}
	else if difficultyMode = 2
	{
		MouseClick, left,590, 520		
	}
	Sleep, 2000
}

selectParty()
{
	;��Ƽ ��
	MouseClick, left,700, 515
	Sleep, 3000
}

selectStartBattle()
{
	;���� ����
	MouseClick, left,700, 520
	Sleep, 1000
}

selectStartBattleInCosmoChallenge()
{
	;�ڽ��� ç�������� ��Ʋ ����
	MouseClick, left,700, 580
	Sleep, 5000
}

enableAutoBattle()
{
	;���� ��Ʋ
	MouseClick, left,35, 530
	return true
}

selectOpenInCosmoChallenge()
{
	;�ڽ��� ç�������� �¸��� ���� ����
	MouseClick, left, 400, 475
	Sleep, 3000
	
	MouseClick, left, 400, 475
	Sleep, 3000
}

selectNext()
{
	;NEXT
	MouseClick, left,630, 300
	Sleep, 14000
}

selectList()
{
	;����Ʈ
	MouseClick, left,680, 500
	Sleep, 1000
}

selectNobtn()
{
	;���� �ƴϿ� ����
	Send, {ESC}
	Sleep, 1000
}

selectESC()
{
	;ESC ��ư ����
	Send, {ESC}
	Sleep, 2000
}

gobackToMain()
{
	;���� ȭ������ ���ư���
	MouseClick, left,40, 75
	Sleep, 5000
}

isInDetailMenu()
{
	;���ư��� ��ư Ȯ��
	activateNoxPlayer()
	ImageSearch, vx, vy, 14, 80, 83, 114, *80 images/return.png
	Sleep, 1000

	if errorlevel = 0
	{
		return true
	}
	else
	{
		return false
	}
}

isAvailableChallenge()
{
	;������ ��� Ȯ��
	activateNoxPlayer()
	ImageSearch, vx, vy, 596, 213, 632, 245, *80 images/zeroJang.png
	Sleep, 1000
	
	if(errorlevel = 0) 
	{
		return false
	}
	else
	{
		return true
	}
}

isBattleFinished()
{
	activateNoxPlayer()
	ImageSearch, vx, vy, 649, 490, 726, 522, *80 images/listbtn.png
	Sleep, 1000
	
	if(errorlevel = 0) 
	{
		;MsgBox, % errorlevel
		return true
	}
	else
	{
		;MsgBox, % errorlevel
		return false
	}
}

isEnalbedAutoBattle()
{
	;activateNoxPlayer()
	ImageSearch, vx, vy, 7, 510, 62, 564, *50 images/autoBattle.png
	Sleep, 1000
		
	if (errorlevel = 0)
	{
		return false
	}
	else
	{
		return true
	}
}

isEnalbedAutoBattleInCosmo()
{
	;activateNoxPlayer()
	ImageSearch, vx, vy, 7, 510, 62, 564, *50 images/autoBattleInCosmo.png
	Sleep, 1000
		
	if (errorlevel = 0)
	{
		return false
	}
	else
	{
		return true
	}
}

isAvailableStamina()
{
	activateNoxPlayer()
	ImageSearch, vx, vy, 442, 345, 490, 378, *80 images/yesbtn.png
	Sleep, 1000
	
	if (errorlevel = 0)
	{
		return false
	}
	else
	{
		return true
	}
}

isDisabledBattle()
{
	activateNoxPlayer()
	ImageSearch, vx, vy, 680, 582, 728, 613, *80 images/disabledBattle.png
	Sleep, 1000
	
	if (errorlevel = 0)
	{
		return true
	}
	else
	{
		return false
	}
}

isAvailableSeletingDifficulty(SPMode)
{
	activateNoxPlayer()
	if SPMode = 0
	{
		; ù��° �׸�
		ImageSearch, vx, vy, 532, 224, 630, 254, *80 images/selectDifficulty.png
	}
	else
	{
		; (�ι�°) ����� ���� ���� ���� ó��
		ImageSearch, vx, vy, 532, 369, 630, 400, *80 images/selectDifficulty.png
	}
	
	Sleep, 1000
	
	if (errorlevel = 0)
	{
		return true
	}
	else
	{
		return false
	}
}

isAvailableGetting()
{
	activateNoxPlayer()
	
	; ù��° �׸�
	ImageSearch, vx, vy, 500, 230, 580, 260, *80 images/challengebtn.png
	
	Sleep, 1000
	
	if (errorlevel = 0)
	{
		return true
	}
	else
	{
		return false
	}
}