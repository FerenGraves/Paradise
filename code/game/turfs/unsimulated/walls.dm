/turf/unsimulated/wall
	name = "wall"
	icon = 'icons/turf/walls.dmi'
	icon_state = "riveted"
	opacity = 1
	density = 1
	flags_2 = RAD_PROTECT_CONTENTS_2 | RAD_NO_CONTAMINATE_2
	rad_insulation = RAD_MEDIUM_INSULATION
	explosion_block = 2

/turf/unsimulated/wall/fakeglass
	name = "window"
	icon_state = "fakewindows"
	opacity = 0

/turf/unsimulated/wall/fakeglass/reinforced
	name = "reinforced plastitanium window"
	desc = "An evil looking window of plasma and titanium. This one looks heavily reinforced."
	icon_state = "fakewindows_p"
	layer = ABOVE_OBJ_LAYER
	level = 3
	blocks_air = TRUE

/turf/unsimulated/wall/fakedoor
	name = "Centcom Access"
	icon = 'icons/obj/doors/airlocks/centcom/centcom.dmi'
	icon_state = "closed"

/turf/unsimulated/wall/splashscreen
	name = "Space Station 13"
	icon = 'config/title_screens/images/blank.png'
	icon_state = ""
	layer = FLY_LAYER

/turf/unsimulated/wall/other
	icon_state = "r_wall"

/turf/unsimulated/wall/metal
	icon = 'icons/turf/walls/wall.dmi'
	icon_state = "wall"
	smooth = SMOOTH_TRUE

/turf/unsimulated/wall/metal/reinforced
	name = "reinforced wall"
	desc = "An evil wall of plasma and titanium. This one looks heavily reinforced."
	icon = 'icons/turf/walls/plastitanium_wall.dmi'
	icon_state = "map-shuttle_nd"
	blocks_air = TRUE

/turf/unsimulated/wall/abductor
	icon_state = "alien1"
	explosion_block = 50

/turf/unsimulated/wall/asteroid
	name = "dense rock"
	desc = "Densely packed asteroid rock."
	icon = 'icons/turf/walls.dmi'
	icon_state = "rock"
	smooth = SMOOTH_MORE | SMOOTH_BORDER
	canSmoothWith = list(/turf/unsimulated/wall/asteroid,
						/turf/simulated/mineral/asteroid)
	layer = EDGED_TURF_LAYER
	blocks_air = TRUE

/turf/unsimulated/wall/asteroid/Initialize(mapload)
	. = ..()
	var/matrix/M = new
	M.Translate(-4, -4)
	transform = M
	icon = 'icons/turf/smoothrocks_a.dmi'
