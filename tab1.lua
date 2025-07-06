function make_player()
 player={}
 player.x=27 --position
 player.y=60
 player.dy=0 --fall speed
 player.rise=1 --sprites
 player.fall=2
 player.dead=3
 player.speed=2 --fly speed
 player.score=0
end

function draw_player()
 if (game_over) then
  spr(
    player.dead,
    player.x,
    player.y
)
 elseif (player.dy<0) then
  spr(
   player.rise,
   player.x,
   player.y
  )
 else
  spr(
   player.fall,
   player.x,
   player.y
  )
 end
end

function move_player()
    gravity=0.2 --increase this to increase the gravity
    player.dy+=gravity -- add gravity

    --jump
    if (btnp(2)) then
        player.dy-=5
    end

    --move to a new position
    player.y+=player.dy

    --update score
    player.score+=player.speed
end

function check_hit()
    for i = player.x, player.x+7 do
        if(cave[i+1].top>player.y OR cave[i+1].btm<player.y+7) then
            game_over=true
        end
    end
end