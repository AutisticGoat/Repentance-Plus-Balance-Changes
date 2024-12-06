local scriptsPath = "resources/scripts/"
local Actives = "Actives/"
local Passives = "Passives/"

local includedScripts = {
    scriptsPath .. Actives .. "Flip",
    scriptsPath .. Actives .. "Void",
    scriptsPath .. Actives .. "TammysHead",
    scriptsPath .. Actives .. "MegaBean",
    scriptsPath .. Actives .. "JarOfWisps",
    scriptsPath .. Actives .. "Abyss",
    scriptsPath .. Actives .. "ButterBean",
    scriptsPath .. Actives .. "TheBean",
    scriptsPath .. Actives .. "KidneyBean",
    scriptsPath .. Actives .. "Dataminer",
    scriptsPath .. Actives .. "Dataminer",
  
    scriptsPath .. Passives .. "Jupiter",
}

for _, scripts in ipairs(includedScripts) do
    include(scripts)
end

print("Hola")