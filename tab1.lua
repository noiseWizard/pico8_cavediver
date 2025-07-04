function make_player()
 player{}
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
  spr(player.dead,player.x,player.y)
 elseif (player.dy<0 then
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