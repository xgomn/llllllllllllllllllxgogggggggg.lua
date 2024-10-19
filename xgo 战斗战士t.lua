


local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/neilonmacedo153/refs/heads/main/xgoui.txt"))();    
local win = ui:new("goto战斗战士")

local UITab1 = win:Tab("『信息』",'6035145364')

local about = UITab1:section("『信息』",true)


about:Label("作者：goto_O")
about:Label("goto战斗战士")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)

local UITab2 = win:Tab("『主要』",'16060333448')

local about = UITab2:section("『xxxxxxxgo』",true)   
 about:Toggle("自动寻找玩家","Toggle",false,function()
        _G.followclosest = true
	follow_unchecked.Visible = false
	follow_checked.Visible = true
    end
    _G.followclosest = false
	follow_unchecked.Visible = true
	follow_checked.Visible = false
    end
)
about:Toggle("自动跳","Toggle",false,function()
        _G.autojump = true
	jump_unchecked.Visible = false
	jump_checked.Visible = true
    end
    _G.autojump = false
	jump_unchecked.Visible = true
	jump_checked.Visible = false
    end
)
about:Toggle("自动复活","Toggle",false,function()
        _G.autospawn = false
	spawn_unchecked.Visible = true
	spawn_checked.Visible = false
    end
    _G.autospawn = true
	spawn_unchecked.Visible = false
	spawn_checked.Visible = true
    end
)

about:Toggle("杀死光环","Toggle",false,function()
        _G.killsay = false
	killsay_unchecked.Visible = true
	killsay_checked.Visible = false
end
     _G.killsay = true
	killsay_unchecked.Visible = false
	killsay_checked.Visible = true
end)
about:Toggle("自动击中","Toggle",false,function()
        _G.autohit = true
	autohit_unchecked.Visible = false
	autohit_checked.Visible = true
    end
    _G.autohit = false
	autohit_unchecked.Visible = true
	autohit_checked.Visible = false
    end
)
about:Toggle("无限招架","Toggle",false,function(val)
        for i,v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "PARRY_COOLDOWN_IN_SECONDS") and rawget(v, "PARRY_COOLDOWN_IN_SECONDS_AFTER_SUCCESSFUL_PARRY") then
                if val then
                    v.PARRY_COOLDOWN_IN_SECONDS = 0
                    v.PARRY_COOLDOWN_IN_SECONDS_AFTER_SUCCESSFUL_PARRY = 0
                else
                    v.PARRY_COOLDOWN_IN_SECONDS = 3
                    v.PARRY_COOLDOWN_IN_SECONDS_AFTER_SUCCESSFUL_PARRY = 0.33
                end
            end
        end
    end
)

about:Toggle("无限耐力","Toggle",false,function(val)
        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "_setStamina") then
                local old = v._setStamina
                v._setStamina = function(among, us)
                    if val then
                        among._stamina = math.huge
                        among._staminaChangedSignal:Fire(150)
                    else
                        return old(among, us)
                    end
                end
            end
         end
    end
)

about:Toggle("启用","Toggle",false,function()
        _G.enabled = false
	killaura_unchecked.Visible = true
	killaura_checked.Visible = false
    end
    _G.enabled = true
	killaura_unchecked.Visible = false
	killaura_checked.Visible = true
end)

about:Toggle("反招架","Toggle",false,function()
        _G.antiparry = true
	antiparry_unchecked.Visible = false
	antiparry_checked.Visible = true
    end
    _G.antiparry = false
	antiparry_unchecked.Visible = true
	antiparry_checked.Visible = false
    end)
about:Toggle("没有破折号冷却","Toggle",false,function(val)
        for i,v2 in pairs(getgc(true)) do
            if typeof(v2) == "table" and rawget(v2, "DASH_COOLDOWN") then
                if val then
                    v2.DASH_COOLDOWN = 0
                else
                    v2.DASH_COOLDOWN = 3

                end
            end
        end
    end
)
about:Toggle("斯托拉光环","Toggle",false,function()
        _G.stompaura = true
	stompaura_unchecked.Visible = false
	stompaura_checked.Visible = true
    end
    _G.stompaura = false
	stompaura_unchecked.Visible = true
	stompaura_checked.Visible = false
    end
)
about:Toggle("嘘它","Toggle",false,function()
        _G.boostws = false
	velocity_unchecked.Visible = true
	velocity_checked.Visible = false
    end
    _G.boostws = true
	velocity_unchecked.Visible = false
	velocity_checked.Visible = true
    end
)
about:Toggle("没有布娃娃","Toggle",false,function(val)
        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "toggleRagdoll") then
                local old = v.toggleRagdoll
                v.toggleRagdoll = function(among, us, irl)
                    if val then
                        return
                    else
                        return old(among, us, irl)
                    end
                end
            end
        end
    end
)
local UITab2 = win:Tab("『玩家』",'16060333448')

