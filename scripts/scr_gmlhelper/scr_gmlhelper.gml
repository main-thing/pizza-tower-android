enum states
{
	normal,
	revolver,
	dynamite,
	boots,
	grabbed,
	tumble,
	finishingblow,
	ejected,
	transitioncutscene,
	fireass,
	firemouth,
	mort,
	mortjump,
	mortattack,
	morthook,
	hook,
	ghost,
	ghostpossess,
	titlescreen,
	hookshot,
	tacklecharge,
	cheeseball,
	cheeseballclimbwall,
	slap,
	cheesepep,
	cheesepepstick,
	cheesepepjump,
	cheesepepfling,
	cheesepeplaunch,
	cheesepepstickside,
	cheesepepstickup,
	rideweenie,
	motorcycle,
	boxxedpep,
	boxxedpepspin,
	boxxedpepjump,
	pistolaim,
	climbwall,
	knightpepslopes,
	portal,
	secondjump,
	chainsawbump,
	handstandjump,
	lungeattack,
	lungegrab,
	dashtumble,
	gottreasure,
	knightpep,
	knightpepattack,
	knightpepbump,
	meteorpep,
	bombpep,
	bombgrab,
	bombpepside,
	bombpepup,
	grabbing,
	chainsawpogo,
	shotgunjump,
	pogo,
	stunned,
	highjump,
	chainsaw,
	facestomp,
	mach4, // doesn't even have a script
	timesup,
	machroll,
	shotgun,
	shotguncrouch,
	shotguncrouchjump,
	shotgunshoot,
	shotgundash,
	shotgunfreefall,
	pistol,
	machfreefall,
	throwing,
	slam,
	superslam,
	skateboard,
	grind,
	grab,
	punch,
	backkick,
	uppunch,
	shoulder,
	backbreaker,
	graffiti,
	bossdefeat,
	pizzathrow,
	bossintro,
	gameover,
	keyget,
	tackle,
	jump,
	ladder,
	slipnslide,
	comingoutdoor,
	smirk,
	Sjump,
	victory,
	Sjumpprep,
	crouch,
	crouchjump,
	crouchslide,
	mach1,
	mach2,
	machslide,
	bump,
	hurt,
	freefall,
	hang,
	turning, // seems to be completely wiped too like mach4
	freefallland,
	door,
	barrel,
	barreljump,
	barrelclimbwall,
	barrelslide,
	current,
	boulder,
	taxi,
	runonball,
	mach3,
	freefallprep,
	Sjumpland,
	faceplant,
	rage,
	idle,
	bounce, // doesnt exist
	charge,
	pizzagoblinthrow,
	turn,
	hitceiling, // doesnt exist
	hitwall, // doesnt exist
	unknown_1, // 133
	walk,
	fall,
	land,
	hit,
	stun,
	recovery, // doesnt exist
	stomped, // doesnt exist
	chase,
	spawnenemy,
	arena,
	arenaintro,
	arenaround,
	actor,
	parry,
	golf,
	float,
	tube,
	unused_2, // 151
	policetaxi,
	shoulderbash,
	pummel,
	staggered,
	thrown,
	boss_supershoulderbash, // 157
	boss_superattackstart,
	boss_superattackcharge,
	boss_superattack,
	boss_shoulderturn,
	boss_fistmatch,
	boss_fistmatchend,
	boss_groundpunchstart,
	slipbanan,
	boss_millionpunch,
	boss_skateboardturn,
	boss_bombkick,
	boss_bombpogo,
	boss_jetpackstart,
	boss_jetpack,
	boss_jetpackcancel,
	boss_jetpackspin,
	boss_shield,
	boss_helicopterhat,
	boss_panicjump,
	boss_smokebombstart,
	boss_smokebombcrawl,
	boss_springshoes,
	boss_cardboard,
	boss_cardboardend,
	boss_mockery,
	bombdelete,
	rocket,
	rocketslide,
	gotoplayer,
	trickjump,
	totem,
	underground,
	ridecow,
	ratmount,
	ratmountjump,
	ratmountattack,
	ratmountspit,
	ratmountclimbwall,
	ratmounthurt,
	ratmountgroundpound,
	ratmountbounce,
	unused_3,
	ratmountballoon,
	ratmounttumble,
	ratmountgrind,
	ratmounttrickjump,
	ratmountskid,
	ratgrabbed,
	blockstance,
	balloon,
	debugstate,
	trashjumpprep,
	trashjump,
	trashroll,
	stringfling,
	stringjump,
	stringfall,
	noisejetpack,
	spiderweb,
	robotidle,
	robotintro,
	robotroaming,
	robotchase,
	robotinvestigate,
	robotseeking,
	flushidle,
	flushtransition,
	animatronic,
	pizzaface_moustache,
	pizzaface_mouth,
	pizzaface_eyes,
	pizzaface_nose,
	pizzaface_ram,
	pizzaface_phase2transition,
	pizzahead_look,
	pizzahead_fishing,
	unused_4,
	pizzahead_bombrun,
	pizzahead_npcthrow,
	pizzahead_portraitthrow,
	pizzahead_enguarde,
	pizzahead_sexypicture,
	pizzahead_pullinglevel,
	pizzahead_eat,
	pizzahead_surprisebox,
	pizzahead_spinningrun,
	pizzahead_spinningkick,
	pizzahead_spinningpunch,
	pizzahead_groundpunch,
	pizzahead_bigkick,
	pizzahead_slamhead,
	pizzahead_slamhead2,
	tv_whitenoise,
	tv_expression,
	playersuperattack,
	unused_5,
	jetpackjump,
	unused_6,
	unused_7,
	bee,
	unused_8,
	ratmountpunch,
	ratmountcrouch,
	ratmountladder,
	unused_9,
	unused_10,
	magnet,
	antigrav,
	secret,
	grabdash,
	grabthrow,
	deformed,
	pizzaheadjump,
	KO,
	supergrab,
	phase1hurt,
	transition,
	animation,
	duel
}

