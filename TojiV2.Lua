
local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("BeastBreathing")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("ExplosiveRushRun")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://14657259011"
end


----
local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local Sprint = animationsFolder:WaitForChild("Sprint")

if Sprint:IsA("Animation") then
    Sprint.AnimationId = "rbxassetid://14657259011"
end

--------------------
local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("ChippedKatanas")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("Run")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://14657259011"
end

----------
local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("ChippedKatanas")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("Heavy")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://11534464124"
end

-----------------------
local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("BeastBreathing")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("ExplosiveRushStart")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://13287329762"
end

-----------

local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("BeastBreathing")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("PallisadeBiteHit")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://13340668144"
end

---------------------

local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("BeastBreathing")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("ExplosiveRushRun")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://14657259011"
end

-------------------

local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("BeastBreathing")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("CrazyCuttingEscape")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://15457108835"
end

-------------------

local replicatedStorage = game:GetService("ReplicatedStorage")
local animationsFolder = replicatedStorage:WaitForChild("Animations")
local beastBreathingFolder = animationsFolder:WaitForChild("BeastBreathing")
local ExplosiveRushRun = beastBreathingFolder:WaitForChild("Devour")

if ExplosiveRushRun:IsA("Animation") then
    ExplosiveRushRun.AnimationId = "rbxassetid://13256435512"
end

----------------------------------
local normalSpeed = 80
local boostedSpeed = 200
local loopDuration = 10 -- seconds
local boostEffectDuration = 120 -- seconds
local isLoopActive = false
local isBoostEffectActive = false

local function activateLoopSpeed(speed)
    if not isLoopActive then
        isLoopActive = true
        local startTime = tick()
        while tick() - startTime < loopDuration do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
            wait(0) -- تحديث السرعة كل 0.1 ثانية
        end
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = normalSpeed
        isLoopActive = false
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.R then
            if isBoostEffectActive then
                activateLoopSpeed(boostedSpeed)
            else
                activateLoopSpeed(normalSpeed)
            end
        elseif input.KeyCode == Enum.KeyCode.K then
            isBoostEffectActive = true
            wait(boostEffectDuration)
            isBoostEffectActive = false
        end
    end
end)

---------------------------------------------------------------------------------------

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local userInputService = game:GetService("UserInputService")
local isAscending = false
local animationId = "rbxassetid://17397193556"
local animation = Instance.new("Animation")
animation.AnimationId = animationId
local animator = character:WaitForChild("Humanoid"):WaitForChild("Animator")
local animationTrack

local function onKeyPress(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.K and not gameProcessed then
        if isAscending then
            for i = 50, 0, -1 do
                character.Humanoid.HipHeight = i
                wait(0.1) -- يمكنك تعديل هذا الرقم لتغيير سرعة الحركة
            end
            isAscending = false
            if animationTrack then
                animationTrack:Stop()
            end
        else
            animationTrack = animator:LoadAnimation(animation)
            animationTrack:Play()
            for i = 0, 50, 1 do
                character.Humanoid.HipHeight = i
                wait(0.1) -- يمكنك تعديل هذا الرقم لتغيير سرعة الحركة
            end
            isAscending = true
        end
        -- إلغاء تفعيل النصائح البسيطة
        game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
            Text = "تم تفعيل المشي في الهواء!",
            Color = Color3.new(1, 1, 0),
            Font = Enum.Font.SourceSansBold,
            FontSize = Enum.FontSize.Size18,
        })
    end
end

userInputService.InputBegan:Connect(onKeyPress)

-------------------------------------------------------------------------------------------------------

local normalSpeed = 50
local boostedSpeed = 70
local loopDuration = 10 -- seconds
local boostEffectDuration = 120 -- seconds
local isLoopActive = false
local isBoostEffectActive = false

local function activateLoopSpeed(speed)
    if not isLoopActive then
        isLoopActive = true
        local startTime = tick()
        while tick() - startTime < loopDuration do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
            wait(0) -- تحديث السرعة كل 0.1 ثانية
        end
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = normalSpeed
        isLoopActive = false
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.T then
            if isBoostEffectActive then
                activateLoopSpeed(boostedSpeed)
            else
                activateLoopSpeed(normalSpeed)
            end
        elseif input.KeyCode == Enum.KeyCode.K then
            isBoostEffectActive = true
            wait(boostEffectDuration)
            isBoostEffectActive = false
        end
    end
