local Rep = workspace

local function monitorReactor(reacName, displayName)
    local reactor = Rep:FindFirstChild(reacName)

    if not reactor then
        warn(displayName .. ": reactor not found at " .. reacName)
        return
    end

    -- Scram reason
    local reason = reactor:FindFirstChild("SCRAMreason")
    if reason then
        print(displayName .. " initial Reason value: " .. tostring(reason.Value))
        reason:GetPropertyChangedSignal("Value"):Connect(function()
            local val = reason.Value
            if val ~= nil and val ~= false and tostring(val) ~= "" then
                print(displayName .. " Scram reason: " .. tostring(val))
            end
        end)
    else
        warn(displayName .. ": SCRAMreason not found at " .. reacName)
    end

    -- Scram procedure
    local params = reactor:FindFirstChild("Parametry")
    local scram = params and params:FindFirstChild("ProceduraScram")
    if scram then
        print(displayName .. " initial scram value: " .. tostring(scram.Value))
        scram:GetPropertyChangedSignal("Value"):Connect(function()
            if scram.Value then
                print(displayName .. " Reactor Scram initiated!")
            else
                print(displayName .. " Reactor Scram procedure complete.")
            end
        end)
    else
        warn(displayName .. ": ProceduraScram not found at " .. reacName .. ".Parametry")
    end
end

monitorReactor("Reaktor", "Unit 1")
monitorReactor("Reaktor2", "Unit 2")

-- Made by Kiro