display.setStatusBar(display.HiddenStatusBar)
local w = display.contentWidth
local h = display.contentHeight
local scrollspeed = 3.5

local b1 = display.newImageRect("trawa.jpg", 500,500)
local b2 = display.newImageRect("trawa.jpg", 500,500)
local b3 = display.newImageRect("trawa.jpg", 500,500)

b1.x = w*0.5
b1.y = h/2
b2.x=b1.x+500
b2.y=h/2
b3.x =b2.x+500
b3.y = h/2

local function move(event)
  b1.x = b1.x-scrollspeed
  b2.x = b2.x-scrollspeed
  b3.x = b3.x-scrollspeed
  
  if(b1.x+b1.contentHeight>720) then
b1:translate(0,0)
end
  if(b2.x+b2.contentHeight>720) then
b2:translate(0,0)
end
  if(b3.x+b3.contentHeight>720) then
b3:translate(0,0)
end
end

Runtime:addEventListener("enterFrame", move)
