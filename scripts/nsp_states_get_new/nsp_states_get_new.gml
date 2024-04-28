/// @description nsp_variable_global_get_new(Name)
/// @param Name
function nsp_states_get_new() {
	/*
	Underlying NSP script.
	*/
	var nspToken = global.nspToken;
	var varname;

	varname = argument[0];

	if (string_copy(varname, 1, 7) == "states.") {

	  varname = string_delete(varname, 1, 7);
	
	  }
	switch (varname) begin

	 	case "normal":
			return states.normal
		break
		case "revolver":
			return states.revolver
		break
		case "dynamite":
			return states.dynamite
		break
		case "boots":
			return states.boots
		break
		case "grabbed":
			return states.grabbed
		break
		case "tumble":
			return states.tumble
		break
		case "finishingblow":
			return states.finishingblow
		break
		case "ejected":
			return states.ejected
		break
		case "transitioncutscene":
			return states.transitioncutscene
		break
		case "fireass":
			return states.fireass
		break
		case "firemouth":
			return states.firemouth
		break
		case "mort":
			return states.mort
		break
		case "mortjump":
			return states.mortjump
		break
		case "mortattack":
			return states.mortattack
		break
		case "morthook":
			return states.morthook
		break
		case "hook":
			return states.hook
		break
		case "ghost":
			return states.ghost
		break
		case "ghostpossess":
			return states.ghostpossess
		break
		case "titlescreen":
			return states.titlescreen
		break
		case "hookshot":
			return states.hookshot
		break
		case "tacklecharge":
			return states.tacklecharge
		break
		case "cheeseball":
			return states.cheeseball
		break
		case "cheeseballclimbwall":
			return states.cheeseballclimbwall
		break
		case "slap":
			return states.slap
		break
		case "cheesepep":
			return states.cheesepep
		break
		case "cheesepepstick":
			return states.cheesepepstick
		break
		case "cheesepepjump":
			return states.cheesepepjump
		break
		case "cheesepepfling":
			return states.cheesepepfling
		break
		case "cheesepeplaunch":
			return states.cheesepeplaunch
		break
		case "cheesepepstickside":
			return states.cheesepepstickside
		break
		case "cheesepepstickup":
			return states.cheesepepstickup
		break
		case "rideweenie":
			return states.rideweenie
		break
		case "motorcycle":
			return states.motorcycle
		break
		case "boxxedpep":
			return states.boxxedpep
		break
		case "boxxedpepspin":
			return states.boxxedpepspin
		break
		case "boxxedpepjump":
			return states.boxxedpepjump
		break
		case "pistolaim":
			return states.pistolaim
		break
		case "climbwall":
			return states.climbwall
		break
		case "knightpepslopes":
			return states.knightpepslopes
		break
		case "portal":
			return states.portal
		break
		case "secondjump":
			return states.secondjump
		break
		case "chainsawbump":
			return states.chainsawbump
		break
		case "handstandjump":
			return states.handstandjump
		break
		case "lungeattack":
			return states.lungeattack
		break
		case "lungegrab":
			return states.lungegrab
		break
		case "dashtumble":
			return states.dashtumble
		break
		case "gottreasure":
			return states.gottreasure
		break
		case "knightpep":
			return states.knightpep
		break
		case "knightpepattack":
			return states.knightpepattack
		break
		case "knightpepbump":
			return states.knightpepbump
		break
		case "meteorpep":
			return states.meteorpep
		break
		case "bombpep":
			return states.bombpep
		break
		case "bombgrab":
			return states.bombgrab
		break
		case "bombpepside":
			return states.bombpepside
		break
		case "bombpepup":
			return states.bombpepup
		break
		case "grabbing":
			return states.grabbing
		break
		case "chainsawpogo":
			return states.chainsawpogo
		break
		case "shotgunjump":
			return states.shotgunjump
		break
		case "pogo":
			return states.pogo
		break
		case "stunned":
			return states.stunned
		break
		case "highjump":
			return states.highjump
		break
		case "chainsaw":
			return states.chainsaw
		break
		case "facestomp":
			return states.facestomp
		break
		case "mach4":
			return states.mach4
		break
		case "timesup":
			return states.timesup
		break
		case "machroll":
			return states.machroll
		break
		case "shotgun":
			return states.shotgun
		break
		case "shotguncrouch":
			return states.shotguncrouch
		break
		case "shotguncrouchjump":
			return states.shotguncrouchjump
		break
		case "shotgunshoot":
			return states.shotgunshoot
		break
		case "shotgundash":
			return states.shotgundash
		break
		case "shotgunfreefall":
			return states.shotgunfreefall
		break
		case "pistol":
			return states.pistol
		break
		case "machfreefall":
			return states.machfreefall
		break
		case "throwing":
			return states.throwing
		break
		case "slam":
			return states.slam
		break
		case "superslam":
			return states.superslam
		break
		case "skateboard":
			return states.skateboard
		break
		case "grind":
			return states.grind
		break
		case "grab":
			return states.grab
		break
		case "punch":
			return states.punch
		break
		case "backkick":
			return states.backkick
		break
		case "uppunch":
			return states.uppunch
		break
		case "shoulder":
			return states.shoulder
		break
		case "backbreaker":
			return states.backbreaker
		break
		case "graffiti":
			return states.graffiti
		break
		case "bossdefeat":
			return states.bossdefeat
		break
		case "pizzathrow":
			return states.pizzathrow
		break
		case "bossintro":
			return states.bossintro
		break
		case "gameover":
			return states.gameover
		break
		case "keyget":
			return states.keyget
		break
		case "tackle":
			return states.tackle
		break
		case "jump":
			return states.jump
		break
		case "ladder":
			return states.ladder
		break
		case "slipnslide":
			return states.slipnslide
		break
		case "comingoutdoor":
			return states.comingoutdoor
		break
		case "smirk":
			return states.smirk
		break
		case "Sjump":
			return states.Sjump
		break
		case "victory":
			return states.victory
		break
		case "Sjumpprep":
			return states.Sjumpprep
		break
		case "crouch":
			return states.crouch
		break
		case "crouchjump":
			return states.crouchjump
		break
		case "crouchslide":
			return states.crouchslide
		break
		case "mach1":
			return states.mach1
		break
		case "mach2":
			return states.mach2
		break
		case "machslide":
			return states.machslide
		break
		case "bump":
			return states.bump
		break
		case "hurt":
			return states.hurt
		break
		case "freefall":
			return states.freefall
		break
		case "hang":
			return states.hang
		break
		case "turning":
			return states.turning
		break
		case "freefallland":
			return states.freefallland
		break
		case "door":
			return states.door
		break
		case "barrel":
			return states.barrel
		break
		case "barreljump":
			return states.barreljump
		break
		case "barrelclimbwall":
			return states.barrelclimbwall
		break
		case "barrelslide":
			return states.barrelslide
		break
		case "current":
			return states.current
		break
		case "boulder":
			return states.boulder
		break
		case "taxi":
			return states.taxi
		break
		case "runonball":
			return states.runonball
		break
		case "mach3":
			return states.mach3
		break
		case "freefallprep":
			return states.freefallprep
		break
		case "Sjumpland":
			return states.Sjumpland
		break
		case "faceplant":
			return states.faceplant
		break
		case "rage":
			return states.rage
		break
		case "idle":
			return states.idle
		break
		case "bounce":
			return states.bounce
		break
		case "charge":
			return states.charge
		break
		case "pizzagoblinthrow":
			return states.pizzagoblinthrow
		break
		case "turn":
			return states.turn
		break
		case "hitceiling":
			return states.hitceiling
		break
		case "hitwall":
			return states.hitwall
		break
		case "unknown_1":
			return states.unknown_1
		break
		case "walk":
			return states.walk
		break
		case "fall":
			return states.fall
		break
		case "land":
			return states.land
		break
		case "hit":
			return states.hit
		break
		case "stun":
			return states.stun
		break
		case "recovery":
			return states.recovery
		break
		case "stomped":
			return states.stomped
		break
		case "chase":
			return states.chase
		break
		case "spawnenemy":
			return states.spawnenemy
		break
		case "arena":
			return states.arena
		break
		case "arenaintro":
			return states.arenaintro
		break
		case "arenaround":
			return states.arenaround
		break
		case "actor":
			return states.actor
		break
		case "parry":
			return states.parry
		break
		case "golf":
			return states.golf
		break
		case "float":
			return states.float
		break
		case "tube":
			return states.tube
		break
		case "unused_2":
			return states.unused_2
		break
		case "policetaxi":
			return states.policetaxi
		break
		case "shoulderbash":
			return states.shoulderbash
		break
		case "pummel":
			return states.pummel
		break
		case "staggered":
			return states.staggered
		break
		case "thrown":
			return states.thrown
		break
		case "boss_supershoulderbash":
			return states.boss_supershoulderbash
		break
		case "boss_superattackstart":
			return states.boss_superattackstart
		break
		case "boss_superattackcharge":
			return states.boss_superattackcharge
		break
		case "boss_superattack":
			return states.boss_superattack
		break
		case "boss_shoulderturn":
			return states.boss_shoulderturn
		break
		case "boss_fistmatch":
			return states.boss_fistmatch
		break
		case "boss_fistmatchend":
			return states.boss_fistmatchend
		break
		case "boss_groundpunchstart":
			return states.boss_groundpunchstart
		break
		case "slipbanan":
			return states.slipbanan
		break
		case "boss_millionpunch":
			return states.boss_millionpunch
		break
		case "boss_skateboardturn":
			return states.boss_skateboardturn
		break
		case "boss_bombkick":
			return states.boss_bombkick
		break
		case "boss_bombpogo":
			return states.boss_bombpogo
		break
		case "boss_jetpackstart":
			return states.boss_jetpackstart
		break
		case "boss_jetpack":
			return states.boss_jetpack
		break
		case "boss_jetpackcancel":
			return states.boss_jetpackcancel
		break
		case "boss_jetpackspin":
			return states.boss_jetpackspin
		break
		case "boss_shield":
			return states.boss_shield
		break
		case "boss_helicopterhat":
			return states.boss_helicopterhat
		break
		case "boss_panicjump":
			return states.boss_panicjump
		break
		case "boss_smokebombstart":
			return states.boss_smokebombstart
		break
		case "boss_smokebombcrawl":
			return states.boss_smokebombcrawl
		break
		case "boss_springshoes":
			return states.boss_springshoes
		break
		case "boss_cardboard":
			return states.boss_cardboard
		break
		case "boss_cardboardend":
			return states.boss_cardboardend
		break
		case "boss_mockery":
			return states.boss_mockery
		break
		case "bombdelete":
			return states.bombdelete
		break
		case "rocket":
			return states.rocket
		break
		case "rocketslide":
			return states.rocketslide
		break
		case "gotoplayer":
			return states.gotoplayer
		break
		case "trickjump":
			return states.trickjump
		break
		case "totem":
			return states.totem
		break
		case "underground":
			return states.underground
		break
		case "ridecow":
			return states.ridecow
		break
		case "ratmount":
			return states.ratmount
		break
		case "ratmountjump":
			return states.ratmountjump
		break
		case "ratmountattack":
			return states.ratmountattack
		break
		case "ratmountspit":
			return states.ratmountspit
		break
		case "ratmountclimbwall":
			return states.ratmountclimbwall
		break
		case "ratmounthurt":
			return states.ratmounthurt
		break
		case "ratmountgroundpound":
			return states.ratmountgroundpound
		break
		case "ratmountbounce":
			return states.ratmountbounce
		break
		case "unused_3":
			return states.unused_3
		break
		case "ratmountballoon":
			return states.ratmountballoon
		break
		case "ratmounttumble":
			return states.ratmounttumble
		break
		case "ratmountgrind":
			return states.ratmountgrind
		break
		case "ratmounttrickjump":
			return states.ratmounttrickjump
		break
		case "ratmountskid":
			return states.ratmountskid
		break
		case "ratgrabbed":
			return states.ratgrabbed
		break
		case "blockstance":
			return states.blockstance
		break
		case "balloon":
			return states.balloon
		break
		case "debugstate":
			return states.debugstate
		break
		case "trashjumpprep":
			return states.trashjumpprep
		break
		case "trashjump":
			return states.trashjump
		break
		case "trashroll":
			return states.trashroll
		break
		case "stringfling":
			return states.stringfling
		break
		case "stringjump":
			return states.stringjump
		break
		case "stringfall":
			return states.stringfall
		break
		case "noisejetpack":
			return states.noisejetpack
		break
		case "spiderweb":
			return states.spiderweb
		break
		case "robotidle":
			return states.robotidle
		break
		case "robotintro":
			return states.robotintro
		break
		case "robotroaming":
			return states.robotroaming
		break
		case "robotchase":
			return states.robotchase
		break
		case "robotinvestigate":
			return states.robotinvestigate
		break
		case "robotseeking":
			return states.robotseeking
		break
		case "flushidle":
			return states.flushidle
		break
		case "flushtransition":
			return states.flushtransition
		break
		case "animatronic":
			return states.animatronic
		break
		case "pizzaface_moustache":
			return states.pizzaface_moustache
		break
		case "pizzaface_mouth":
			return states.pizzaface_mouth
		break
		case "pizzaface_eyes":
			return states.pizzaface_eyes
		break
		case "pizzaface_nose":
			return states.pizzaface_nose
		break
		case "pizzaface_ram":
			return states.pizzaface_ram
		break
		case "pizzaface_phase2transition":
			return states.pizzaface_phase2transition
		break
		case "pizzahead_look":
			return states.pizzahead_look
		break
		case "pizzahead_fishing":
			return states.pizzahead_fishing
		break
		case "unused_4":
			return states.unused_4
		break
		case "pizzahead_bombrun":
			return states.pizzahead_bombrun
		break
		case "pizzahead_npcthrow":
			return states.pizzahead_npcthrow
		break
		case "pizzahead_portraitthrow":
			return states.pizzahead_portraitthrow
		break
		case "pizzahead_enguarde":
			return states.pizzahead_enguarde
		break
		case "pizzahead_sexypicture":
			return states.pizzahead_sexypicture
		break
		case "pizzahead_pullinglevel":
			return states.pizzahead_pullinglevel
		break
		case "pizzahead_eat":
			return states.pizzahead_eat
		break
		case "pizzahead_surprisebox":
			return states.pizzahead_surprisebox
		break
		case "pizzahead_spinningrun":
			return states.pizzahead_spinningrun
		break
		case "pizzahead_spinningkick":
			return states.pizzahead_spinningkick
		break
		case "pizzahead_spinningpunch":
			return states.pizzahead_spinningpunch
		break
		case "pizzahead_groundpunch":
			return states.pizzahead_groundpunch
		break
		case "pizzahead_bigkick":
			return states.pizzahead_bigkick
		break
		case "pizzahead_slamhead":
			return states.pizzahead_slamhead
		break
		case "pizzahead_slamhead2":
			return states.pizzahead_slamhead2
		break
		case "tv_whitenoise":
			return states.tv_whitenoise
		break
		case "tv_expression":
			return states.tv_expression
		break
		case "playersuperattack":
			return states.playersuperattack
		break
		case "unused_5":
			return states.unused_5
		break
		case "jetpackjump":
			return states.jetpackjump
		break
		case "unused_6":
			return states.unused_6
		break
		case "unused_7":
			return states.unused_7
		break
		case "bee":
			return states.bee
		break
		case "unused_8":
			return states.unused_8
		break
		case "ratmountpunch":
			return states.ratmountpunch
		break
		case "ratmountcrouch":
			return states.ratmountcrouch
		break
		case "ratmountladder":
			return states.ratmountladder
		break
		case "unused_9":
			return states.unused_9
		break
		case "unused_10":
			return states.unused_10
		break
		case "magnet":
			return states.magnet
		break
		case "antigrav":
			return states.antigrav
		break
		case "secret":
			return states.secret
		break
		case "grabdash":
			return states.grabdash
		break
		case "grabthrow":
			return states.grabthrow
		break
		case "deformed":
			return states.deformed
		break
		case "pizzaheadjump":
			return states.pizzaheadjump
		break
		case "KO":
			return states.KO
		break
		case "supergrab":
			return states.supergrab
		break
		case "phase1hurt":
			return states.phase1hurt
		break
		case "transition":
			return states.transition
		break
		case "animation":
			return states.animation
		break
		case "duel":
			return states.duel
		break
  
	 default:
	   NSP_notify("SCRIPT: nsp_variable_global_get_new. ERROR: Trying to fetch a non-existant state ("+varname+").");
	   return nspToken[NSP_TOK.abort];
	  break;
  
	end;




}
