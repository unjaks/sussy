local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer 
local dwRunService = game:GetService("RunService")

local settings_tbl = {
    ESP_Enabled = true,
    ESP_TeamCheck = false,
    Chams = true,
    Chams_Color = Color3.fromRGB(255, 255, 255),
    Chams_Transparency = 0.6,
    Chams_Glow_Color = Color3.fromRGB(255, 0, 0)
}

function destroy_chams(char)
    for _, part in next, char:GetChildren() do 
        if part:IsA("BasePart") and part.Transparency ~= 1 then
            if part:FindFirstChild("Glow") and part:FindFirstChild("Chams") then
                part.Glow:Destroy()
                part.Chams:Destroy() 
            end 
        end 
    end 
end

dwRunService.Heartbeat:Connect(function()
    if settings_tbl.ESP_Enabled then
        for _, player in next, dwEntities:GetPlayers() do 
            if player ~= dwLocalPlayer then
                if player.Character and 
                   player.Character:FindFirstChild("HumanoidRootPart") and 
                   player.Character:FindFirstChild("Humanoid") and 
                   player.Character.Humanoid.Health ~= 0 then

                    if not settings_tbl.ESP_TeamCheck then
                        local char = player.Character 

                        for _, part in next, char:GetChildren() do 
                            if part:IsA("BasePart") and part.Transparency ~= 1 then
                                if settings_tbl.Chams then
                                    if not part:FindFirstChild("Glow") and 
                                       not part:FindFirstChild("Chams") then

                                        local chams_box = Instance.new("BoxHandleAdornment", part)
                                        chams_box.Name = "Chams"
                                        chams_box.AlwaysOnTop = true 
                                        chams_box.ZIndex = 4 
                                        chams_box.Adornee = part 
                                        chams_box.Color3 = settings_tbl.Chams_Color
                                        chams_box.Transparency = settings_tbl.Chams_Transparency
                                        chams_box.Size = part.Size + Vector3.new(0.02, 0.02, 0.02)

                                        local glow_box = Instance.new("BoxHandleAdornment", part)
                                        glow_box.Name = "Glow"
                                        glow_box.AlwaysOnTop = false 
                                        glow_box.ZIndex = 3 
                                        glow_box.Adornee = part 
                                        glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                        glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)
                                    end
                                else
                                    destroy_chams(char)
                                end
                            end
                        end
                    else
                        if player.Team == dwLocalPlayer.Team then
                            destroy_chams(player.Character)
                        end
                    end
                else
                    destroy_chams(player.Character)
                end
            end
        end
    else 
        for _, player in next, dwEntities:GetPlayers() do 
            if player ~= dwLocalPlayer and 
               player.Character and 
               player.Character:FindFirstChild("HumanoidRootPart") and 
               player.Character:FindFirstChild("Humanoid") and 
               player.Character.Humanoid.Health ~= 0 then
                
                destroy_chams(player.Character)
            end
        end
    end
end)
