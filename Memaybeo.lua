-- Sử dụng thư viện giao diện đã được sửa lỗi kết nối ổn định
local OrionLib = loadstring(game:HttpGet(('https://githubusercontent.com')))()

-- 1. KHỞI TẠO MENU CHÍNH MANG TÊN BẠN
local Window = OrionLib:MakeWindow({
    Name = "beozwi Hub | One Piece Final", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "BeozwiOnePiece"
})

-- 2. THÔNG BÁO CHÀO MỪNG ĐỘC QUYỀN
OrionLib:MakeNotification({
    Name = "Đăng Nhập Thành Công!", 
    Content = "Chào mừng bạn đến với Script độc quyền của beozwi", 
    Image = "rbxassetid://4483345998", 
    Time = 5
})

-- 3. TAB THÔNG TIN SỞ HỮU CỦA BẠN
local InfoTab = Window:MakeTab({
    Name = "Thông Tin",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

InfoTab:AddParagraph("Chủ sở hữu","Script thuộc quyền sở hữu cá nhân của: beozwi")
InfoTab:AddParagraph("Tựa game hỗ trợ","One Piece: Final Chapter")
InfoTab:AddParagraph("Phiên bản","v1.0 Private - Miễn Phí Vĩnh Viễn")

-- 4. TAB CHỨC NĂNG CHÍNH (Giữ nguyên gốc tính năng bạn gửi)
local MainTab = Window:MakeTab({
    Name = "Tính Năng",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Nút bấm 1: Auto Farm Mobs
MainTab:AddToggle({
    Name = "Auto Farm Mobs",
    Default = false,
    Callback = function(Value)
        _G.farm = Value
        while _G.farm do
            task.wait()
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Mob:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                        until not _G.farm or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end    
})

-- Nút bấm 2: Auto Farm Chests (Nhặt rương)
MainTab:AddToggle({
    Name = "Auto Chests",
    Default = false,
    Callback = function(Value)
        _G.chest = Value
        while _G.chest do
            task.wait()
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Chest:GetChildren()) do
                    if v:IsA("MeshPart") or v:IsA("Part") then
                        repeat
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        until not _G.chest or not v:IsA("MeshPart")
                    end
                end
            end)
        end
    end    
})

-- Nút bấm 3: Tự động cộng điểm Stats (Melee)
MainTab:AddToggle({
    Name = "Auto Stats Melee",
    Default = false,
    Callback = function(Value)
        _G.melee = Value
        while _G.melee do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Melee", 1)
        end
    end    
})

-- Nút bấm 4: Tự động cộng điểm Stats (Defense)
MainTab:AddToggle({
    Name = "Auto Stats Defense",
    Default = false,
    Callback = function(Value)
        _G.defense = Value
        while _G.defense do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Defense", 1)
        end
    end    
})

-- Nút bấm 5: Tự động cộng điểm Stats (Sword)
MainTab:AddToggle({
    Name = "Auto Stats Sword",
    Default = false,
    Callback = function(Value)
        _G.sword = Value
        while _G.sword do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Sword", 1)
        end
    end    
})

-- Nút bấm 6: Tự động cộng điểm Stats (Devil Fruit)
MainTab:AddToggle({
    Name = "Auto Stats Fruit",
    Default = false,
    Callback = function(Value)
        _G.fruit = Value
        while _G.fruit do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Devil Fruit", 1)
        end
    end    
})

OrionLib:Init()
-- Nút bấm 1: Auto Farm Mobs
MainTab:AddToggle({
    Name = "Auto Farm Mobs",
    Default = false,
    Callback = function(Value)
        _G.farm = Value
        while _G.farm do
            task.wait()
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Mob:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                        until not _G.farm or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end    
})

-- Nút bấm 2: Auto Farm Chests (Nhặt rương)
MainTab:AddToggle({
    Name = "Auto Chests",
    Default = false,
    Callback = function(Value)
        _G.chest = Value
        while _G.chest do
            task.wait()
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Chest:GetChildren()) do
                    if v:IsA("MeshPart") or v:IsA("Part") then
                        repeat
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        until not _G.chest or not v:IsA("MeshPart")
                    end
                end
            end)
        end
    end    
})

-- Nút bấm 3: Tự động cộng điểm Stats (Melee)
MainTab:AddToggle({
    Name = "Auto Stats Melee",
    Default = false,
    Callback = function(Value)
        _G.melee = Value
        while _G.melee do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Melee", 1)
        end
    end    
})

-- Nút bấm 4: Tự động cộng điểm Stats (Defense)
MainTab:AddToggle({
    Name = "Auto Stats Defense",
    Default = false,
    Callback = function(Value)
        _G.defense = Value
        while _G.defense do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Defense", 1)
        end
    end    
})

-- Nút bấm 5: Tự động cộng điểm Stats (Sword)
MainTab:AddToggle({
    Name = "Auto Stats Sword",
    Default = false,
    Callback = function(Value)
        _G.sword = Value
        while _G.sword do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Sword", 1)
        end
    end    
})

-- Nút bấm 6: Tự động cộng điểm Stats (Devil Fruit)
MainTab:AddToggle({
    Name = "Auto Stats Fruit",
    Default = false,
    Callback = function(Value)
        _G.fruit = Value
        while _G.fruit do
            task.wait()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Devil Fruit", 1)
        end
    end    
})

OrionLib:Init()
