function onCreatePost()
initLuaShader('NewGlitch2')
    makeLuaSprite("CNlogo", 'aslogo', 960,600)
    setObjectCamera("CNlogo", "other")
    addLuaSprite("CNlogo", true)
scaleObject('CNlogo', 0.15,0.15)
setProperty('CNlogo.alpha',0.3)
if songName == 'FreePlay' then
setProperty('CNlogo.alpha',0)
else setProperty('CNlogo.alpha',0.35)
end
if downscroll then
setProperty('CNlogo.y',70)
end
end

function onStepHit()
end
