function onBeatHit()

turnvalueopp = 15
turnvalueplayer = 15
scaleObject('iconP1', 1.2, 1)
scaleObject('iconP2', 1.2, 1)
if curBeat % 2 == 0 then
turnvalueopp = -15
turnvalueplayer = -15
scaleObject('iconP1', 1.1, 1)
scaleObject('iconP2', 1.1, 1)
end




setProperty('iconP2.angle',-turnvalueopp)
setProperty('iconP1.angle',turnvalueplayer)

doTweenAngle('iconTween11','iconP1',0,crochet/1000,'sineIn')
doTweenAngle('iconTween21','iconP2',0,crochet/1000,'sineIn')


if songName == 'Radiohazard' then
	scaleObject('iconP2', 1, 1)
setProperty('iconP2.angle',turnvalueopp-turnvalueopp)
	scaleObject('iconP1', 1, 1)
setProperty('iconP1.angle',turnvalueplayer-turnvalueplayer)
end
if songName == 'Curse of Toxic' then
	scaleObject('iconP2', 1, 1)
setProperty('iconP2.angle',turnvalueopp-turnvalueopp)
end
if songName == 'Gravity' then
if curBeat >= 340 then
	scaleObject('iconP2', 1, 1)
	setProperty('iconP2.angle', turnvalueopp-turnvalueopp)
end
end
if songName == 'Stardust' or songName == 'Stardust Remix' then
	setProperty('iconP1.angle', turnvalueplayer/2)
	setProperty('iconP2.angle', -turnvalueopp/2)
	scaleObject('iconP2', 1.05, 1)
	scaleObject('iconP1', 1.05, 1)
if getProperty('health') > 1.6 then
scaleObject('iconP2', 1, 1)
end
if getProperty('health') < 0.4 then
scaleObject('iconP1', 1, 1)
end
end
if songName == 'Asteroids old' or songName == 'Weightless old' or songName == 'Event Horizon old' then
	setProperty('iconP1.angle', turnvalueplayer-turnvalueplayer)
	setProperty('iconP2.angle', -turnvalueopp+turnvalueopp)
	scaleObject('iconP2', 1.2, 1.2)
	scaleObject('iconP1', 1.2, 1.2)
end
if songName == 'Abuse' then
	if curBeat < 191 then
	setProperty('iconP1.angle', turnvalueplayer-turnvalueplayer)
	setProperty('iconP2.angle', -turnvalueopp+turnvalueopp)
	scaleObject('iconP2', 1.2, 1.2)
	scaleObject('iconP1', 1.2, 1.2)
	end
end
end