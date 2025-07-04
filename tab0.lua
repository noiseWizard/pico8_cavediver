function _init()
	game_over=false
    make_cave()
	make_player()
end

function _update()
    update_cave()
    move_player()
end

function _draw()
 cls()
 draw_cave()
 draw_player()
end