local about = UITab2:section("『xxxxxxxgo』",true)
about:Button( "表情",function(v)
        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "gamepassIdRequired") then
                if v.gamepassIdRequired ==  "danceEmotes" then
                    v.gamepassIdRequired = nil
                elseif v.gamepassIdRequired == "toxicEmotes" then
                    v.gamepassIdRequired = nil
                elseif v.gamepassIdRequired == "respectEmotes" then
                    v.gamepassIdRequired = nil
                end
            end
        end
    end
)
about:Button( "自动园林",function(v)

	local lp = game.Players.LocalPlayer

local animationInfo = {}

function getInfo(id)
  local success, info = pcall(function()
      return game:GetService("MarketplaceService"):GetProductInfo(id)
  end)
  if success then
      return info
  end
  return {Name=''}
end
function block(player)
  keypress(0x46)
  wait()
  keyrelease(0x46)
end

local AnimNames = {
  'Slash',
  'Swing',
  'Sword'
}

function playerAdded(v)
    local function charadded(char)
      local humanoid = char:WaitForChild("Humanoid", 5)
      if humanoid then
          humanoid.AnimationPlayed:Connect(function(track)
              local info = animationInfo[track.Animation.AnimationId]
              if not info then
                  info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))
                  animationInfo[track.Animation.AnimationId] = info
              end
             
              if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) then
                  local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                  if mag < 15  then
                     
                      for _, animName in pairs(AnimNames) do
                          if info.Name:match(animName) then
                              pcall(block, v)
                          end
                      end
                     
                  end
              end
          end)
      end
  end
 
  if v.Character then
      charadded(v.Character)
  end
  v.CharacterAdded:Connect(charadded)
end

for i,v in pairs(game.Players:GetPlayers()) do
   if v ~= lp then
       playerAdded(v)
   end
end

