-- [[ De ultieme Pampa class! ]]

Pampa = Class{}

function Pampa:init(x, y, image, animation)
    self.x = x;
    self.y = y;
    self.image = image;
    self.speed = 500;
    self.direction = 'right';
    self.width = image:getWidth();
    self.height = image:getHeight();

    -- generate animation
    self.animation = self:newAnimation(love.graphics.newImage("animationSheet.png"), self.width, self.height, 1)
end

function Pampa:newAnimation(image, width, height, duration)
    local animation = {};
    animation.spriteSheet = image;
    animation.quads = {};
 
    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            print('in second loop');
            table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()));
        end
    end

    animation.duration = duration or 1;
    animation.currentTime = 0;
 
    print(#animation.quads);
    return animation;

end

function Pampa:updateAnimation(dt)
    self.animation.currentTime = self.animation.currentTime + dt;
    if self.animation.currentTime >= self.animation.duration then
        self.animation.currentTime = self.animation.currentTime - self.animation.duration;
    end
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

    local animationPhase = math.floor(self.animation.currentTime / self.animation.duration * #self.animation.quads) + 1 -- means length

    print("current time and duration")
    print(self.animation.currentTime)
    print(self.animation.duration)
    print("phase and length of quad array")
    print(animationPhase);
    print(#self.animation.quads);

    love.graphics.setColor(255,255,255,255);
    if(self.direction == 'left') then
        love.graphics.draw(self.animation.spriteSheet, self.animation.quads[animationPhase], self.x, self.y, 0, -1, 1, self.width, 0);
    elseif(self.direction == 'right') then
        love.graphics.draw(self.animation.spriteSheet, self.animation.quads[animationPhase], self.x, self.y);
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