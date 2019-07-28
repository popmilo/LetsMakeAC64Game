/*  
	$c000 - $c3ff Screen
	$c400 - $c7ff 16 sprites
	$d000 - $efff 128 Sprites
	$f000 - $f7ff 1 charset
	$f800 - $fffd 15 sprites
*/

.label SCREEN_RAM = $c000
.label SPRITE_POINTERS = SCREEN_RAM + $3f8


* = $d000 "Player Sprites" //Start at frame #64
	.import binary "../../assets/sprites/player_sprites.bin"

* = $8000 "Map data"
	MAP_TILES:
		.import binary "../../assets/maps/tiles.bin"

	CHAR_COLORS:
		.import binary "../../assets/maps/cols.bin"

	MAP_1:
		.import binary "../../assets/maps/map_1.bin"

* = $f000 "Charset"
	.import binary "../../assets/maps/chars.bin"

