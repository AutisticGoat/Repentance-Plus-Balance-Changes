local scriptsPath = "resources/scripts/"
local Actives = "Actives/"

local includedScripts = {
    scriptsPath .. Actives .. "Flip",
    scriptsPath .. Actives .. "Void",
    scriptsPath .. Actives .. "TammysHead",
    scriptsPath .. Actives .. "MegaBean",
    scriptsPath .. Actives .. "JarOfWisps",
    scriptsPath .. Actives .. "Abyss",
}

for _, scripts in ipairs(includedScripts) do
    include(scripts)
end

print("Hola")
