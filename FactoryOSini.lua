--ini file for FactoryOS

local libURL = "https://raw.githubusercontent.com/PanPioter1/FactoryOS/blob/main/FactoryOSMoniPeriph.lua"
local mainURL = "https://raw.githubusercontent.com/PanPioter1/FactoryOS/blob/main/FactoryOSMain.lua"
local libFile, mainFile

fs.makeDir("FactoryOS")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("FactoryOS/FactoryOSMoniPeriph.lua", "w")
file1.write(libFile)
file1.close()

main = http.get(mainURL)
mainFile = main.readAll()

local file2 = fs.open("FactoryOS/FactoryOSMain.lua", "w")
file2.write(mainFile)
file2.close()