end)

----------------------------------------------------------------------------------------

local UserInputService = game:GetService("UserInputService")
local AnimationId = "rbxassetid://"
local Cooldown = 10 -- المدة المطلوبة لتشغيل الرسم المتحرك (بالثواني)

local lastDashTime = 0
local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

local function PlayAnimation()
    local currentTime = tick()
    if currentTime - lastDashTime >= Cooldown then
        lastDashTime = currentTime

        local animation = Instance.new("Animation")
        animation.AnimationId = AnimationId
        local track = humanoid:LoadAnimation(animation)
        track:Play()

        wait(Cooldown) -- انتظر لمدة الـ Cooldown
        track:Stop() -- إيقاف الرسم المتحرك بعد انتهاء المدة المحددة
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.R then
        PlayAnimation()
    end
end)

------------------------------------------------------------------------------------

local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local Cooldown = 0
local lastDashTime = 0
local countdown = Cooldown

local function createCooldownUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "CooldownUI"
    screenGui.Parent = player.PlayerGui

    local cooldownLabel = Instance.new("TextLabel")
    cooldownLabel.BackgroundTransparency = 1
    cooldownLabel.Name = "CooldownLabel"
    cooldownLabel.Text = ""
    cooldownLabel.Size = UDim2.new(0, 200, 0, 50)
    cooldownLabel.Position = UDim2.new(0.9, -543, 0.9, 0)
    cooldownLabel.AnchorPoint = Vector2.new(0.5, 0)
    cooldownLabel.Parent = screenGui
    cooldownLabel.TextColor3 = Color3.new(1.000000, 1.000000, 1.000000)

    return cooldownLabel
end

local cooldownLabel = createCooldownUI()

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.E then
        local currentTime = tick()
        if currentTime - lastDashTime >= Cooldown then
            lastDashTime = currentTime

            local character = player.Character
            if character then
                local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -15)

                countdown = Cooldown
                while countdown > 0 do
                    cooldownLabel.Text = string.format("%.2f", countdown) .. ""
                    wait(0.111111111)
                    countdown = countdown - 0.111111111
                end
                cooldownLabel.Text = ""
            end
        end
    end
end)

--------------------------

local UserInputService = game:GetService("UserInputService")
local AnimationId = "rbxassetid://11832849194"
local Cooldown = 0 -- cd

local lastDashTime = 0

local function PlayAnimation()
    local currentTime = tick()
    if currentTime - lastDashTime >= Cooldown then
        lastDashTime = currentTime

        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                local animation = Instance.new("Animation")
                animation.AnimationId = AnimationId
                local track = humanoid:LoadAnimation(animation)
                track:Play()
            end
        end
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.E then
        PlayAnimation()
    end
end)

-------------------------------------------

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

-----------------------------------------------------------------------------------------------------------------

local UserInputService = game:GetService("UserInputService")
local AnimationId = "rbxassetid://14972011456"
local Cooldown = 0 -- cd

local lastDashTime = 0

local function PlayAnimation()
    local currentTime = tick()
    if currentTime - lastDashTime >= Cooldown then
        lastDashTime = currentTime

        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                local animation = Instance.new("Animation")
                animation.AnimationId = AnimationId
                local track = humanoid:LoadAnimation(animation)
                track:Play()
            end
        end
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.One then
        PlayAnimation()
    end
end)

-----------------------

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://17397193556"
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

----------------------------------------------------------------

local UserInputService = game:GetService("UserInputService")
local moving = false
local canActivate = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://14657259011"
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
local animationTrack
local movementSpeed = 160

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
                    ParticleEmitter.Texture = "http://www.roblox.com/asset/?"
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

----------------------------------
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local mouse = player:GetMouse()

local function getClosestPlayerToMouse()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPos = targetPlayer.Character.HumanoidRootPart.Position
            local mousePos = mouse.Hit.p
            local distance = (targetPos - mousePos).magnitude
            if distance < shortestDistance then
                closestPlayer = targetPlayer
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.N then
        local closestPlayer = getClosestPlayerToMouse()
        if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPos = closestPlayer.Character.HumanoidRootPart.Position
            humanoidRootPart.CFrame = CFrame.new(targetPos - humanoidRootPart.CFrame.LookVector * 3, targetPos) -- ينقل اللاعب خلف أقرب شخص للماوس
        end
    end
end)

