-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://9104077520" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

-- استدعاء الوظيفة لمنع الأنيميشن
blockAnimation()

-----------------------------------------------------
-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://9104086326" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

-- استدعاء الوظيفة لمنع الأنيميشن
blockAnimation()

-------------------------------------------------------------
-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://9104093929" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

---------------------
-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://180435792" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

-------------
-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://180435792" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

-----------------------------------
-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://9104093929" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

-- استدعاء الوظيفة لمنع الأنيميشن
blockAnimation()

-----------------------------------
-- معرف الأنيميشن الذي تريد منعه
local blockedAnimationId = "rbxassetid://9104096851" -- ضع هنا معرف الأنيميشن الذي تريد منعه

-- وظيفة لمنع الأنيميشن
local function blockAnimation()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- منع الأنيميشن عند الضغط على الزر "M1"
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == blockedAnimationId then
            animationTrack:Stop()
        end
    end)
end

-- استدعاء الوظيفة لمنع الأنيميشن
blockAnimation()

---------------------------
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation1 = "rbxassetid://9104096851"
local animation2 = "rbxassetid://10952589332"

local function playAnimation2()
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        local anim = Instance.new("Animation")
        anim.AnimationId = animation2
        local animTrack = animator:LoadAnimation(anim)
        animTrack:Play()
    end
end

humanoid.AnimationPlayed:Connect(function(animationTrack)
    if animationTrack.Animation.AnimationId == animation1 then
        if currentBlackFlash then
            currentBlackFlash:Destroy()
        end
        currentBlackFlash = playAnimation2()
        animationTrack.Stopped:Connect(function()
            if currentBlackFlash then
                currentBlackFlash:Destroy()
                currentBlackFlash = nil
            end
        end)
    end
end)

---------------------------
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation1 = "rbxassetid://9104096851"
local animation2 = "rbxassetid://10952589332"

local function playAnimation2()
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        local anim = Instance.new("Animation")
        anim.AnimationId = animation2
        local animTrack = animator:LoadAnimation(anim)
        animTrack:Play()
    end
end

humanoid.AnimationPlayed:Connect(function(animationTrack)
    if animationTrack.Animation.AnimationId == animation1 then
        if currentBlackFlash then
            currentBlackFlash:Destroy()
        end
        currentBlackFlash = playAnimation2()
        animationTrack.Stopped:Connect(function()
            if currentBlackFlash then
                currentBlackFlash:Destroy()
                currentBlackFlash = nil
            end
        end)
    end
end)

---------------------

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation1 = "rbxassetid://9104077520"
local animation2 = "rbxassetid://10952600299"

local function playAnimation2()
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        local anim = Instance.new("Animation")
        anim.AnimationId = animation2
        local animTrack = animator:LoadAnimation(anim)
        animTrack:Play()
    end
end

humanoid.AnimationPlayed:Connect(function(animationTrack)
    if animationTrack.Animation.AnimationId == animation1 then
        if currentBlackFlash then
            currentBlackFlash:Destroy()
        end
        currentBlackFlash = playAnimation2()
        animationTrack.Stopped:Connect(function()
            if currentBlackFlash then
                currentBlackFlash:Destroy()
                currentBlackFlash = nil
            end
        end)
    end
end)

---------------------

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation1 = "rbxassetid://9104086326"
local animation2 = "rbxassetid://10952573899"

local function playAnimation2()
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        local anim = Instance.new("Animation")
        anim.AnimationId = animation2
        local animTrack = animator:LoadAnimation(anim)
        animTrack:Play()
    end
end

humanoid.AnimationPlayed:Connect(function(animationTrack)
    if animationTrack.Animation.AnimationId == animation1 then
        if currentBlackFlash then
            currentBlackFlash:Destroy()
        end
        currentBlackFlash = playAnimation2()
        animationTrack.Stopped:Connect(function()
            if currentBlackFlash then
                currentBlackFlash:Destroy()
                currentBlackFlash = nil
            end
        end)
    end
end)

---------------------

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation1 = "rbxassetid://9104093929"
local animation2 = "rbxassetid://10952600299"

local function playAnimation2()
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        local anim = Instance.new("Animation")
        anim.AnimationId = animation2
        local animTrack = animator:LoadAnimation(anim)
        animTrack:Play()
    end
end

humanoid.AnimationPlayed:Connect(function(animationTrack)
    if animationTrack.Animation.AnimationId == animation1 then
        if currentBlackFlash then
            currentBlackFlash:Destroy()
        end
        currentBlackFlash = playAnimation2()
        animationTrack.Stopped:Connect(function()
            if currentBlackFlash then
                currentBlackFlash:Destroy()
                currentBlackFlash = nil
            end
        end)
    end
end)

