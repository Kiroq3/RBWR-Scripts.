local brk_makeupPump = workspace.ControlRoom.SMWATER.MakeupPumpPower -- MakeUp
local brk_servicePump = workspace.ControlRoom.SMWATER.ServicePumpPower -- Service Pump

local brk_OCCPump1 = workspace.ControlRoom.SMWATER.OCC1PumpPower -- OCC 1
local brk_OCCPump2 = workspace.ControlRoom.SMWATER.OCC2PumpPower -- OCC 2

local brk_condensatePump1 = workspace.ControlRoom.CONDENSATE.PumpA1Power -- CondPump 1
local brk_condensatePump2 = workspace.ControlRoom.CONDENSATE.PumpB1Power -- CondPump 2
local brk_condensatePump3 = workspace.ControlRoom.CONDENSATE.PumpCE1Power -- CondPump 3

local brk_circulationPumpA1 = workspace.ControlRoom.RECIRC.PumpA1Power -- Recirc 1
local brk_circulationPumpA2 = workspace.ControlRoom.RECIRC.PumpA2Power -- Recirc 2
local brk_circulationPumpB1 = workspace.ControlRoom.RECIRC.PumpB1Power -- Recirc 3

local brk_circulationPumpB2 = workspace.ControlRoom.RECIRC.PumpB2Power -- Recirc 4
local brk_circulationPumpC1 = workspace.ControlRoom.RECIRC.PumpCE1Power -- Recirc 5
local brk_circulationPumpC2 = workspace.ControlRoom.RECIRC.PumpCE2Power -- Recirc 5

local brk_feedwaterPump1 = workspace.ControlRoom.FEEDWATER.PumpA1Power -- FWP 1
local brk_feedwaterPump2 = workspace.ControlRoom.FEEDWATER.PumpB1Power -- FWP 2
local brk_feedwaterPump3 = workspace.ControlRoom.FEEDWATER.PumpCE1Power -- FWP 3

local brk_condenserPumpA1 = workspace.ControlRoom.CONDENSER.PumpA1Power -- CND 1
local brk_condenserPumpA2 = workspace.ControlRoom.CONDENSER.PumpB1Power -- CND 2
local brk_condenserPumpA3 = workspace.ControlRoom.CONDENSER.PumpC1Power -- CND 3
local brk_condenserPumpA4 = workspace.ControlRoom.CONDENSER.PumpD1Power -- CND 4

local brk_condenserPumpB1 = workspace.ControlRoom.CONDENSER.PumpA2Power -- CND 5
local brk_condenserPumpB2 = workspace.ControlRoom.CONDENSER.PumpB2Power -- CND 6
local brk_condenserPumpB3 = workspace.ControlRoom.CONDENSER.PumpC2Power -- CND 7
local brk_condenserPumpB4 = workspace.ControlRoom.CONDENSER.PumpD2Power -- CND 8

brk_makeupPump:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_makeupPump.Value == 0 or brk_makeupPump.Value == false do   
        task.wait(3) 
        
        if brk_makeupPump.Value == 0 or brk_makeupPump.Value == false then
            fireclickdetector(workspace.ControlRoom.SMWATER.MAKEUPPOWER.Lever.ClickDetector) -- MakeUp
        end
    end
end)

brk_servicePump:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_servicePump.Value == 0 or brk_servicePump.Value == false do   
        task.wait(3) 
        
        if brk_servicePump.Value == 0 or brk_servicePump.Value == false then
            fireclickdetector(workspace.ControlRoom.SMWATER.SERVICEPOWER.Lever.ClickDetector) -- ServicePump
        end
    end
end)

brk_condensatePump1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condensatePump1.Value == 0 or brk_condensatePump1.Value == false do   
        task.wait(3) 
        
        if brk_condensatePump1.Value == 0 or brk_condensatePump1.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSATE.FWA1POWER.Lever.ClickDetector) -- CondPump 1
        end
    end
end)

brk_condensatePump2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condensatePump2.Value == 0 or brk_condensatePump2.Value == false do   
        task.wait(3) 
        
        if brk_condensatePump2.Value == 0 or brk_condensatePump2.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSATE.FWB1POWER.Lever.ClickDetector) -- CondPump 2
        end
    end
end)


brk_condensatePump3:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condensatePump3.Value == 0 or brk_condensatePump3.Value == false do   
        task.wait(3) 
        
        if brk_condensatePump3.Value == 0 or brk_condensatePump3.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSATE.FWCE1POWER.Lever.ClickDetector) -- CondPump 3
        end
    end
end)

brk_circulationPumpA1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_circulationPumpA1.Value == 0 or brk_circulationPumpA1.Value == false do   
        task.wait(3) 
        
        if brk_circulationPumpA1.Value == 0 or brk_circulationPumpA1.Value == false then
            fireclickdetector(workspace.ControlRoom.RECIRC.FWA1POWER.Lever.ClickDetector) -- Recirc 1
        end
    end
end)

brk_circulationPumpA2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_circulationPumpA2.Value == 0 or brk_circulationPumpA2.Value == false do   
        task.wait(3) 
        
        if brk_circulationPumpA2.Value == 0 or brk_circulationPumpA2.Value == false then
            fireclickdetector(workspace.ControlRoom.RECIRC.FWA2POWER.Lever.ClickDetector) -- Recirc 2
        end
    end
end)

brk_circulationPumpB1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_circulationPumpB1.Value == 0 or brk_circulationPumpB1.Value == false do   
        task.wait(3) 
        
        if brk_circulationPumpB1.Value == 0 or brk_circulationPumpB1.Value == false then
            fireclickdetector(workspace.ControlRoom.RECIRC.FWB1POWER.Lever.ClickDetector) -- Recirc 3
        end
    end
