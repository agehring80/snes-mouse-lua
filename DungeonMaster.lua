healthplayer1 = 0

function DMMouse()
    inp = input.get()
    pad = joypad.get(1)
    cursorx = memory.readbyte(0x7E0034)
    cursory = memory.readbyte(0x7E0036)
    crtlgroup = 0x7e0420
    crtlitem = 0x7e0422
	crtlitem8sub = memory.readbyte(0x7E0434)
	warriorcount = memory.readbyte(0x7E8727)
	
	mapadr = 0x7E872F
	map = memory.readbyte(0x7E872F)
	xadr = 0x7E8729
	x = memory.readbyte(0x7E8729)
	yadr = 0x7E872B
	y = memory.readbyte(0x7E872B)
	
	
--	     local y = 0
--     local inp= input.get()
 --    for k,v in pairs(inp) do
--      y = y + 8
--       gui.text(2,y,k)
--     end
	 
	 if(healthplayer1 > 0) then
		print(memory.readbyte(0x7EC404))
		memory.writebyte(0x7EC404,healthplayer1)
	 end
	 
	 
	 gui.text(185, 210, "MAP:".. map + 1 .." X:".. x .." Y:".. y)
	
	
	

    --gui.text(2, 60, cursorx)
    --gui.text(2, 70, inp.xmouse)
    --gui.text(2, 100, cursory)
    --gui.text(2, 110, inp.ymouse)
	--print(gpixelcolor(inp.xmouse,inp.ymouse))
	
	memory.writebyte(0x7E044A,1)--set move mode

	if(crtlitem8sub == 0 and between(inp.xmouse,8,174) and between(inp.ymouse,49,175)) then
		memory.writebyte(crtlgroup,8)
		memory.writebyte(0x7E0034,inp.xmouse)--cursorx
		memory.writebyte(0x7E0036,inp.ymouse)--cursory
		memory.writebyte(0x7E046A,inp.xmouse)--dungeonx
		memory.writebyte(0x7E046C,inp.ymouse)--dungeony
	elseif(between(inp.xmouse,16,176) and between(inp.ymouse,64,183)) then
		memory.writebyte(crtlgroup,8)
		if(between(crtlitem8sub,1,3)) then
			if(between(inp.ymouse,64,78)) then
				if(inp.xmouse <= 39) then
					memory.writebyte(crtlitem,8)
				elseif(inp.xmouse <= 71) then
					memory.writebyte(crtlitem,7)
				elseif(inp.xmouse <= 111) then
					memory.writebyte(crtlitem,17)
				elseif(inp.xmouse <= 127) then
					memory.writebyte(crtlitem,18)
				elseif(inp.xmouse <= 143) then
					memory.writebyte(crtlitem,19)
				elseif(inp.xmouse <= 159) then
					memory.writebyte(crtlitem,20)
				elseif(inp.xmouse <= 175) then
					memory.writebyte(crtlitem,21)
				end
			end
			if(between(inp.ymouse,80,94)) then
				if(inp.xmouse <= 31) then
					memory.writebyte(crtlitem,12)
				elseif(inp.xmouse <= 79) then
					memory.writebyte(crtlitem,15)
				elseif(inp.xmouse <= 95) then
					memory.writebyte(crtlitem,16)
				elseif(inp.xmouse <= 111) then
					memory.writebyte(crtlitem,22)
				elseif(inp.xmouse <= 127) then
					memory.writebyte(crtlitem,23)
				elseif(inp.xmouse <= 143) then
					memory.writebyte(crtlitem,24)
				elseif(inp.xmouse <= 159) then
					memory.writebyte(crtlitem,25)
				elseif(inp.xmouse <= 175) then
					memory.writebyte(crtlitem,26)
				end
			end
			if(between(inp.ymouse,96,110)) then
				if(inp.xmouse <= 31) then
					memory.writebyte(crtlitem,0)
				elseif(inp.xmouse <= 79) then
					memory.writebyte(crtlitem,1)
				elseif(inp.xmouse <= 111) then
					memory.writebyte(crtlitem,27)
				elseif(inp.xmouse <= 127) then
					memory.writebyte(crtlitem,28)
				elseif(inp.xmouse <= 143) then
					memory.writebyte(crtlitem,29)
				elseif(inp.xmouse <= 159) then
					memory.writebyte(crtlitem,30)
				elseif(inp.xmouse <= 175) then
					memory.writebyte(crtlitem,31)
				end
			end
			if(between(inp.ymouse,112,126)) then
				if(inp.xmouse <= 31) then
					memory.writebyte(crtlitem,13)
				elseif(inp.xmouse <= 79) then
					memory.writebyte(crtlitem,14)
				elseif(inp.xmouse <= 95) then
					memory.writebyte(crtlitem,9)
				end
			end
			if(between(inp.ymouse,128,142)) then
				if(inp.xmouse <= 31) then
					memory.writebyte(crtlitem,6)
				elseif(inp.xmouse <= 79) then
					memory.writebyte(crtlitem,10)
				elseif(inp.xmouse <= 95) then
					memory.writebyte(crtlitem,11)
				end
			end
			if(between(inp.xmouse,41,55) and inp.ymouse >= 72) then
				if(inp.ymouse <= 86) then
					memory.writebyte(crtlitem,2)
				elseif(inp.ymouse <= 102) then
					memory.writebyte(crtlitem,3)
				elseif(inp.ymouse <= 118) then
					memory.writebyte(crtlitem,4)
				elseif(inp.ymouse <= 134) then
					memory.writebyte(crtlitem,5)
				end
			end
			if((crtlitem8sub == 1 or crtlitem8sub == 3) and between(inp.xmouse,136,176) and between(inp.ymouse,176,183)) then
					memory.writebyte(crtlitem,32)
			elseif(crtlitem8sub == 2 and between(inp.xmouse,104,176) and inp.ymouse >= 115) then
				if(inp.ymouse <= 130) then
					memory.writebyte(crtlitem,32)
				elseif(inp.ymouse <= 146) then
					memory.writebyte(crtlitem,33)
				elseif(inp.ymouse <= 163) then
					memory.writebyte(crtlitem,34)
				end
			elseif(crtlitem8sub == 3) then
				if(between(inp.xmouse,112,127) and between(inp.ymouse,119,134)) then
					memory.writebyte(crtlitem,33)
				elseif(between(inp.xmouse,96,111) and inp.ymouse >= 127) then
					if(inp.ymouse <= 142) then
						memory.writebyte(crtlitem,34)
					elseif(inp.ymouse <= 148) then
						memory.writebyte(crtlitem,35)
					else
						memory.writebyte(crtlitem,36)
					end
				elseif(between(inp.ymouse,159,174) and between(inp.xmouse,112,175)) then
					if(inp.xmouse <= 127) then
						memory.writebyte(crtlitem,37)
					elseif(inp.xmouse <= 143) then
						memory.writebyte(crtlitem,38)
					elseif(inp.xmouse <= 159) then
						memory.writebyte(crtlitem,39)
					else
						memory.writebyte(crtlitem,40)
					end
				end
			end
		elseif(crtlitem8sub == 6) then
			if(inp.ymouse <= 117) then
				memory.writebyte(crtlitem,0)
			else
				memory.writebyte(crtlitem,1)
			end
		elseif(crtlitem8sub == 4) then
			if(inp.ymouse <= 83) then
				memory.writebyte(crtlitem,0)
			elseif(inp.ymouse <= 107) then
				memory.writebyte(crtlitem,1)
			elseif(inp.ymouse <= 131) then
				memory.writebyte(crtlitem,2)
			elseif(inp.ymouse <= 161) then
				memory.writebyte(crtlitem,3)
			else
				memory.writebyte(crtlitem,4)
			end
		elseif(crtlitem8sub == 5) then
			memory.writebyte(crtlitem,0)
		end
	elseif(crtlitem8sub <= 3 and inp.ymouse <= 39 and warriorcount >= 1) then
		if (inp.xmouse >= 184 and warriorcount >= 4) then
			warriorpanel(4,184)
		elseif (inp.xmouse >= 128 and warriorcount >= 3) then
			warriorpanel(3,128)	
		elseif (inp.xmouse >= 72 and warriorcount >= 2) then
			warriorpanel(2,72)
		elseif (inp.xmouse >= 16 and warriorcount >= 1) then
			warriorpanel(1,16)	
		end		
	elseif(inp.xmouse >= 184 and between(inp.ymouse,79,135))	then
		memory.writebyte(crtlgroup,5)
		if(gpixelcolor(184,85) == 132) then
			if(inp.ymouse <= 103 and gpixelcolor(184,89) == 107) then
				memory.writebyte(crtlitem,0)
			elseif(inp.ymouse <= 119 and gpixelcolor(184,105) == 107) then
				memory.writebyte(crtlitem,1)
			elseif(gpixelcolor(184,121) == 107) then
				memory.writebyte(crtlitem,2)
			end
		else
			if(inp.xmouse <= 199 and gpixelcolor(185,79) == 148) then
				memory.writebyte(crtlitem,0)
			elseif(inp.xmouse <= 215 and gpixelcolor(201,79) == 148) then
				memory.writebyte(crtlitem,1)
			elseif(inp.xmouse <= 231 and gpixelcolor(217,79) == 148) then
				memory.writebyte(crtlitem,2)
			elseif(gpixelcolor(233,79) == 148) then
				memory.writebyte(crtlitem,3)
			end
		end
	elseif(inp.xmouse >= 184 and between(inp.ymouse,47,70))	then
		memory.writebyte(crtlgroup,4)
		if(inp.ymouse <= 52) then
			memory.writebyte(crtlitem,7)
		elseif(inp.ymouse <= 62) then
			if(inp.xmouse <= 195) then
				memory.writebyte(crtlitem,1)
			elseif(inp.xmouse <= 205) then
				memory.writebyte(crtlitem,2)
			elseif(inp.xmouse <= 215) then
				memory.writebyte(crtlitem,3)
			elseif(inp.xmouse <= 226) then
				memory.writebyte(crtlitem,4)
			elseif(inp.xmouse <= 236) then
				memory.writebyte(crtlitem,5)
			else
				memory.writebyte(crtlitem,6)
			end
		else
			memory.writebyte(crtlitem,0)
		end
	elseif(between(inp.xmouse,200,231) and between(inp.ymouse,159,190)) then
		memory.writebyte(crtlgroup,6)
		if(inp.ymouse <= 174) then
			if(inp.xmouse <= 215) then
				memory.writebyte(crtlitem,0)
			else
				memory.writebyte(crtlitem,1)
			end
		else
			if(inp.xmouse <= 215) then
				memory.writebyte(crtlitem,2)
			else
				memory.writebyte(crtlitem,3)
			end
		end
	end
	
	if(inp.M and inp.pageup and map < 13) then
		memory.writebyte(mapadr,map+1)
		print("M+")
	elseif(inp.M and inp.pagedown and map > 0) then
		memory.writebyte(mapadr,map-1)
		print("M-")
	end
	
	if(inp.X and inp.pageup and x < 31) then
		memory.writebyte(xadr,x+1)
		print("X+")
	elseif(inp.X and inp.pagedown and x > 0) then
		memory.writebyte(xadr,x-1)
		print("X-")
	end
	
	if(inp.Y and inp.pageup and y < 31) then
		memory.writebyte(yadr,y+1)
		print("Y+")
	elseif(inp.Y and inp.pagedown and y > 0) then
		memory.writebyte(yadr,y-1)
		print("Y-")
	end
	

	
	if(inp.pagedown and inp.numpad1) then
		healthplayer1 = memory.readbyte(0x7EC404)
	end
	
    if (inp.leftclick) then
        pad.B = true
        joypad.set(1,pad)
    end

    if (inp.rightclick) then
        pad.A = true
        joypad.set(1,pad)
    end
	
	if (inp.W) then
        pad.up = true
        joypad.set(1,pad)
    end

    if (inp.S) then
        pad.down = true
        joypad.set(1,pad)
    end
	
	if (inp.A) then
        pad.left = true
        joypad.set(1,pad)
    end

    if (inp.D) then
        pad.right = true
        joypad.set(1,pad)
    end
	
	if (inp.Q) then
        pad.L = true
        joypad.set(1,pad)
    end

    if (inp.E) then
        pad.R = true
        joypad.set(1,pad)
    end

end
gui.register(DMMouse)



function between(_var, _min, _max)
	if(_var >= _min and _var <= _max) then
		return true
	else
		return false
	end
end

function gpixelcolor(_x,_y)
	r,g,b = gui.getpixel(_x,_y)
	return g
end

function warriorpanel(_war,_x)
	memory.writebyte(crtlgroup,_war-1)
	if(inp.xmouse >= _x+41) then -- you can always select diagrams
		memory.writebyte(crtlitem,1)				
	elseif(memory.readbyte(0x7ED1C4) == _war) then --if warrior is selected you can't select left and right hand in panel
		memory.writebyte(crtlitem,0)
	else
		if(inp.xmouse >= _x+20) then
			memory.writebyte(crtlitem,2) --right hand
		else
			memory.writebyte(crtlitem,3) --left hand
		end
	end		
end