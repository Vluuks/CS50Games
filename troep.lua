-- [[ THIS IS A COMMENT ]]

function love.draw()
    love.graphics.print("HOI TIM JE BENT DE MEEST LEUKE JONGEN OOIT <3", 400, 300)
    image = love.graphics.newImage("lovekroot.png")
    love.graphics.setNewFont(12)
    
    -- love.graphics.setColor(0,0,0)
    love.graphics.setBackgroundColor(255,255,255)
    
    love.graphics.draw(image, imgx, imgy)
    love.grap
end