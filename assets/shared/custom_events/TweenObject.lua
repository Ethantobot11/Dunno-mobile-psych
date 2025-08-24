function mysplit (inputstr, sep)
if sep == nil then
sep = "%s";
end
local t = {};
for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
table.insert(t, str);
end
return t;
end

function onEvent(n,v1,v2)
local table = mysplit(v1,",");
local tabledos = mysplit(v2,",");
if n == 'TweenObject' then

if v1 == 'A' then
doTweenAlpha('tweenevent', tabledos[1], tabledos[3], tabledos[2], tabledos[4])
elseif v1 == 'C' then
doTweenColor('tweenevent', tabledos[1], tabledos[3], tabledos[2], tabledos[4])
elseif v1 == 'X' then
doTweenX('tweenevent', tabledos[1], tabledos[3], tabledos[2], tabledos[4])
elseif v1 == 'Y' then
doTweenY('tweenevent', tabledos[1], tabledos[3], tabledos[2], tabledos[4])
elseif v1 == 'Ang' then
doTweenAngle('tweenevent', tabledos[1], tabledos[3], tabledos[2], tabledos[4])


end
end
end