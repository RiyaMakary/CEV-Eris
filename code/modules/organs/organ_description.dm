/datum/organ_description
	var/organ_tag = "limb"
	var/name = "limb"
	var/default_type = /obj/item/organ/external

	var/min_broken_damage = 30
	var/max_damage = 0
	var/w_class = ITEM_SIZE_NORMAL

	var/body_part = null
	var/amputation_point = "spine"
	var/joint = "neck"
	var/parent_organ = null
	var/icon_position = null
	var/functions = NONE
	var/list/drop_on_remove = null

/datum/organ_description/proc/create_organ(var/mob/living/carbon/human/H)
	return new default_type(H,src)

/datum/organ_description/chest
	organ_tag = BP_CHEST
	name = "upper body"
	default_type = /obj/item/organ/external/chest

	min_broken_damage = 60
	max_damage = 100
	w_class = ITEM_SIZE_HUGE

	body_part = UPPER_TORSO
	amputation_point = "spine"

/datum/organ_description/groin
	organ_tag = BP_GROIN
	name = "lower body"
	default_type = /obj/item/organ/external/groin

	min_broken_damage = 60
	max_damage = 100
	w_class = ITEM_SIZE_BULKY

	body_part = LOWER_TORSO
	joint = "hip"
	amputation_point = "lumbar"
	parent_organ = BP_CHEST

/datum/organ_description/head
	organ_tag = BP_HEAD
	name = "head"
	default_type = /obj/item/organ/external/head

	max_damage = 75
	min_broken_damage = 60
	w_class = ITEM_SIZE_NORMAL

	body_part = HEAD
	joint = "jaw"
	amputation_point = "neck"
	parent_organ = BP_CHEST
	drop_on_remove = list(slot_glasses,slot_head,slot_l_ear,slot_r_ear,slot_wear_mask)
	functions = BODYPART_REAGENT_INTAKE | BODYPART_GAS_INTAKE

/datum/organ_description/arm
	max_damage = 50
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	parent_organ = BP_CHEST
	functions = BODYPART_GRASP

/datum/organ_description/arm/left
	name = "left arm"
	organ_tag = BP_L_ARM
	body_part = ARM_LEFT
	joint = "left elbow"
	amputation_point = "left shoulder"

/datum/organ_description/arm/right
	name = "right arm"
	organ_tag = BP_R_ARM
	body_part = ARM_RIGHT
	joint = "right elbow"
	amputation_point = "right shoulder"

/datum/organ_description/leg
	max_damage = 60
	min_broken_damage = 50
	w_class = ITEM_SIZE_NORMAL
	parent_organ = BP_GROIN
	functions = BODYPART_STAND

/datum/organ_description/leg/left
	name = "left leg"
	organ_tag = BP_L_LEG
	body_part = LEG_LEFT
	icon_position = LEFT
	joint = "left knee"
	amputation_point = "left hip"

/datum/organ_description/leg/right
	name = "right leg"
	organ_tag = BP_R_LEG
	body_part = LEG_RIGHT
	icon_position = RIGHT
	joint = "right knee"
	amputation_point = "right hip"

////SLIME////
/datum/organ_description/chest/slime
	name = "upper body"
	default_type = /obj/item/organ/external/unbreakable

/datum/organ_description/groin/slime
	name = "fork"
	default_type = /obj/item/organ/external/unbreakable

/datum/organ_description/head/slime
	default_type = /obj/item/organ/external/unbreakable

/datum/organ_description/arm/left/slime
	default_type = /obj/item/organ/external/unbreakable

/datum/organ_description/arm/right/slime
	default_type = /obj/item/organ/external/unbreakable

/datum/organ_description/leg/left/slime
	default_type = /obj/item/organ/external/unbreakable

/datum/organ_description/leg/right/slime
	default_type = /obj/item/organ/external/unbreakable