/*  
	$c000 - $c3ff Screen
	$c400 - $cfff 48 sprites
	$d000 - $efff 128 Sprites
	$f000 - $f7ff 1 charset
	$f800 - $fffd 15 sprites
*/
					
.label SCREEN_RAM = $c000
.label SPRITE_POINTERS = SCREEN_RAM + $3f8


* = $6c00 "Generated warped sprites"
	.fill 80 * 64, 0


* = $c400 "Enemy Sprites" //Start at frame #16/$10
	.import binary "../../assets/sprites/enemy_sprites.bin"


* = $d000 "Player Sprites" //Start at frame #64/$40
	.import binary "../../assets/sprites/player_sprites.bin"

* = $8000 "Map data"
	MAP_TILES:
		.import binary "../../assets/maps/tiles.bin"

	CHAR_COLORS:
		.import binary "../../assets/maps/cols.bin"

	HUD_DATA:
		.import binary "../../assets/maps/hud.bin"

	#import "mapdata.asm"

* = $ec00 "Reserved for intro sprites"
	.import binary "../../assets/sprites/title_card.bin"


* = $eec0 "Dynamic sprite absorb frames" // #187-191 / $bb-$bf
		.fill 64, $ff	
		.fill 64, $cc	
		.fill 64, $aa	
		.fill 64, $55	
		.fill 64, $c5	

* = $f000 "Charset"
	CHAR_SET:
		.import binary "../../assets/maps/chars.bin"   //roll 12!


* = $f800 "Charset"
	INTRO_CHAR_SET:
		.import binary "../../assets/maps/introchars.bin"   //roll 12!