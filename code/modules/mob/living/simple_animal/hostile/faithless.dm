/mob/living/simple_animal/hostile/faithless
	name = "Faithless"
	desc = "The Wish Granter's faith in humanity, incarnate"
	icon = 'icons/mob/simple_animal/faithless.dmi'
	speak_chance = 0
	turns_per_move = 5
	response_help_1p = "You wave your hand through $TARGET."
	response_help_3p = "$USER$ waves $USER_HIS$ hand through $TARGET."
	speed = -1
	maxHealth = 80
	health = 80
	gene_damage = -1

	harm_intent_damage = 10
	natural_weapon = /obj/item/natural_weapon/faithless

	min_gas = null
	max_gas = null
	minbodytemp = 0
	speed = 4

	faction = "faithless"
	supernatural = 1

	meat_type =     null
	meat_amount =   0
	bone_material = null
	bone_amount =   0
	skin_material = null
	skin_amount =   0

/obj/item/natural_weapon/faithless
	name = "shadow tendril"
	attack_verb = list("gripped")
	hitsound = 'sound/hallucinations/growl1.ogg'
	damtype = BURN
	force = 15

/mob/living/simple_animal/hostile/faithless/Process_Spacemove()
	return 1

/mob/living/simple_animal/hostile/faithless/FindTarget()
	. = ..()
	if(.)
		audible_emote("wails at [.]")

/mob/living/simple_animal/hostile/faithless/AttackingTarget()
	. =..()
	var/mob/living/L = .
	if(istype(L))
		if(prob(12))
			SET_STATUS_MAX(L, STAT_WEAK, 3)
			L.visible_message("<span class='danger'>\the [src] knocks down \the [L]!</span>")

/mob/living/simple_animal/hostile/faithless/cult
	faction = "cult"

/mob/living/simple_animal/hostile/faithless/cult/cultify()
	return
