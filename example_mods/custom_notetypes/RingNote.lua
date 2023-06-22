function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'RingNote' then
			--setPropertyFromGroup('unspawnNotes', i, 'noteType', 'No Animation')
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Ring')
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end
