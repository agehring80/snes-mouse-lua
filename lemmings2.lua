function LEMMINGS2Mouse()
    inp = input.get()
    pad = joypad.get(1)
    offset = -7 -- to center the mousecursor
    minx = memory.readbyte(0x7E1025)
    miny = memory.readbyte(0x7E1026)
    maxx = memory.readbyte(0x7E1027)
    maxy = memory.readbyte(0x7E1028)

    --gui.text(2, 60, memory.readbyte(0x7E0C34))
    if(inp.xmouse+offset >= minx and inp.xmouse+offset <= maxx) then
        memory.writebyte(0x7E0C34,inp.xmouse+offset)
    elseif(inp.xmouse+offset < minx) then
        memory.writebyte(0x7E0C34,minx)
    elseif(inp.xmouse+offset > maxx) then
        memory.writebyte(0x7E0C34,maxx)
    end
    --gui.text(2, 70, inp.xmouse+offset)


    --gui.text(2, 100, memory.readbyte(0x7E0C35))
    if(inp.ymouse+offset >= miny and inp.ymouse+offset <= maxy) then
        memory.writebyte(0x7E0C35,inp.ymouse+offset)
    elseif(inp.ymouse+offset < miny) then
        memory.writebyte(0x7E0C35,miny)
    elseif(inp.ymouse+offset > maxy) then
        memory.writebyte(0x7E0C35,maxy)
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
        pad.B = true
        joypad.set(1,pad)
    end

    if (inp.rightclick) then
        pad.start = true
        joypad.set(1,pad)
    end
end
gui.register(LEMMINGS2Mouse)
