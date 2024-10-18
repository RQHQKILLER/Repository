local UserInputService = game:GetService("UserInputService")
local moving = false
local canActivate = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://9477540056"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack
local movementSpeed = 80

local function moveForward()
    while moving do
        local forwardDirection = humanoidRootPart.CFrame.LookVector
        humanoidRootPart.Velocity = forwardDirection * movementSpeed
        runService.Stepped:Wait()
    end
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.R and canActivate then
        if moving then
            moving = false
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- إيقاف الحركة

            for i, v in character:GetDescendants() do
                if v:IsA("Attachment") and v:FindFirstChild("ParticleEmitter") and v.Name == "sigmarun" then
                    v:Destroy()
                end
            end
            if animationTrack then
                animationTrack:Stop()
            end

            canActivate = true
            wait(0) -- فترة التهدئة لمدة 10 ثواني
            canActivate = true
        else
            canActivate = true
            moving = true
            for i, v in character:GetChildren() do
                if v:IsA("Part") then
                    local Attachment = Instance.new("Attachment")
                    local ParticleEmitter = Instance.new("ParticleEmitter")
                    Attachment.Parent = v
                    Attachment.Name = "sigmarun"
                    ParticleEmitter.Brightness = 5
                    ParticleEmitter.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.109804, 1, 0.0117647), 0), ColorSequenceKeypoint.new(1, Color3.new(0.0470588, 1, 0.0470588), 0)})
                    ParticleEmitter.Drag = 3
                    ParticleEmitter.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    ParticleEmitter.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    ParticleEmitter.Lifetime = NumberRange.new(0.5, 0.5)
                    ParticleEmitter.LightEmission = -1
                    ParticleEmitter.LockedToPart = true
                    ParticleEmitter.Rate = 2.5
                    ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 0), NumberSequenceKeypoint.new(1, 2, 0)})
                    ParticleEmitter.Speed = NumberRange.new(0, 0)
                    ParticleEmitter.Texture = "http://www.roblox.com/asset/?id=14904853757"
                    ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.198684, 0.491803, 0), NumberSequenceKeypoint.new(0.501316, 0.513661, 0), NumberSequenceKeypoint.new(0.798684, 0.497268, 0), NumberSequenceKeypoint.new(1, 1, 0)})
                    ParticleEmitter.ZOffset = -1
                    ParticleEmitter.Parent = Attachment
                end
            end
            animationTrack = animator:LoadAnimation(animation)
            animationTrack:Play()
            moveForward()

            wait(10000) -- مدة التفعيل لـ 10 ثواني

            moving = false -- التوقف عن المشي
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- إيقاف الحركة

            for i, v in character:GetDescendants() do
                if v:IsA("Attachment") and v:FindFirstChild("ParticleEmitter") and v.Name == "sigmarun" then
                    v:Destroy()
                end
            end
            if animationTrack then
                animationTrack:Stop()
            end
            
            canActivate = true
        end
    end
end)

-----------------------
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://15933100479"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack
local bodyPosition
local isUnderground = false
local groundPart
local xRayEnabled = false

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        -- تفعيل الأنيميشن
        if animationTrack then
            animationTrack:Stop()
        end
        animationTrack = animator:LoadAnimation(animation)
        animationTrack:Play()

        wait(1) -- الانتظار لمدة ثانية

        -- جعل الشخصية غير ملموسة
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        -- نقل الشخصية لمسافة 20 تحت الأرض
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -25, 0)
        isUnderground = true

        -- إنشاء أرضية ضخمة تحت الأرض لمسافة -20
        groundPart = Instance.new("Part")
        groundPart.Name = "TemporaryGround"
        groundPart.Size = Vector3.new(1000, 10, 1000) -- حجم كبير جدًا
        groundPart.Position = humanoidRootPart.Position + Vector3.new(0, -25, 0)
        groundPart.Anchored = true
        groundPart.Parent = workspace

        -- تفعيل X-ray
        if not xRayEnabled then
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and part.Parent ~= character then
                    part.Transparency = 0.5
                end
            end
            xRayEnabled = true
        end
        -- الانتظار لمدة ثانية لإكمال النقل
        wait(1)

        -- إعادة جعل الشخصية ملموسة
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    elseif input.KeyCode == Enum.KeyCode.T then
        -- تفعيل الأنيميشن
        if animationTrack then
            animationTrack:Stop()
        end
        animationTrack = animator:LoadAnimation(animation)
        animationTrack:Play()

        wait(1) -- الانتظار لمدة ثانية

        -- جعل الشخصية غير ملموسة
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        -- رفع الشخصية لمسافة 20 للأعلى
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 25, 0)
        isUnderground = false

        -- إعادة جعل الشخصية ملموسة
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end

        -- إلغاء X-ray
        if xRayEnabled then
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = 0
                end
            end
            xRayEnabled = false
        end
    elseif input.KeyCode == Enum.KeyCode.J and groundPart then
        -- حذف الأرضية التي تم إنشاؤها
        groundPart:Destroy()
        groundPart = nil
    end
end)

-----------------------------

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://"
local animationTrack = humanoid:LoadAnimation(animation)

local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.K then
        animationTrack:Play()
    elseif input.KeyCode == Enum.KeyCode.Y then
        animationTrack:Stop()
    end
end)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local mouse = player:GetMouse()

local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.X then
        local targetPosition = mouse.Hit.p
        character:MoveTo(targetPosition)
    end
end)

---

local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://13196873638"
local animationTrack

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
        if animationTrack then
            animationTrack:Stop()
        end
        animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()
    end
end)

---------------------
getgenv().Camlock_Settings = {
        Prediction = 0.157,
        AimPart = "Torso",
        Key = "z",
        AutoPrediction = false,
        Notification = true,
        Button = true,
        AntiGroundShots = false,
        UnderGroundResolver = false,

        -- DO NOT TOUCH THIS OR THE CAMLOCK WILL NOT WORK --
        Version = "2.5.1",
        Credits = "space_0999",
        DiscordServer = "discord.gg/SKhamGzTdn"
    }
    
    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elxocasXD/Trip-Hub/main/Scripts/Cam%20Lock.lua'))() 
