-- [[ I am a comment! ]] 


-- Will be called when the game is first loaded. Basically the init.
function love.load()

    -- initialize game components

    -- set the font
    
    mainFont = love.graphics.newFont(MoonFlowerBold.ttf, 12)
    love.graphics.setFont(mainFont)

    love.graphics.printf("dit is een test", 40, 60)

 end

-- This function is called continuously and will probably be where most of your math is done. 
 function love.update(dt)

    -- listen for keyboard events
    if love.keyboard.isDown("up") then
        love.graphics.printf("dit is een test 2", 40, 100)
    end
 end



-- is where all the drawing happens (if that wasn't obvious enough already) and if you call any of the love.graphics.draw 
-- outside of this function then it's not going to have any effect. This function is also called continuously so keep in 
-- mind that if you change the font/color/mode/etc at the end of the function then it will have a effect on things at the 
-- beginning of the function.
function love.draw()
    love.graphics.print("This text is not black because of the line below", 100, 100)
    love.graphics.setColor(255,0,0)
    love.graphics.print("This text is red", 100, 200)
end