-- vim: ts=4 sw=4 noet ai cindent syntax=lua

--[[
Conky, a system monitor, based on torsmo
]]

conky.config = {
    out_to_x = false,
    out_to_console = true,
    short_units = true,
    update_interval = 1,
    default_color = 'white',
    default_outline_color = 'white',
    default_shade_color = 'white',    
}

home = os.getenv("HOME")
dofile(home .. '/.config/conky/' .. 'jsonhelper.lua')
dofile(home .. '/.config/conky/' .. 'jsonparts.lua')

--[[
-- if you care about performance, comment-out this variable.
disabled = ''
    .. parts.cputemp .. ',' 
    .. parts.download .. ','
    .. parts.upload .. ','
    .. parts.memory .. ','
    .. parts.cpu0 .. ','
    .. parts.battery .. ','
    .. parts.date .. ','
    .. parts.time
]]

enabled = ''
--    .. parts.mpd .. ','
    .. parts.net .. ','
    .. parts.mem .. ','
    .. parts.volume .. ','
    .. parts.battery .. ','
    .. parts.date .. ','
    .. parts.time 
--    .. jsonhelper.separator()


conky.text = [[ 
[ 
]] .. enabled .. [[
],
]]
