activateNoxPlayer()
{
	/* 
	윈도우 활성화
	*/
	IfWinExist NoxPlayer
	{
		WinActivate NoxPlayer
		CoordMode, ToolTip, Window
	}
}

selectQuest()
{
	;퀘스트 버튼 선택
	MouseClick, left, 740, 500
	Sleep, 2000
}

selectBattle()
{
	;배틀 버튼 선택
	MouseClick, left, 600, 500
	Sleep, 2000
}

selectCosmoChallenge()
{
	;코스모 챌린지 버튼 선택
	MouseClick, left, 250, 400
	Sleep, 3000
}

selectNurture()
{
	;세인트 육성 퀘스트
	MouseClick, left, 160, 451
	Sleep, 2000
}

selectGathering()
{
	;소재 수집 퀘스트
	MouseClick, left,400, 450
	Sleep, 2000
}

selectSPQuest()
{
	;소재 수집 퀘스트
	MouseClick, left,533, 257
	Sleep, 2000
}

selectMission()
{
	;;미션 클릭
	MouseClick, left, 42,  350
	Sleep, 2000
}

selectReceiving()
{
	;;미션 클릭
	MouseClick, left,  42,  520
	Sleep, 2000
}

selectGetting()
{
	;;획득 선택
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
		;심신수련의 진
		selectFirstMenu()
	} 
	else if (nurtureMode = 1)
	{
		;금은보화의 진
		selectSecondMenu()
	}
}

selectGatheringMenu(gatherMode)
{
	if gatherMode = 0
	{
		;물리 봉인
		selectFirstMenu()
	} 
	else if gatherMode = 1
	{
		;투기 봉인
		selectSecondMenu()
	}
	else if gatherMode = 2
	{
		;브론즈 전선
		selectThirdMenu()
	}
}

selectOpenSPQuestMenu(SPMode)
{
	if SPMode = 0
	{
		;첫번째
		MouseClick, left,581, 239
	} 
	else if SPMode = 1
	{
		;두번째
		MouseClick, left,581, 380
	}
	else if SPMode = 2
	{
		;세번째
		MouseClick, left,581, 526
	}
	Sleep, 2000
	;전용 아이템 소비 개방 퀘스트 오픈
	MouseClick, left,421, 384
	Sleep, 2000
}

selectSPQuestMenu(SPMode)
{
	if SPMode = 0
	{
		;첫번째
		MouseClick, left,581, 239
	} 
	else if SPMode = 1
	{
		;두번째(유저 EXP)
		MouseClick, left,581, 380
	}
	else if SPMode = 2
	{
		;세번째(대량 드링크&코인)
		MouseClick, left,581, 526
	}
	Sleep, 2000
}

selectStartFromHard()
{
	;코스모 챌린지에서 하드 리셋
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
	;최하단으로 내림
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
	;파티 편성
	MouseClick, left,700, 515
	Sleep, 3000
}

selectStartBattle()
{
	;전투 개시
	MouseClick, left,700, 520
	Sleep, 1000
}

selectStartBattleInCosmoChallenge()
{
	;코스모 챌린지에서 배틀 선택
	MouseClick, left,700, 580
	Sleep, 5000
}

enableAutoBattle()
{
	;오토 배틀
	MouseClick, left,35, 530
	return true
}

selectOpenInCosmoChallenge()
{
	;코스모 챌린지에서 승리후 상자 열기
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
	;리스트
	MouseClick, left,680, 500
	Sleep, 1000
}

selectNobtn()
{
	;왼쪽 아니오 선택
	Send, {ESC}
	Sleep, 1000
}

selectESC()
{
	;ESC 버튼 선택
	Send, {ESC}
	Sleep, 2000
}

gobackToMain()
{
	;메인 화면으로 돌아가기
	MouseClick, left,40, 75
	Sleep, 5000
}

isInDetailMenu()
{
	;돌아가기 버튼 확인
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
	;도전권 장수 확인
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
		; 첫번째 항목
		ImageSearch, vx, vy, 532, 224, 630, 254, *80 images/selectDifficulty.png
	}
	else
	{
		; (두번째) 경우의 수에 대한 예외 처리
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
	
	; 첫번째 항목
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