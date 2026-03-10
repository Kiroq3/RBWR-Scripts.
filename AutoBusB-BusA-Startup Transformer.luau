local u_1 = workspace.ControlRoom2.PanelReaktora.Konsola3.PanelElektryczny.GornyPanel.Przelacznik_BUSA2.WPrawo.ClickDetector
local u_2 = workspace.Reaktor2.Elektryczny.BusA
local u_3 = workspace.Reaktor2.Turbina.GeneracjaPradu
local u_4 = workspace.ControlRoom2.PanelReaktora.Konsola3.PanelElektryczny.GornyPanel.Przelacznik_BUSA1.WPrawo.ClickDetector
local u_5 = workspace.ControlRoom2.PanelReaktora.Konsola3.PanelElektryczny.GornyPanel.Przelacznik_BUSB.WLewo.ClickDetector
local u_6 = workspace.ControlRoom2.PanelReaktora.Konsola3.PanelElektryczny.GornyPanel.Przelacznik_BUSB.WPrawo.ClickDetector

local busAoff = false
local turbineAbove = u_3.Value > 50

u_2:GetPropertyChangedSignal("Value"):Connect(function()
    if not u_2.Value and not busAoff then
        busAoff = true
        fireclickdetector(u_1)
    elseif u_2.Value and busAoff then     
        busAoff = false
    end
end)

u_3:GetPropertyChangedSignal("Value"):Connect(function()
    if u_3.Value > 50 and not turbineAbove then
        turbineAbove = true
        fireclickdetector(u_4)
        fireclickdetector(u_6)
    elseif u_3.Value <= 10 and turbineAbove then
        turbineAbove = false
        fireclickdetector(u_1)
        fireclickdetector(u_5)
    end
end)

local StarterGui = game:GetService("StarterGui")

local success = false
while not success do
    success = pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Script Loaded",
            Text = "Loaded Successfully!",
            Duration = 5
        })
    end)
    task.wait(0.1)
end

print("Loaded")
