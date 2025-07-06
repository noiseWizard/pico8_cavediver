function _init()
	game_over=false
    make_cave()
	make_player()
end

function _update()
    if (not game_over) then
        update_cave()
        move_player()
        check_hit()
    end
end

function _draw()
    cls()
    draw_cave()
    draw_player()

    if (game_over) then
        print("game over!", 44, 44, 7)
        print("your score:"..player.score,34,54,7)
    else
        print("score:"..player.score,2,2,7)
    end
end