local StarterGui = game:GetService("StarterGui")
local toolbarVisible = true 

while true do
    toolbarVisible = toolbarVisible
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, toolbarVisible)
    wait(0.1)
end