end)

brk_circulationPumpB2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_circulationPumpB2.Value == 0 or brk_circulationPumpB2.Value == false do   
        task.wait(3) 
        
        if brk_circulationPumpB2.Value == 0 or brk_circulationPumpB2.Value == false then
            fireclickdetector(workspace.ControlRoom.RECIRC.FWB2POWER.Lever.ClickDetector) -- Recirc 4
        end
    end
end)

brk_circulationPumpC1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_circulationPumpC1.Value == 0 or brk_circulationPumpC1.Value == false do   
        task.wait(3) 
        
        if brk_circulationPumpC1.Value == 0 or brk_circulationPumpC1.Value == false then
            fireclickdetector(workspace.ControlRoom.RECIRC.FWCE1POWER.Lever.ClickDetector) -- Recirc 5
        end
    end
end)



brk_circulationPumpC2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_circulationPumpC2.Value == 0 or brk_circulationPumpC2.Value == false do   
        task.wait(3) 
        
        if brk_circulationPumpC2.Value == 0 or brk_circulationPumpC2.Value == false then
            fireclickdetector(workspace.ControlRoom.RECIRC.FWCE2POWER.Lever.ClickDetector) -- Recirc 6
        end
    end
end)

brk_feedwaterPump1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_feedwaterPump1.Value == 0 or brk_feedwaterPump1.Value == false do   
        task.wait(3) 
        
        if brk_feedwaterPump1.Value == 0 or brk_feedwaterPump1.Value == false then
            fireclickdetector(workspace.ControlRoom.FEEDWATER.FWA1POWER.Lever.ClickDetector) -- FWP 1
        end
    end
end)

brk_feedwaterPump2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_feedwaterPump2.Value == 0 or brk_feedwaterPump2.Value == false do   
        task.wait(3) 
        
        if brk_feedwaterPump2.Value == 0 or brk_feedwaterPump2.Value == false then
            fireclickdetector(workspace.ControlRoom.FEEDWATER.FWB1POWER.Lever.ClickDetector) -- FWP 2
        end
    end
end)

brk_feedwaterPump3:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_feedwaterPump3.Value == 0 or brk_feedwaterPump3.Value == false do   
        task.wait(3) 
        
        if brk_feedwaterPump3.Value == 0 or brk_feedwaterPump3.Value == false then
            fireclickdetector(workspace.ControlRoom.FEEDWATER.FWCE1POWER.Lever.ClickDetector) -- FWP 3
        end
    end
end)

brk_condenserPumpA1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpA1.Value == 0 or brk_condenserPumpA1.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpA1.Value == 0 or brk_condenserPumpA1.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpA1POWER.Lever.ClickDetector) -- CND 1
        end
    end
end)

brk_condenserPumpA2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpA2.Value == 0 or brk_condenserPumpA2.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpA2.Value == 0 or brk_condenserPumpA2.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpB1POWER.Lever.ClickDetector) -- CND 2
        end
    end
end)

brk_condenserPumpA3:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpA3.Value == 0 or brk_condenserPumpA3.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpA3.Value == 0 or brk_condenserPumpA3.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpC1POWER.Lever.ClickDetector) -- CND 3
        end
    end
end)

brk_condenserPumpA4:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpA4.Value == 0 or brk_condenserPumpA4.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpA4.Value == 0 or brk_condenserPumpA4.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpD1POWER.Lever.ClickDetector) -- CND 4
        end
    end
end)

brk_condenserPumpB1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpB1.Value == 0 or brk_condenserPumpB1.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpB1.Value == 0 or brk_condenserPumpB1.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpA2POWER.Lever.ClickDetector) -- CND 5
        end
    end
end)

brk_condenserPumpB2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpB2.Value == 0 or brk_condenserPumpB2.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpB2.Value == 0 or brk_condenserPumpB2.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpB2POWER.Lever.ClickDetector) -- CND 6
        end
    end
end)

brk_condenserPumpB3:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpB3.Value == 0 or brk_condenserPumpB3.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpB3.Value == 0 or brk_condenserPumpB3.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpC2POWER.Lever.ClickDetector) -- CND 7
        end
    end
end)

brk_condenserPumpB4:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_condenserPumpB4.Value == 0 or brk_condenserPumpB4.Value == false do   
        task.wait(3) 
        
        if brk_condenserPumpB4.Value == 0 or brk_condenserPumpB4.Value == false then
            fireclickdetector(workspace.ControlRoom.CONDENSER.CondenserPumpD2POWER.Lever.ClickDetector) -- CND 8
        end
    end
end)


brk_OCCPump1:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_OCCPump1.Value == 0 or brk_OCCPump1.Value == false do   
        task.wait(3) 
        
        if brk_OCCPump1.Value == 0 or brk_OCCPump1.Value == false then
            fireclickdetector(workspace.ControlRoom.SMWATER.OCC1POWER.Lever.ClickDetector) -- OCC 1
        end
    end
end)

brk_OCCPump2:GetPropertyChangedSignal("Value"):Connect(function()

    while brk_OCCPump2.Value == 0 or brk_OCCPump2.Value == false do   
        task.wait(3) 
        
        if brk_OCCPump2.Value == 0 or brk_OCCPump2.Value == false then
            fireclickdetector(workspace.ControlRoom.SMWATER.OCC2POWER.Lever.ClickDetector) -- OCC 2
        end
    end
end)

-- made by kiro
-- meow