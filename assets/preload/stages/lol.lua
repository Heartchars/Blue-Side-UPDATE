function onCreate()
	-- background shit
	makeLuaSprite('lol', 'lol', -600, -300);
	setScrollFactor('lol', 0.9, 0.9);
	

	addLuaSprite('lol', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end