-- peripheral identification

function periphSearch(type)
    local names = peripheral.getNames()
    local i, name
    for i, name in pairs(names) do
        if peripheral.getType(name) == type then
            return peripheral.wrap(name)
        end
    end
    return null
end

--monitor text display

function draw_text(mon, x, y, text, tCol, bCol)
    mon.setBackgroundColor(bCol)
    mon.setTextColor(tCol)
    mon.setCursorPos(x, y)
    mon.write(text)
end

function draw_text_right(mon, offset, y, text, tCol, bCol)
    mon.setBackgroundColor(bCol)
    mon.setTextColor(tCol)
    mon.setCursorPos(mon.getX()-string.len(tostring(text))-offset,y)
    mon.write(text)
end

--progress bar
function draw_line(mon, x, y, length, color)
    if length < 0 then
        length = 0
    end
    mon.setBackgroundColor(color)
    mon.setCursorPos(x, y)
    mon.write(string.rep(" ", length))
end

function progress_bar(mon, x, y, length, minVal, maxVal, bar_color, bCol)
    draw_line(mon, x, y, length, bCol)
    local barSize = math.floor(length * (minVal / maxVal))
    draw_line(mon, x, y, barSize, bar_color)
end

--clear

function clear(mon)
    term. clear()
    term.setCursorPos(1, 1)
    mon.setBackgroundColor(colors.black)
    mon.clear()
    mon.setCursorPos(1, 1)
end