game.Players.PlayerAdded:Connect(playerAdded)
end)
about:Slider("步行速度", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Toggle("飞行? 飞你大爷","Toggle",false,function(val)
        flying = not flying
        if val then
            sFLY(true)
        else
            NOFLY()
        end
    end
)

about:Button( "飞钥匙",function(val)
        flying = not flying

        if flying then
            sFLY(true)
        else
            NOFLY()
        end
    end
)
about:Toggle("耶稣","Toggle",false,function(val)
        for i,v2 in pairs(game.Workspace.Map:GetDescendants()) do
            if v2.Name == "WaterArea" then
                if val then
                    v2.CanCollide = true
                else
                    v2.CanCollide = false
                end
            end
        end
    end
)
local UITab2 = win:Tab("『战斗』",'16060333448')

local about = UITab2:section("『xxxxxxxgo』",true)
about:Toggle("自动装备","Toggle",false,function()
        _G.autoequip = true
	equip_unchecked.Visible = false
	equip_checked.Visible = true
end
    _G.autoequip = false
	equip_unchecked.Visible = true
	equip_checked.Visible = false
)

-- reach here
about:Toggle("到达（破碎）不知道哪一个可能会导致卡屏","Toggle",false,function(val)
        Reaching = val
        if val == false then return end
        local character = game.Players.LocalPlayer.Character
        local torso = character.Torso
        local rightarm = character["Right Arm"]
        local rightshoulder = torso["Right Shoulder"]
        if rightshoulder and rightshoulder.Enabled == true then
            local rightshoulderclone = rightshoulder:Clone()
            rightshoulderclone.Enabled = false
            rightshoulder:Destroy()
            rightshoulderclone.Parent = torso
        end
    
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Massless = true
            end
        end
        if rightarm:FindFirstChild("RagdollBallSocket") then
            rightarm.RagdollBallSocket.Enabled = false
        end
        while Reaching do
            sethiddenproperty(rightarm,"AssemblyLinearVelocity",Vector3.new(100,100,100))
            rightarm.Velocity = Vector3.new(100,100,100)
            if torso:FindFirstChild("Right Shoulder") then
                local rightarm = character["Right Arm"]
                local rightshoulder = torso["Right Shoulder"]
    
                local rightshoulderclone = rightshoulder:Clone()
                rightshoulderclone.Enabled = false
                rightshoulder:Destroy()
                rightshoulderclone.Parent = torso
            end
    
            local target = getClosest()

            -- if reachchoice == "closest to player" then
            --     target = getClosest()
            -- elseif reachchoice == "closest to mouse" then
            --     target = getClosestToMouse()
            --     bruh.Adornee = target.Character
            -- else
            --     target = getClosest()
            -- end
            if target.Character:FindFirstChild("Head") and (character.Head.Position - target.Character.Head.Position).magnitude < 100 then
                rightarm.CFrame = target.Character.Head.CFrame * CFrame.new(math.random(-0,0),0,0)
            elseif character:FindFirstChild("Head") then
                rightarm.CFrame = character.Head.CFrame * CFrame.new(math.random(-0,0),0,0)
            end
            game:GetService("RunService").Heartbeat:wait()
        end
    end
)

about:Toggle("墙爆","Toggle",false,function(val)
        if val then
            game.CollectionService:AddTag(game:GetService("Workspace").Map,'RANGED_CASTER_IGNORE_LIST')
        else
            game.CollectionService:RemoveTag(game:GetService("Workspace").Map,'RANGED_CASTER_IGNORE_LIST')
        end
    end
)

about:Toggle("没有反冲","Toggle",false,function(val)
        for i,v2 in pairs(getgc(true)) do
            if typeof(v2) == "table" and rawget(v2, "recoilAmount") then
                if val then
                    v2.recoilAmount = 0
                    v2.recoilXMin = 0
                    v2.recoilXMax = 0
                    v2.recoilYMin = 0
                    v2.recoilYMax = 0
                    v2.recoilZMin = 0
                    v2.recoilZMax = 0
                else
                    v2.recoilAmount = 35
                    v2.recoilXMin = 1.25
                    v2.recoilXMax = 1.75
                    v2.recoilYMin = -1.5
                    v2.recoilYMax = 1.5
                    v2.recoilZMin = -1.5
                    v2.recoilZMax = 1.5
                end
            end
        end
    end
)
about:Toggle("垃圾跳跃","Toggle",false,function(val)
        for i,v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "getCanJump") then
                local old = v.getCanJump
                if val then
                    v.getCanJump = function()
                        return true
                    end
                else
                    return old()
                end
            end
        end
    end
)
about:Toggle("没有重力","Toggle",false,function(val)
        for i,v2 in pairs(getgc(true)) do
            if typeof(v2) == "table" and rawget(v2, "recoilAmount") then
                if val then
                    v2.gravity = Vector3.new(0,0,0)
                else
                    v2.gravity = Vector3.new(0, -10, 0)
                end
            end
        end
    end
)
about:Toggle("自动拍摄（破碎）","Toggle",false,function(val)
        for i,v in pairs(getgc(true)) do
            if typeof(v) == 'table' and rawget(v,'startShootingAfterCharge') then
                if val then
                    v.startShootingAfterCharge = true
                else
                    v.startShootingAfterCharge = false
                end
            end
        end
    end
)
local UITab2 = win:Tab("『其他』",'16060333448')

local about = UITab2:section("『xxxxxxxgo』",true)
about:Toggle("Fling","Toggle",false,function()
        local plr = game.Players.LocalPlayer
        local oldHumanoid = plr.Character.Humanoid
        local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
        local flying = true
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 50
        local speed = 50
        
        workspace.CurrentCamera.CameraSubject = torso
         
        local function Fly()
             local bambam = Instance.new("BodyThrust")
             bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
             bambam.Force = Vector3.new(99999,0,99999)
             bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
             Instance.new("SelectionBox",game.Players.LocalPlayer.Character.HumanoidRootPart).Adornee = game.Players.LocalPlayer.Character.HumanoidRootPart
             local bg = Instance.new("BodyGyro", torso)
             bg.P = 9e4
             bg.maxTorque = Vector3.new(0, 0, 0)
             bg.cframe = torso.CFrame
             local bv = Instance.new("BodyVelocity", torso)
             bv.velocity = Vector3.new(0,0,0)
             bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
             repeat wait()
                 if oldHumanoid:FindFirstChildOfClass'RemoteEvent' ~= nil then
                     oldHumanoid.RagdollRemoteEvent:FireServer(true)
                 end
                 getRemote("UpdateIsCrouching"):FireServer(true)
         
                 if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                     speed = speed+.2
                     if speed > maxspeed then
                         speed = maxspeed
                     end
                 elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                     speed = speed-1
                     if speed < 0 then
                         speed = 0
                     end
                 end
                 if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                 elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                     bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                 else
                     bv.velocity = Vector3.new(0,0.1,0)
                 end
         
             until not flying
             ctrl = {f = 0, b = 0, l = 0, r = 0}
             lastctrl = {f = 0, b = 0, l = 0, r = 0}
             speed = 0
             bg:Destroy()
             bv:Destroy()
         
         end
         mouse.KeyDown:connect(function(key)
             if key:lower() == "w" then
                 ctrl.f = 1
             elseif key:lower() == "s" then
                 ctrl.b = -1
             elseif key:lower() == "a" then
                 ctrl.l = -1
             elseif key:lower() == "d" then
                 ctrl.r = 1
             end
         end)
         mouse.KeyUp:connect(function(key)
             if key:lower() == "w" then
                 ctrl.f = 0
             elseif key:lower() == "s" then
                 ctrl.b = 0
             elseif key:lower() == "a" then
                 ctrl.l = 0
             elseif key:lower() == "d" then
                 ctrl.r = 0
             elseif key:lower() == "r" then
         
             end
         end)
         for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
             v:Destroy()
         end -- doesnt need tools anyways
         -- hides all of ur body parts expect torso (there is a chance it doesnt work)
         wait(.1)
         oldHumanoid.RagdollRemoteEvent:FireServer(true)
         wait(.5)
         coroutine.wrap(Fly)()
         wait(.5)
         game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.Part0 = nil
    end
)
about:Toggle("启用","Toggle",false,function(val)
        game:GetService("ReplicatedStorage").Shared.Assets.Sounds.KillSound.SoundId = "rbxassetid://"..val
    end

)
about:Toggle("击中声音","Toggle",false,function(val)
        game:GetService("ReplicatedStorage").Shared.Assets.Sounds.HitmarkerSound.SoundId = "rbxassetid://"..val
     end

)