function struct_create(){
	return {}
}
function array_get_index(value,array){
	for(var __index=-1,i=0;i<array_length(array);i++)
		if(value==array[i]){
			__index=i;
			break
		}
	return __index
}
function call_alarm(alarmid,delay,instance = noone){
	if(instance_exists(instance)){
		instance.alarm[alarmid] = delay
	} else {
		alarm[alarmid] = delay
	}
}
function set_view_surface(_id,surf){
	view_surface_id[_id] = surf
}
function state_get_name(state){
	switch(state){
		case states.normal: return "normal" break
		case states.revolver: return "revolver" break
		case states.dynamite: return "dynamite" break
		case states.boots: return "boots" break
		case states.grabbed: return "grabbed" break
		case states.tumble: return "tumble" break
		case states.finishingblow: return "finishingblow" break
		case states.ejected: return "ejected" break
		case states.transitioncutscene: return "transitioncutscene" break
		case states.fireass: return "fireass" break
		case states.firemouth: return "firemouth" break
		case states.mort: return "mort" break
		case states.mortjump: return "mortjump" break
		case states.mortattack: return "mortattack" break
		case states.morthook: return "morthook" break
		case states.hook: return "hook" break
		case states.ghost: return "ghost" break
		case states.ghostpossess: return "ghostpossess" break
		case states.titlescreen: return "titlescreen" break
		case states.hookshot: return "hookshot" break
		case states.tacklecharge: return "tacklecharge" break
		case states.cheeseball: return "cheeseball" break
		case states.cheeseballclimbwall: return "cheeseballclimbwall" break
		case states.slap: return "slap" break
		case states.cheesepep: return "cheesepep" break
		case states.cheesepepstick: return "cheesepepstick" break
		case states.cheesepepjump: return "cheesepepjump" break
		case states.cheesepepfling: return "cheesepepfling" break
		case states.cheesepeplaunch: return "cheesepeplaunch" break
		case states.cheesepepstickside: return "cheesepepstickside" break
		case states.cheesepepstickup: return "cheesepepstickup" break
		case states.rideweenie: return "rideweenie" break
		case states.motorcycle: return "motorcycle" break
		case states.boxxedpep: return "boxxedpep" break
		case states.boxxedpepspin: return "boxxedpepspin" break
		case states.boxxedpepjump: return "boxxedpepjump" break
		case states.pistolaim: return "pistolaim" break
		case states.climbwall: return "climbwall" break
		case states.knightpepslopes: return "knightpepslopes" break
		case states.portal: return "portal" break
		case states.secondjump: return "secondjump" break
		case states.chainsawbump: return "chainsawbump" break
		case states.handstandjump: return "handstandjump" break
		case states.lungeattack: return "lungeattack" break
		case states.lungegrab: return "lungegrab" break
		case states.dashtumble: return "dashtumble" break
		case states.gottreasure: return "gottreasure" break
		case states.knightpep: return "knightpep" break
		case states.knightpepattack: return "knightpepattack" break
		case states.knightpepbump: return "knightpepbump" break
		case states.meteorpep: return "meteorpep" break
		case states.bombpep: return "bombpep" break
		case states.bombgrab: return "bombgrab" break
		case states.bombpepside: return "bombpepside" break
		case states.bombpepup: return "bombpepup" break
		case states.grabbing: return "grabbing" break
		case states.chainsawpogo: return "chainsawpogo" break
		case states.shotgunjump: return "shotgunjump" break
		case states.pogo: return "pogo" break
		case states.stunned: return "stunned" break
		case states.highjump: return "highjump" break
		case states.chainsaw: return "chainsaw" break
		case states.facestomp: return "facestomp" break
		case states.mach4: return "mach4" break
		case states.timesup: return "timesup" break
		case states.machroll: return "machroll" break
		case states.shotgun: return "shotgun" break
		case states.shotguncrouch: return "shotguncrouch" break
		case states.shotguncrouchjump: return "shotguncrouchjump" break
		case states.shotgunshoot: return "shotgunshoot" break
		case states.shotgundash: return "shotgundash" break
		case states.shotgunfreefall: return "shotgunfreefall" break
		case states.pistol: return "pistol" break
		case states.machfreefall: return "machfreefall" break
		case states.throwing: return "throwing" break
		case states.slam: return "slam" break
		case states.superslam: return "superslam" break
		case states.skateboard: return "skateboard" break
		case states.grind: return "grind" break
		case states.grab: return "grab" break
		case states.punch: return "punch" break
		case states.backkick: return "backkick" break
		case states.uppunch: return "uppunch" break
		case states.shoulder: return "shoulder" break
		case states.backbreaker: return "backbreaker" break
		case states.graffiti: return "graffiti" break
		case states.bossdefeat: return "bossdefeat" break
		case states.pizzathrow: return "pizzathrow" break
		case states.bossintro: return "bossintro" break
		case states.gameover: return "gameover" break
		case states.keyget: return "keyget" break
		case states.tackle: return "tackle" break
		case states.jump: return "jump" break
		case states.ladder: return "ladder" break
		case states.slipnslide: return "slipnslide" break
		case states.comingoutdoor: return "comingoutdoor" break
		case states.smirk: return "smirk" break
		case states.Sjump: return "Sjump" break
		case states.victory: return "victory" break
		case states.Sjumpprep: return "Sjumpprep" break
		case states.crouch: return "crouch" break
		case states.crouchjump: return "crouchjump" break
		case states.crouchslide: return "crouchslide" break
		case states.mach1: return "mach1" break
		case states.mach2: return "mach2" break
		case states.machslide: return "machslide" break
		case states.bump: return "bump" break
		case states.hurt: return "hurt" break
		case states.freefall: return "freefall" break
		case states.hang: return "hang" break
		case states.turning: return "turning" break
		case states.freefallland: return "freefallland" break
		case states.door: return "door" break
		case states.barrel: return "barrel" break
		case states.barreljump: return "barreljump" break
		case states.barrelclimbwall: return "barrelclimbwall" break
		case states.barrelslide: return "barrelslide" break
		case states.current: return "current" break
		case states.boulder: return "boulder" break
		case states.taxi: return "taxi" break
		case states.runonball: return "runonball" break
		case states.mach3: return "mach3" break
		case states.freefallprep: return "freefallprep" break
		case states.Sjumpland: return "Sjumpland" break
		case states.faceplant: return "faceplant" break
		case states.rage: return "rage" break
		case states.idle: return "idle" break
		case states.bounce: return "bounce" break
		case states.charge: return "charge" break
		case states.pizzagoblinthrow: return "pizzagoblinthrow" break
		case states.turn: return "turn" break
		case states.hitceiling : return "hitceiling " break
		case states.hitwall: return "hitwall" break
		case states.unknown_1: return "unknown_1" break
		case states.walk: return "walk" break
		case states.fall: return "fall" break
		case states.land: return "land" break
		case states.hit: return "hit" break
		case states.stun: return "stun" break
		case states.recovery: return "recovery" break
		case states.stomped: return "stomped" break
		case states.chase: return "chase" break
		case states.spawnenemy: return "spawnenemy" break
		case states.arena: return "arena" break
		case states.arenaintro: return "arenaintro" break
		case states.arenaround: return "arenaround" break
		case states.actor: return "actor" break
		case states.parry: return "parry" break
		case states.golf: return "golf" break
		case states.float: return "float" break
		case states.tube: return "tube" break
		case states.unused_2: return "unused_2" break
		case states.policetaxi: return "policetaxi" break
		case states.shoulderbash: return "shoulderbash" break
		case states.pummel: return "pummel" break
		case states.staggered: return "staggered" break
		case states.thrown: return "thrown" break
		case states.boss_supershoulderbash: return "boss_supershoulderbash" break
		case states.boss_superattackstart: return "boss_superattackstart" break
		case states.boss_superattackcharge: return "boss_superattackcharge" break
		case states.boss_superattack: return "boss_superattack" break
		case states.boss_shoulderturn: return "boss_shoulderturn" break
		case states.boss_fistmatch: return "boss_fistmatch" break
		case states.boss_fistmatchend: return "boss_fistmatchend" break
		case states.boss_groundpunchstart: return "boss_groundpunchstart" break
		case states.slipbanan: return "slipbanan" break
		case states.boss_millionpunch: return "boss_millionpunch" break
		case states.boss_skateboardturn: return "boss_skateboardturn" break
		case states.boss_bombkick: return "boss_bombkick" break
		case states.boss_bombpogo: return "boss_bombpogo" break
		case states.boss_jetpackstart: return "boss_jetpackstart" break
		case states.boss_jetpack: return "boss_jetpack" break
		case states.boss_jetpackcancel: return "boss_jetpackcancel" break
		case states.boss_jetpackspin: return "boss_jetpackspin" break
		case states.boss_shield: return "boss_shield" break
		case states.boss_helicopterhat: return "boss_helicopterhat" break
		case states.boss_panicjump: return "boss_panicjump" break
		case states.boss_smokebombstart: return "boss_smokebombstart" break
		case states.boss_smokebombcrawl: return "boss_smokebombcrawl" break
		case states.boss_springshoes: return "boss_springshoes" break
		case states.boss_cardboard: return "boss_cardboard" break
		case states.boss_cardboardend: return "boss_cardboardend" break
		case states.boss_mockery: return "boss_mockery" break
		case states.bombdelete: return "bombdelete" break
		case states.rocket: return "rocket" break
		case states.rocketslide: return "rocketslide" break
		case states.gotoplayer: return "gotoplayer" break
		case states.trickjump: return "trickjump" break
		case states.totem: return "totem" break
		case states.underground: return "underground" break
		case states.ridecow: return "ridecow" break
		case states.ratmount: return "ratmount" break
		case states.ratmountjump: return "ratmountjump" break
		case states.ratmountattack: return "ratmountattack" break
		case states.ratmountspit: return "ratmountspit" break
		case states.ratmountclimbwall: return "ratmountclimbwall" break
		case states.ratmounthurt: return "ratmounthurt" break
		case states.ratmountgroundpound: return "ratmountgroundpound" break
		case states.ratmountbounce: return "ratmountbounce" break
		case states.unused_3: return "unused_3" break
		case states.ratmountballoon: return "ratmountballoon" break
		case states.ratmounttumble: return "ratmounttumble" break
		case states.ratmountgrind: return "ratmountgrind" break
		case states.ratmounttrickjump: return "ratmounttrickjump" break
		case states.ratmountskid: return "ratmountskid" break
		case states.ratgrabbed: return "ratgrabbed" break
		case states.blockstance: return "blockstance" break
		case states.balloon: return "balloon" break
		case states.debugstate: return "debugstate" break
		case states.trashjumpprep: return "trashjumpprep" break
		case states.trashjump: return "trashjump" break
		case states.trashroll: return "trashroll" break
		case states.stringfling: return "stringfling" break
		case states.stringjump: return "stringjump" break
		case states.stringfall: return "stringfall" break
		case states.noisejetpack: return "noisejetpack" break
		case states.spiderweb: return "spiderweb" break
		case states.robotidle: return "robotidle" break
		case states.robotintro: return "robotintro" break
		case states.robotroaming: return "robotroaming" break
		case states.robotchase: return "robotchase" break
		case states.robotinvestigate: return "robotinvestigate" break
		case states.robotseeking: return "robotseeking" break
		case states.flushidle: return "flushidle" break
		case states.flushtransition: return "flushtransition" break
		case states.animatronic: return "animatronic" break
		case states.pizzaface_moustache: return "pizzaface_moustache" break
		case states.pizzaface_mouth: return "pizzaface_mouth" break
		case states.pizzaface_eyes: return "pizzaface_eyes" break
		case states.pizzaface_nose: return "pizzaface_nose" break
		case states.pizzaface_ram: return "pizzaface_ram" break
		case states.pizzaface_phase2transition: return "pizzaface_phase2transition" break
		case states.pizzahead_look: return "pizzahead_look" break
		case states.pizzahead_fishing: return "pizzahead_fishing" break
		case states.unused_4: return "unused_4" break
		case states.pizzahead_bombrun: return "pizzahead_bombrun" break
		case states.pizzahead_npcthrow: return "pizzahead_npcthrow" break
		case states.pizzahead_portraitthrow: return "pizzahead_portraitthrow" break
		case states.pizzahead_enguarde: return "pizzahead_enguarde" break
		case states.pizzahead_sexypicture: return "pizzahead_sexypicture" break
		case states.pizzahead_pullinglevel: return "pizzahead_pullinglevel" break
		case states.pizzahead_eat: return "pizzahead_eat" break
		case states.pizzahead_surprisebox: return "pizzahead_surprisebox" break
		case states.pizzahead_spinningrun: return "pizzahead_spinningrun" break
		case states.pizzahead_spinningkick: return "pizzahead_spinningkick" break
		case states.pizzahead_spinningpunch: return "pizzahead_spinningpunch" break
		case states.pizzahead_groundpunch: return "pizzahead_groundpunch" break
		case states.pizzahead_bigkick: return "pizzahead_bigkick" break
		case states.pizzahead_slamhead: return "pizzahead_slamhead" break
		case states.pizzahead_slamhead2: return "pizzahead_slamhead2" break
		case states.tv_whitenoise: return "tv_whitenoise" break
		case states.tv_expression: return "tv_expression" break
		case states.playersuperattack: return "playersuperattack" break
		case states.unused_5: return "unused_5" break
		case states.jetpackjump: return "jetpackjump" break
		case states.unused_6: return "unused_6" break
		case states.unused_7: return "unused_7" break
		case states.bee: return "bee" break
		case states.unused_8: return "unused_8" break
		case states.ratmountpunch: return "ratmountpunch" break
		case states.ratmountcrouch: return "ratmountcrouch" break
		case states.ratmountladder: return "ratmountladder" break
		case states.unused_9: return "unused_9" break
		case states.unused_10: return "unused_10" break
		case states.magnet: return "magnet" break
		case states.antigrav: return "antigrav" break
		case states.secret: return "secret" break
		case states.grabdash: return "grabdash" break
		case states.grabthrow: return "grabthrow" break
		case states.deformed: return "deformed" break
		case states.pizzaheadjump: return "pizzaheadjump" break
		case states.KO: return "KO" break
		case states.supergrab: return "supergrab" break
		case states.phase1hurt: return "phase1hurt" break
		case states.transition: return "transition" break
		case states.animation: return "animation" break
		case states.duel: return "duel" break
	}
}
