local isProtected = false

function onCreate()

	bf_POS = {getProperty('boyfriend.x'), getProperty('boyfriend.y')}

	makeLuaSprite('shieldOutline', 'SHIELD_OUTLINE', bf_POS[1] - 45, bf_POS[2] - 45);

	makeAnimatedLuaSprite('shieldAnimated', 'sonicShield', getProperty('shieldOutline.x') + 84, getProperty('shieldOutline.x') - 236);
	addAnimationByPrefix('shieldAnimated', 'idle', 'sonicShield woOow', 24, true);

	shieldVis(false);

	for a, shield in pairs({'shieldOutline', 'shieldAnimated'}) do
		setProperty(shield..'.antialiasing', false);
		setProperty(shield..'.alpha', 0.5);
		scaleObject(shield, 10.5, 10.5);
		setObjectOrder(shield, getObjectOrder('boyfriendGroup') + 1);
		addLuaSprite(shield, true);
	end

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sonic Shield Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SHIELDNOTE');
			setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end

	precacheSound('S3K_3A');

end

function goodNoteHit(i, d, n, s)
	if n == 'Sonic Shield Note' then
		if not isProtected then
			isProtected = true
			playSound('S3K_3A', 2);
			shieldVis(true);
		else
			addScore(350);
		end
	end
end

function noteMissPress()
	noteMiss();
end

function noteMiss(i, d, n, s)
	if isProtected then
		isProtected = false
		shieldVis(false);
		addMisses(-1);
	end
end

function shieldVis(isVis)
	setProperty('shieldOutline.visible', isVis);
	setProperty('shieldAnimated.visible', isVis);
end