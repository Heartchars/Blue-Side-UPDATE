function onCreate()
	
	makeLuaSprite('theSky','funsky',-300,-300)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('theSky', 1, 1)
	
	makeLuaSprite('theBushes','bush2',-300,20)
	addLuaSprite('theBushes',false)

	makeAnimatedLuaSprite('treeBoysBack','majin boppers back',-100,-300)
	addAnimationByPrefix('treeBoysBack','bopper','MajinBop2',24,true)
	addLuaSprite('treeBoysBack',false)

	makeLuaSprite('otherBushes','bush 1',-300,300)
	addLuaSprite('otherBushes',false)

	makeAnimatedLuaSprite('treeBoysFront','majin boppers front',-500,-300)
	addAnimationByPrefix('treeBoysFront','bopper','MajinBop1',24,true)
	addLuaSprite('treeBoysFront',false)

	makeLuaSprite('theGround','funfloor',-350,500)
	addLuaSprite('theGround',false)

	makeAnimatedLuaSprite('majinFrontLEFT','majin FG2',-350,550)
	addAnimationByPrefix('majinFrontLEFT','bopper','majin front bopper',24,true)
	addLuaSprite('majinFrontLEFT',true)

	makeAnimatedLuaSprite('majinFrontRIGHT','majin FG1',1100,600)
	addAnimationByPrefix('majinFrontRIGHT','bopper','majin front bopper',24,true)
	addLuaSprite('majinFrontRIGHT',true)

	close(true)
end

function onBeatHit()

end

function onStepHit()

end

function onUpdate()

end