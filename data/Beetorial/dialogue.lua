-- Taken from the Github Psych Engine Wiki
-- https://github.com/ShadowMario/FNF-PsychEngine/wiki/Dialogues

local doDialogue = true
function onStartCountdown()
	if doDialogue and not seenCutscene and isStoryMode then
		startDialogue('dialogue', 'breakfast') --breakfast is the dialogue music
		doDialogue = false
		return Function_Stop
	end
	return Function_Continue
end