-- [[ I am a comment! ]] 


-- constants
WINDOW_HEIGHT = 400
WINDOW_WIDTH = 800
someVar = 0;


-- Will be called when the game is first loaded. Basically the init.
function love.load()

    -- initialize game components
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT)

    -- set the font
    mainFont = love.graphics.newFont("MoonFlowerBold.ttf", 100)
    love.graphics.setFont(mainFont)

    -- set the color of font and shapes
    love.graphics.setColor(0,255,255)

 end

-- This function is called continuously and will probably be where most of your math is done. 
    -- 
 function love.update(dt)

    -- listen for keyboard events
    if love.keyboard.isDown("up") then

    
        love.graphics.setBackgroundColor(255,255,255) -- WERKT WEL
        --love.graphics.print("dit is een test 2", 40, 100) -- WERKT NIET
        someVar = 1;
    

    end
 end



-- is where all the drawing happens (if that wasn't obvious enough already) and if you call any of the love.graphics 
-- outside of this function then it's not going to have any effect. This function is also called continuously so keep in 
-- mind that if you change the font/color/mode/etc at the end of the function then it will have a effect on things at the 
-- beginning of the function.
function love.draw()
    --love.graphics.print("This text is not black because of the line below", 100, 100)
    --love.graphics.setColor(255,0,0)
    --love.graphics.print("This text is red", 100, 200)

    
    love.graphics.rectangle('fill', 10, WINDOW_HEIGHT/2, 50, 50)

    if someVar == 1 then
        love.graphics.print("dit is een test 2", 40, 120) -- dit is blauw omdat de laaste kleur die geset is door draw blauw is, dus de kleur die je set in init wordt overridden
    end
    
    love.graphics.print("dit is een test", 40, 60)

    love.graphics.setColor(0, 255, 0, 255)
    love.graphics.print("This is a pretty lame example.", 10, 200)
    love.graphics.setColor(255, 0, 0, 255)
    love.graphics.print("This lame example is twice as big.", 10, 250, 0, 2, 2)
    love.graphics.setColor(0, 0, 255, 255)
    love.graphics.print("This example is lamely vertical.", 300, 30, math.pi/2)

end