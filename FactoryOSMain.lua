os.loadAPI("FactoryOS/FactoryOSMoniPeriph")

local mon, monitor, monX, monY

monitor = FactoryOSMoniPeriph.periphSearch("monitor")

if monitor == null then
    error("No monitor found")
end

FactoryOSMoniPeriph.draw_text(monitor, 1, 1, "FactoryOS", colors.white, colors.black)