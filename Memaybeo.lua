-- =========================================================
-- BEOZWI HUB - CHẾ ĐỘ FARM KILL SIÊU TỐC (NO GUI)
-- TỰA GAME: ONE PIECE FINAL CHAPTER
-- =========================================================

-- Bật cấu hình mặc định (Tự động kích hoạt khi chạy script)
_G.FarmKill = true       -- Bật chế độ tự động săn và hạ gục quái
_G.AutoStatsMelee = true -- Tự động cộng điểm vào Melee để tăng sát thương đấm

-- HÀM XỬ LÝ CHÍNH: FARM KILL MOBS
task.spawn(function()
    while _G.FarmKill do
        task.wait()
        pcall(function()
            -- Quét toàn bộ danh sách quái vật có trong khu vực Workspace
            for _, mob in pairs(game:GetService("Workspace").Mob:GetChildren()) do
                if mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 and mob:FindFirstChild("HumanoidRootPart") then
                    
                    -- Vòng lặp khóa mục tiêu và tấn công liên tục cho đến khi quái chết
                    repeat
                        task.wait()
                        -- Dịch chuyển nhân vật đến sát vị trí của quái (vị trí tối ưu để gây sát thương)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
                        
                        -- Giả lập thao tác click chuột/bấm màn hình liên tục để thực hiện đòn đánh (Kill Mobs)
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                    until not _G.FarmKill or not mob:FindFirstChild("Humanoid") or mob.Humanoid.Health <= 0
                    
                end
            end
        end)
    end
end)

-- HÀM BỔ TRỢ: TỰ ĐỘNG CỘNG ĐIỂM SÁT THƯƠNG (CÀY ĐIỂM MELEE ĐỂ DIỆT QUÁI NHANH HƠN)
task.spawn(function()
    while _G.AutoStatsMelee do
        task.wait(1) -- Hệ thống tự động quét và cộng điểm sau mỗi 1 giây
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.Stats:InvokeServer("Melee", 1)
        end)
    end
end)

-- Xuất thông báo xác nhận trạng thái hoạt động dưới hệ thống khung chat của Roblox
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
    Text = "[beozwi Hub]: Chế độ Farm Kill và Tự cộng điểm Melee đã được kích hoạt thành công!";
    Color = Color3.fromRGB(255, 69, 0); -- Màu đỏ cam nổi bật
    Font = Enum.Font.SourceSansBold;
})
