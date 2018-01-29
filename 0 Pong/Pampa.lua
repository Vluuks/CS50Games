-- [[ De ultieme Pampa class! ]]

Pampa = Class{}

function Pampa:init(x, y, image)
    self.x = x;
    self.y = y;
    self.image = image;
    self.speed = 500;
    self.direction = 'left';
    self.width = image:getWidth();
    self.height = image:getHeight();
end

function Pampa:updateCoords(dt, direction)

    -- appropriate actions for each key
    -- speed x time passed, is added to the x or y
    directionChange = {
        
        -- up
        ['w'] = function() 
                    self.y =  math.max(0, self.y - (dt * self.speed)); 
                end,
        
                -- left        
        ['a'] = function() 
                    self.x = math.max(0, self.x - (dt * self.speed)); 
                    self.direction = 'left';
                end,     
        
                -- down        
        ['s'] = function() 
                    self.y = math.min(WINDOW_HEIGHT - self.height, self.y + (dt * self.speed)); 
                end,     
        
                --right        
        ['d'] = function() 
                    self.x = math.min(WINDOW_WIDTH - self.width, self.x + (dt * self.speed)); 
                    self.direction = 'right';
                end      
    }
    -- update coordinates
    directionChange[direction]();

end    

-- render the PAMP
function Pampa:render()
    love.graphics.setColor(255,255,255,255);
    if(self.direction == 'left') then
        love.graphics.draw(self.image, self.x, self.y, 0, -1, 1, self.width, 0);
    elseif(self.direction == 'right') then
        love.graphics.draw(self.image, self.x, self.y);
    end

    love.graphics.setColor(255,255,255,255);
end

-- say
function Pampa:toekeToek()
    love.graphics.setColor(55, 55, 55);
    love.graphics.print("TOEKETOEKETOEK!!!!!!!", 10, 200);
 
end

function Pampa:hoiTia()
    love.graphics.setColor(55, 55, 55);
    love.graphics.print("hoi Tia!!!!!!!", 10, 400);
 
end