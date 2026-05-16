libinput:register({1})
local factor = 3
local frame_func
libinput:connect("new-evdev-device", function(device)
    local usages = device:usages()
    if not (usages[evdev.REL_WHEEL] or usages[evdev.REL_WHEEL_HI_RES]) then
        return
    end
    libinput:log_info("wheel-scroll-factor: applying factor=" .. tostring(factor) .. " to " .. device:name())
    device:connect("evdev-frame", frame_func) 
end)
function frame_func(_, frame, _)
    local changed = false
    for _, event in ipairs(frame) do
        if event.usage == evdev.REL_WHEEL or event.usage == evdev.REL_WHEEL_HI_RES then
            event.value = event.value * factor
            changed = true
        end
    end
    if not changed then
        return 
    end
    return frame
end
