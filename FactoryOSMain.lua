--function load

os.loadAPI("FactoryOS/FactoryOSMoniPeriph")

--ini vars
local mon, monitor, monX, monY

--shearch for monitor
monitor = peripheral.find("monitor")

if monitor == null then
    error("No monitor found")
end

--monitor setup
FactoryOSMoniPeriph.clear(monitor)
monitor.backgroundColor(colors.blue)
FactoryOSMoniPeriph.draw_text(monitor, 1, 1, "FactoryOS", colors.black, colors.blue)