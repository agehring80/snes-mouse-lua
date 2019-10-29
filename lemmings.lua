function LEMMINGSMouse()
    inp = input.get()
    pad = joypad.get(1)
    offset = -4 -- to center the mousecursor
    minx = 0
    miny = 0
    maxx = 246
    maxy = 214

    --gui.text(2, 60, memory.readbyte(0x7E0071))
    if(inp.xmouse+offset >= minx and inp.xmouse+offset <= maxx) then
        memory.writebyte(0x7E0071,inp.xmouse+offset)
    elseif(inp.xmouse+offset < minx) then
        memory.writebyte(0x7E0071,minx)
    elseif(inp.xmouse+offset > maxx) then
        memory.writebyte(0x7E0071,maxx)
    end
    --gui.text(2, 70, inp.xmouse+offset)


    --gui.text(2, 100, memory.readbyte(0x7E0073))
    if(inp.ymouse+offset >= miny and inp.ymouse+offset <= maxy) then
        memory.writebyte(0x7E0073,inp.ymouse+offset)
    elseif(inp.ymouse+offset < miny) then
        memory.writebyte(0x7E0073,miny)
    elseif(inp.ymouse+offset > maxy) then
        memory.writebyte(0x7E0073,maxy)
    end
    --gui.text(2, 110, inp.ymouse+offset)


    if (inp.xmouse+offset >= maxx) then
        pad.right = true
        joypad.set(1,pad)
    end

    if (inp.xmouse+offset <= minx) then
        pad.left = true
        joypad.set(1,pad)
    end

    if (inp.ymouse+offset >= maxy) then
        pad.down = true
        joypad.set(1,pad)
    end

    if (inp.ymouse+offset <= miny) then
        pad.up = true
        joypad.set(1,pad)
    end

    if (inp.leftclick) then
        pad.A = true
        joypad.set(1,pad)
    end

    if (inp.rightclick) then
        pad.start = true
        joypad.set(1,pad)
    end
end
gui.register(LEMMINGSMouse)
