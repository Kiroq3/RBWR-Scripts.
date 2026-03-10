local starterGui = game:GetService("StarterGui")
local function localWatch(obj,kind,logfn)
    logfn(kind..":", obj.Value)
    obj:GetPropertyChangedSignal("Value"):Connect(function()
        logfn(kind..":", obj.Value)
    end)
end

local D = workspace.Demands
local success = false

localWatch(D.NextDemandU1, "Next Demand U1", warn)
localWatch(D.NextDemandU2, "Next Demand U2", warn)
localWatch(D.DemandU1, "Current Demand U1", print)
localWatch(D.DemandU2, "Current Demand U2", print)

localWatch(D.TimeLeft, "Time left", print)

while not success do
    success = pcall(function()
        starterGui:SetCore("SendNotification", {
            Title = "Script Loaded";
            Text = "Loaded Successfully!";
            Duration = 5;
        })
    end)
    task.wait(0.1)
end

print("Loaded")
