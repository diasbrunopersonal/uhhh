args = {...}

local columns = args[1]
local rows = args[2]
local height = args[3]

local x = 1
local y = 1
local z = 1

local write = io.write

for y = 1, height do
    print("Starting to loop height: " .. y)
    for z = 1, columns do
        print("--------------------")
        print("Starting to loop column: " .. z)
        print("--------------------")

        if z ~= 1 then
            turtle.dig()
            turtle.forward()
        end

        if columns % 2 == 0 then
            turtle.turnRight()
        else
            turtle.turnLeft()
        end

        for x = 1, rows do
            print("Row: ")
            if x == 1 then
                write(x)
            end
            write(" -> " .. x)

            if turtle.detect() then
                turtle.dig()
            else
                turtle.forward()
            end

        end

        if columns % 2 ~= 0 then
            turtle.turnRight()
        else
            turtle.turnLeft()
        end

    end

    if turtle.detectDown() then
        turtle.digDown()
    end
    turtle.down()
end
