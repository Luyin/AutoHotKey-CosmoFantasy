#Include Library.ahk

runSaintNurture()
{
	/* 
	모드 값 설정
	*/
	nurtureMode := 0
	difficultyMode := 1 ;(난이도5 두번째)
	
	activateNoxPlayer()
	selectQuest()
	selectNurture()

	Loop, 2
	{
		selectNurtureMenu(nurtureMode)
		
		while(isAvailableChallenge())
		{
			scrollToBottom()
			selectDifficulty(difficultyMode)
			selectParty()
			selectStartBattle()
			
			while(!isBattleFinished()) 
			{
				if(!isEnalbedAutoBattle())
				{
					enableAutoBattle()
				}
			}
			
			selectList()
			Sleep, 7000
		}
		
		nurtureMode += 1
	}

	gobackToMain()
}

runGathering()
{
	difficultyMode := 0
	gatherMode := 0
	
	activateNoxPlayer()
	selectQuest()
	selectGathering()	

	Loop, 3
	{
		selectGatheringMenu(gatherMode)
		
		while(isAvailableChallenge())
		{
			scrollToBottom()
			selectDifficulty(difficultyMode)
			selectParty()
			selectStartBattle()
			
			while(!isBattleFinished()) 
			{
				if(!isEnalbedAutoBattle())
				{
					enableAutoBattle()
				}
			}
			
			selectList()
			Sleep, 7000
		}		

		gatherMode += 1
	}

	gobackToMain()
}

runSPQuest()
{
	SPMode := 0
	difficultyMode := 5
	
	activateNoxPlayer()
	selectQuest()
	selectSPQuest()
	
	if(!isAvailableSeletingDifficulty(SPMode))
	{
		selectOpenSPQuestMenu(SPMode)
	}
	
	Loop, 2
	{
		selectSPQuestMenu(SPMode)
		selectSPDifficulty(difficultyMode)
		selectParty()
		
		if(isAvailableStamina())
		{
			selectStartBattle()
	
			while(!isBattleFinished()) 
			{
				if(!isEnalbedAutoBattle())
				{
					enableAutoBattle()
				}
			}
			
			selectList()
			Sleep, 7000
		}
		else
		{
			selectNobtn()
			break
		}
	}
	
	selectNobtn()
	selectNobtn()
	
	gobackToMain()
}

runCosmoBattle()
{
	activateNoxPlayer()
	selectBattle()
	
	selectCosmoChallenge()
	selectStartFromHard()
	
	
	while(!isDisabledBattle())
	{
		selectStartBattleInCosmoChallenge()
		selectStartBattle()
		
		if(isAvailableStamina())
		{
			while(!isBattleFinished()) 
			{
				if(!isEnalbedAutoBattleInCosmo())
				{
					enableAutoBattle()
				}
			}
		
			selectList()
			Sleep, 10000
	
			selectOpenInCosmoChallenge()
		}
		else
		{
			selectNobtn()
			break
		}
	}
	
	gobackToMain()
}