function make_cave()
    cave={
        {--why are there these extra pair of brackets?
            ["top"] = 5,
            ["btm"] = 119
        }
    }
    top=45 --how low the celing can go
    btm=85 --how high the floor can get
end

function update_cave()
    --remove the back of the cave
    if (#cave>player.speed) then
        for i=1, player.speed do
            del(cave,cave[1])
        end
    end

    --add more cave
    while (#cave < 128) do
        local col = {}
        local up = flr(
            rnd(7)-3
        )
        local dwn = flr(
            rnd(7)-3
        )
        col.top=mid(
            3,
            cave[#cave].top+up,
            top
        )
        col.btm=mid(
            btm,
            cave[#cave].btm+dwn,
            124
        )
        add(cave,col)
    end
end

function draw_cave()
    top_color=5 --play with these!
    btm_color=5 --choose your own colors!
    for i=1, #cave do
        line(i-1,0,i-1,cave[i].top,top_color)
        line(i-1,127,i-1,cave[i].btm,btm_color)
    end
end