local UITab2 = win:Tab("『ESP』",'16060333448')

local about = UITab2:section("『xxxxxxxgo』",true)
about:Toggle("画线","Toggle",false,function()
        _G.drawlines = true
	drawline_unchecked.Visible = false
	drawline_checked.Visible = true
  end
     _G.drawlines = false
	drawline_unchecked.Visible = true
	drawline_checked.Visible = false
  )
about:Button("人物射线",function()   
loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/eeeeeeeeeeeppppppppppppssassssssssss/refs/heads/main/%E9%80%8F%E8%A7%86%E3%80%82%E6%A1%86%E6%9E%B6"))()ExunysDeveloperESP()     end)

about:Toggle("透视玩家",function()    local Outlines = true         local OutlineColoring = Color3.fromRGB(255, 255, 255)         local OutlineFill = false         local FillOpacity = 1         local FillColoring = Color3.fromRGB(255, 255, 255)        local NameTags = true       local TextFont = Enum.Font.RobotoMono       local NameColor = Color3.fromRGB(255, 255, 255)       local NamePositioning = false              local Folder = Instance.new("Folder", game:GetService("CoreGui"))      Folder.Name = ""            AddOutline = function(Character)   local Highlight = Instance.new("Highlight", Folder)      Highlight.OutlineColor = OutlineColoring   Highlight.Adornee = Character   if OutlineFill == true then       Highlight.FillColor = FillColoring      Highlight.FillTransparency = FillOpacity   else       Highlight.FillTransparency = 1   end         end           AddNameTag = function(Character)   local BGui = Instance.new("BillboardGui", Folder)   local Frame = Instance.new("Frame", BGui)   local TextLabel = Instance.new("TextLabel", Frame)      BGui.Adornee = Character:WaitForChild("Head")   BGui.StudsOffset = Vector3.new(0, 3, 0)   BGui.AlwaysOnTop = true      BGui.Size = UDim2.new(4, 0, 0.5, 0)   Frame.Size = UDim2.new(1, 0, 1, 0)   TextLabel.Size = UDim2.new(1, 0, 1, 0)      Frame.BackgroundTransparency = 1   TextLabel.BackgroundTransparency = 1      TextLabel.Text = Character.Name   TextLabel.Font = TextFont   TextLabel.TextColor3 = NameColor   TextLabel.TextScaled = NamePositioning     end             for i, v in ipairs(game:GetService("Players"):GetPlayers()) do   if v ~= game:GetService("Players").LocalPlayer then       v.CharacterAdded:Connect(function(Character)           if Outlines == true then               AddOutline(Character)           end          if NameTags == true then              AddNameTag(Character)          end       end)              if v.Character then           if Outlines == true then               AddOutline(v.Character)           end           if NameTags == true then               AddNameTag(v.Character)           end       end   end     end          game:GetService("Players").PlayerAdded:Connect(function(Player)   Player.CharacterAdded:Connect(function(Character)       if Outlines == true then           AddOutline(Character)       end       if NameTags == true then           AddNameTag(Character)      end   end) end)	end    )
about:Toggle("透视玩家名字","Toggle",false,function()
        _G.esp = true
	esp_unchecked.Visible = false
	esp_checked.Visible = true
end
   _G.esp = false
	esp_unchecked.Visible = true
	esp_checked.Visible = false
)
