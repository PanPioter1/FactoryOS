--ini file for FactoryOS

local libURL = "https://raw.githubusercontent.com/PanPioter1/FactoryOS/main/FactoryOSMoniPeriph.lua"
local mainURL = "https://raw.githubusercontent.com/PanPioter1/FactoryOS/main/FactoryOSMain.lua"
local lib, startup
local libFile, startupFile

fs.makeDir("FactoryOS")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("FactoryOS/FactoryOSMoniPeriph", "w")
file1.write(libFile)
file1.close()

startup = http.get(mainURL)
startupFile = startup.readAll()

local file2 = fs.open("FactoryOS/startup", "w")
file2.write(startupFile)
file2.close()