function onCreate()
makeLuaSprite('DRWANDBF', 'icons/healthicon/icon-darwinandbf', -720, -720)
scaleObject('DRWANDBF', 1, 1);
setProperty('DRWANDBF.flipX', true)
setObjectCamera('DRWANDBF', 'hud')

makeLuaSprite('DRWANDBFL', 'icons/healthicon/icon-darwinandbf2', -720, -720)
scaleObject('DRWANDBFL', 1, 1);
setProperty('DRWANDBFL.flipX', true)
setObjectCamera('DRWANDBFL', 'hud')
	
addLuaSprite('DRWANDBF', true)
addLuaSprite('DRWANDBFL', true)

setProperty('DRWANDBF.visible', false);
setProperty('DRWANDBFL.visible', false);
end

function onCreatePost()
setTextFont('botplayTxt', 'Gumball.ttf')
setTextFont('scoreTxt', 'Gumball.ttf')
setTextFont('timeTxt', 'Gumball.ttf')

	setObjectOrder('DRWANDBF', 48)
    setObjectOrder('DRWANDBFL', 49)
	setObjectOrder('iconP1', 50)
    setObjectOrder('iconP2', 51)
    setObjectOrder('scoreTxt', 56)

end

function onUpdate(elapsed)
setProperty('DRWANDBF.x', getProperty('healthBar.x')+450)
setProperty('DRWANDBF.y', getProperty('healthBar.y') - 80)
setProperty('DRWANDBFL.x', getProperty('healthBar.x')+300)
setProperty('DRWANDBFL.y', getProperty('healthBar.y') - 80)

if getProperty('health') >= 0.05 then
if darwinandbf then
setProperty('DRWANDBF.visible', true);
setProperty('DRWANDBFL.visible', false);
end
else
if darwinandbf then
setProperty('DRWANDBF.visible', false);
setProperty('DRWANDBFL.visible', true);
end
end
end
function onBeatHit()
setProperty('DRWANDBF.scale.x', 1)
setProperty('DRWANDBF.scale.y', 1)
setProperty('DRWANDBFL.scale.x', 1)
setProperty('DRWANDBFL.scale.y', 1)
doTweenX('ICONX22', 'DRWANDBF.scale', 0.8, 1, 'circOut')
doTweenY('ICONY22', 'DRWANDBF.scale', 0.8, 1, 'circOut')
doTweenX('ICONX223', 'DRWANDBFL.scale', 0.8, 1, 'circOut')
doTweenY('ICONY223', 'DRWANDBFL.scale', 0.8, 1, 'circOut')
end
function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'GF Sing' then
setProperty('iconP1.visible', false);
darwinandbf=true
end

if noteType == '' then
setProperty('iconP1.visible', true);
darwinandbf=false
setProperty('DRWANDBF.visible', false);
setProperty('DRWANDBFL.visible', false);
setProperty('DRWANDBF.visible', false);
setProperty('DRWANDBFL.visible', false);
end

end
