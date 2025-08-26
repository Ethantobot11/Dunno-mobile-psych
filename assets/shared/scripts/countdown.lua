


function onCreatePost()
if songName ~= 'FreePlay' and songName ~= 'Credits' then
 runTimer('intro3',0.75)
 makeAnimatedLuaSprite('numbers','Numbers',500,200)
 addAnimationByPrefix('numbers','1','1',24,false)
 addAnimationByPrefix('numbers','2','2',24,false)
 addAnimationByPrefix('numbers','3','3',24,false)
 addAnimationByPrefix('numbers','Go','Go',24,false)
 scaleObject('numbers',1.6,1.6)
 setProperty('numbers.alpha',0)
 setObjectCamera('numbers','camOther')
 addLuaSprite('numbers',true)
 nameGF = getProperty('gf.curCharacter')
 nameBF = getProperty('boyfriend.curCharacter')
setProperty('camHUD.alpha',0)
setProperty("skipCountdown", true)
   addCharacterToList('bf_intro', 'bf');
   addCharacterToList('pibby_intro', 'gf');
follow=true
end
end

function onTimerCompleted(tag)
if tag=='intro3' then
setProperty('numbers.alpha',1)
triggerEvent('Change Character',0,'bf_intro')
setProperty('numbers.offset.x',60)
setProperty('numbers.offset.y',60)
   if nameGF == 'pibby' then
   triggerEvent('Change Character',2,nameGF..'_intro')
   end
   objectPlayAnimation('numbers','3',false)
characterPlayAnim('gf','3', true)
characterPlayAnim('bf','3' , true)
setProperty('gf.flipX',false)
doTweenZoom('camGame','camGame',1.065,0.2,'cubeIn')
playSound('3')
runTimer('intro2',0.6)
pause = true
end

if tag=='intro2' then
setProperty('numbers.alpha',1)
setProperty('numbers.offset.x',0)
setProperty('numbers.offset.y',0)
characterPlayAnim('gf','2', true)
characterPlayAnim('bf','2' , true)
objectPlayAnimation('numbers','2',false)
doTweenZoom('camGame','camGame',1.13,0.2,'cubeIn')
playSound('2')
runTimer('intro1',0.6)
runTimer('End',0.5)
end

if tag=='intro1' then
setProperty('numbers.alpha',1)
characterPlayAnim('gf','1', true)
characterPlayAnim('bf','1' , true)
objectPlayAnimation('numbers','1',false)
doTweenZoom('camGame','camGame',1.215,0.2,'cubeIn')
playSound('1')
runTimer('introGo',0.6)
runTimer('End',0.5)
end

if tag=='introGo' then
setProperty('numbers.alpha',1)
characterPlayAnim('gf','Go', true)
characterPlayAnim('bf','Go' , true)
setProperty('numbers.offset.x',140)
setProperty('numbers.offset.y',50)
objectPlayAnimation('numbers','Go',false)
doTweenZoom('camGame','camGame',1,0.2,'cubeOut')
playSound('go')
runTimer('start',0.25)
runTimer('End',0.5)
end

if tag =='End' then
setProperty('numbers.alpha',0)
end

if tag=='start' then
mustHitSection = false
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
		setProperty('vocals.volume', 1)		
cameraFlash('camOther','ffffff',0.4)

triggerEvent('Change Character',0,nameBF)
   triggerEvent('Change Character',2,nameGF)
   
follow=false
pause = false
end
end

function onSongStart()
setProperty('camHUD.alpha',1)
end

function onCountdownTick(counter)
if counter  ==  1 then
end
end

function onUpdate()
if follow == true then
triggerEvent('Camera Follow Pos',getProperty('boyfriend.x')+ 180,getProperty('boyfriend.y')+ 50)
else triggerEvent('Camera Follow Pos','','')
end 
end
function onUpdatePost(elapsed)
if pause == true then
        setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
	end
end