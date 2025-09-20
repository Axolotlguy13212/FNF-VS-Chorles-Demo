local soundNumber;

function goodNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'gas note' then
        -- Randomly play one of the cough sounds
        soundNumber = math.random(1, 2)
        if soundNumber == 1 then
            playSound('Cough1', 0.7)
        elseif soundNumber == 2 then
            playSound('Cough2', 0.7)
        end
        -- Decrease health by a random amount between 0.10 and 0.50
        setProperty('health', getProperty('health') - math.random(0.10, 0.50))
    end
end