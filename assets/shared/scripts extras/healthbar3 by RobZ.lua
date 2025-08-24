function onCreate()
makeAnimatedLuaSprite('uglyHB','healthbar/iconbar',0,0);
scaleObject('uglyHB', 1, 1);
doTweenX('uglyHBX', 'uglyHB.scale', 1, 0.001, 'linear')
doTweenY('uglyHBY', 'uglyHB.scale', 1, 0.001, 'linear')
luaSpriteAddAnimationByPrefix('uglyHB', 'medio', 'Icons Bar', 24, true);
luaSpritePlayAnimation('uglyHB', 'medio', true);
setObjectCamera('uglyHB', 'hud')
setScrollFactor('uglyHB', 1.8, 1.8)

addLuaSprite('uglyHB', true)
end

function onCreatePost()
setTextFont('botplayTxt', 'Finn.ttf')
setTextFont('scoreTxt', 'Finn.ttf')
setTextFont('timeTxt', 'Finn.ttf')
setProperty('healthBar.visible', false);
setProperty('healthBarBG.visible', false);
  
    setProperty('uglyHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
    setProperty('uglyHB.x', getProperty('healthBar.x') - 155)
    setProperty('uglyHB.angle', getProperty('healthBar.angle'))
    setProperty('uglyHB.y', getProperty('healthBar.y')  - 90)
    setProperty('uglyHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('uglyHB.scale.y', getProperty('healthBar.scale.y'))

	setObjectOrder('scoreTxt', 60)
	end

function onUpdate(elapsed)
if getProperty('health') >= 1.63 then
if jake2 then
setProperty('OPPO2.visible', false);
setProperty('OPP2.visible', true);
end
else
if jake2 then
setProperty('OPPO2.visible', true);
setProperty('OPP2.visible', false);
end
end

if getProperty('health') >= 1.6 then
cheio=true
else
cheio=false
end

if getProperty('health') >= 1 then
medio=true
else
medio=false
end

if getProperty('health') >= 0.20 then
pouco=true
else
pouco=false
end

if getProperty('health') >= 0.05 then
if pibby then
setProperty('PBY.visible', true);
setProperty('PBYL.visible', false);
end

if pibby2 then
setProperty('PBY2.visible', true);
setProperty('PBYL2.visible', false);
end
else

if pibby then
setProperty('PBY.visible', false);
setProperty('PBYL.visible', true);
end
if pibby2 then
setProperty('PBY2.visible', false);
setProperty('PBYL2.visible', true);
end
end
end
function onUpdatePost()
    setProperty('iconP1.x', 610)
    setProperty('iconP2.x', 510)
    setProperty('iconP2.y', 550)
    if downscroll then 
    setProperty('iconP2.y', -5)
    end
end