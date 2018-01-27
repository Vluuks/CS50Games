-- [[ De ultieme Pampa class! ]]

Pampa = Class{}

function Pampa:init(x, y, image)
    self.x = x;
    self.y = y;
    self.image = image;
end

-- render the PAMP
function Pampa:render()
    love.graphics.setColor(255,255,255,255);
    love.graphics.draw(self.image, self.x, self.y);
    love.graphics.setColor(255,255,255,255);
end


function Pampa:toekeToek()
    love.graphics.setColor(55, 55, 55);
    love.graphics.print("TOEKETOEKETOEK!!!!!!!", 10, 200);
 
end

function Pampa:hoiTia()
    love.graphics.setColor(55, 55, 55);
    love.graphics.print("hoi Tia!!!!!!!", 10, 400);
 
end