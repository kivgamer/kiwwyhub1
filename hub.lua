repeat wait() until game:IsLoaded()

if not game:IsLoaded() then game.Loaded:Wait() end
    repeat wait() until game.Players
    repeat wait() until game.Players.LocalPlayer
    repeat wait() until game.ReplicatedStorage
    repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
    repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
    repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then

                
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end

            wait(.5)

        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 

ts = game:GetService("TeleportService")
local HWID = {
    "ABE22B3C-8DA6-4E43-856B-0E3564A47C2C",
    "A51C204F-17C9-465B-9A28-AA5028BE8A73",
}

if HWID[table.find(HWID,game:GetService("RbxAnalyticsService"):GetClientId())] == game:GetService("RbxAnalyticsService"):GetClientId() then
print("Success")
else
    setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
    game.Players.LocalPlayer:Kick("COPY HWID SUCCES")
    wait(2)
    ts:Teleport(game.PlaceId, p)
end



-- Weapon = { "Saber", "Bisento", "Kabucha", "Shisui", "Saddi", "Wando", "Buddy Sword", "Midnight Blade", "Rengoku", "Yama", "Hallow Scythe", "Spikey Trident", "Dark Dagger", "Dark Coat" , "Valkyrie Helm" , "Pale Scarf"}
-- _G.AutoScreenShot = false
-- _G.AwakeUi = true
-- _G.CloseUi = true





_G.Padding = 1050
_G.WeaponPaddinginif = 1050
_G.Plus = 165
_G.Down = 0
_G.Downplus = 170
_G.SizeWeaponAll = 160
_G.SizeMeleeAll = 160
_G.DownMeleeAll = 200

if game.CoreGui:FindFirstChild("Melee") then 
game.CoreGui:FindFirstChild("Melee"):Destroy() 
end
a = game.CoreGui:FindFirstChild("Close")
if a then
a:Destroy()
end
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")


_G.lastpadding = nil

Superhuman = "4831781711"
Electric =  "6866994470"
Dratalon = "7831677967"
Sharkman = "6525157144"
DeathStep = "6085350468"

Fruit = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
print()
ValueFruit1 = game.Players.LocalPlayer.Backpack:FindFirstChild(Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Fruit)
ValueFruit = ValueFruit1
Mastery = ValueFruit1.Level.Value
print("Now Use Fruit -> " .. Fruit)

function reformatint(integer)
    for i = 1, math.floor((string.len(integer)-1) / 3) do
        integer = string.sub(integer, 1, -3*i-i) ..
                  ',' ..
                  string.sub(integer, -3*i-i+1)
    end
    return integer
end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Position = UDim2.new(0,300,0,740)
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Text = "ƒ"..tostring(reformatint(game.Players.LocalPlayer.Data.Fragments.Value))
function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait(.1)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end
ScreenGui.Name = "Melee"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game:GetService("Players")["LocalPlayer"].PlayerGui.Notifications.Enabled = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true)
CheckSup = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman")
if CheckSup then
    local SuperLabel = Instance.new("ImageLabel")
    SuperLabel.Parent = game.CoreGui.Melee
    SuperLabel.Name = "Superhuman"
    SuperLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SuperLabel.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
    SuperLabel.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
    SuperLabel.Image = "rbxassetid://"..Superhuman
    SuperLabel.BackgroundTransparency = 1
    local Button = Instance.new("TextButton")
    Button.Parent = game.CoreGui.Melee
    Button.Name = "Button Superhuman"
    Button.Text = ""
    Button.BackgroundTransparency = 1
    Button.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
    Button.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
    Button.MouseButton1Click:Connect(function()
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true)
    end)
    _G.Padding = _G.Padding + _G.Plus
end

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) 
CheckElec = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw")
if CheckElec then
local ElectricLabel = Instance.new("ImageLabel")
ElectricLabel.Parent = game.CoreGui.Melee
ElectricLabel.Name = "ElectricClaw"
ElectricLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElectricLabel.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
ElectricLabel.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
ElectricLabel.Image = "rbxassetid://"..Electric
ElectricLabel.BackgroundTransparency = 1
local Button = Instance.new("TextButton")
Button.Parent = game.CoreGui.Melee
Button.Name = "Button Electric"
Button.Text = ""
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
Button.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
Button.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) 
end)
_G.Padding = _G.Padding + _G.Plus
end
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) 
CheckDragon = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon")
if CheckDragon then
local DragonLabel = Instance.new("ImageLabel")
DragonLabel.Parent = game.CoreGui.Melee
DragonLabel.Name = "ElectricClaw"
DragonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DragonLabel.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
DragonLabel.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
DragonLabel.Image = "rbxassetid://"..Dratalon
DragonLabel.BackgroundTransparency = 1
local Button = Instance.new("TextButton")
Button.Parent = game.CoreGui.Melee
Button.Name = "Button DragonTalon"
Button.Text = ""
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
Button.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
Button.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) 
end)
_G.Padding = _G.Padding + _G.Plus
end
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
CheckSharkman = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate")
if CheckSharkman then
local SharkmanLabel = Instance.new("ImageLabel")
SharkmanLabel.Parent = game.CoreGui.Melee
SharkmanLabel.Name = "Sharkman Karate"
SharkmanLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SharkmanLabel.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
SharkmanLabel.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
SharkmanLabel.Image = "rbxassetid://"..Sharkman
SharkmanLabel.BackgroundTransparency = 1
local Button = Instance.new("TextButton")
Button.Parent = game.CoreGui.Melee
Button.Name = "Button SharkmanKarate"
Button.Text = ""
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
Button.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
Button.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
end)
_G.Padding = _G.Padding + _G.Plus
end

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
CheckDeathStep = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step")
if CheckDeathStep then
local DeathStepLabel = Instance.new("ImageLabel")
DeathStepLabel.Parent = game.CoreGui.Melee
DeathStepLabel.Name = "Sharkman Karate"
DeathStepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DeathStepLabel.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
DeathStepLabel.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
DeathStepLabel.Image = "rbxassetid://"..DeathStep
DeathStepLabel.BackgroundTransparency = 1
local Button = Instance.new("TextButton")
Button.Parent = game.CoreGui.Melee
Button.Name = "Button DeathStep"
Button.Text = ""
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, _G.Padding, 0, _G.DownMeleeAll)
Button.Size = UDim2.new(0, _G.SizeMeleeAll, 0, _G.SizeMeleeAll)
Button.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
end)
_G.Padding = _G.Padding + _G.Plus
end

-----------------------------------------------------------------
_G.lastpadding = _G.Padding
print("LAST MELEE -> " .. _G.lastpadding)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true)

-----------------------------------------------------------------
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = true
wait(1)
_G.Padding = _G.WeaponPaddinginif
_G.Down = 400


currentpath = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame
storedpath = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame
for i,v in pairs(currentpath:GetChildren()) do
-- print(v)
for _ , a in pairs (Weapon) do
--print("Weapon ->" .. a)
if v.Name == a then
if game.CoreGui.Melee:FindFirstChild(a) then
    game.CoreGui.Melee:FindFirstChild(a):Destroy()
end
print("CREATE -> " .. a)
local obj = Instance.new("ImageLabel") 
local clone = obj.Clone(currentpath[a])
clone.Parent = game.CoreGui.Melee
if _G.Padding > 1800 then 
_G.Padding = _G.WeaponPaddinginif
    _G.Down = _G.Down + _G.Downplus
    end

game.CoreGui.Melee[a].Position = UDim2.new(0, _G.Padding, 0, _G.Down)
game.CoreGui.Melee[a].Size = UDim2.new(0,  _G.SizeWeaponAll, 0,  _G.SizeWeaponAll)
wait(.1)
local Button = Instance.new("TextButton")
Button.Parent = game.CoreGui.Melee
Button.Name = a
Button.Text = ""
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, _G.Padding, 0, _G.Down)
Button.Size = UDim2.new(0, 160, 0, 160)
Button.MouseButton1Click:Connect(function()
if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible == true then
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = false
else 
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = true
    end
end)
_G.Padding = _G.Padding + _G.Plus
end
end
end
for i,v in pairs(storedpath:GetChildren()) do
-- print(v)
for _ , a in pairs (Weapon) do
--print("Weapon ->" .. a)
if v.Name == a then
    if game.CoreGui.Melee:FindFirstChild(a) then
        game.CoreGui.Melee:FindFirstChild(a):Destroy()
    end
print("CREATE -> " .. a)
local obj = Instance.new("ImageLabel") 
local clone = obj.Clone(storedpath[a])
clone.Parent = game.CoreGui.Melee
if _G.Padding > 1800 then 
    _G.Padding = _G.WeaponPaddinginif
    _G.Down = _G.Down + _G.Downplus
    end

game.CoreGui.Melee[a].Position = UDim2.new(0, _G.Padding, 0, _G.Down)
game.CoreGui.Melee[a].Size = UDim2.new(0, _G.SizeWeaponAll, 0,  _G.SizeWeaponAll)
wait(.1)
local Button = Instance.new("TextButton")
Button.Parent = game.CoreGui.Melee
Button.Name = a
Button.Text = ""
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, _G.Padding, 0, _G.Down)
Button.Size = UDim2.new(0, 160, 0, 160)
Button.MouseButton1Click:Connect(function()
if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible == true then
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = false
else 
    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = true
    end
end)
_G.Padding = _G.Padding + _G.Plus
end
end
end
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Inventory.Visible = false


  


---------------------------------
if _G.AwakeUi then
local FruitImage = Instance.new("ImageLabel")
FruitImage.Parent = game.CoreGui.Melee
FruitImage.Name = (Fruit)
FruitImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FruitImage.Position = UDim2.new(0, 20, 0, 180 + 50)
FruitImage.Size = UDim2.new(0, 120, 0, 120)
FruitImage.Image = ValueFruit.TextureId
FruitImage.BackgroundTransparency = 1

---------------------------------

local ScreenGui = Instance.new("ScreenGui")
local FruitName = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui.Melee
ScreenGui.Name = Fruit

FruitName.Parent = ScreenGui
FruitName.Name = Fruit
FruitName.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
FruitName.BorderColor3 = Color3.fromRGB(141, 0, 0)
FruitName.Position = UDim2.new(0, 20, 0, 315 + 50)
FruitName.Size = UDim2.new(0, 600, 0, 25)
FruitName.Font = Enum.Font.SourceSans
FruitName.Text = tostring(Fruit).." | MASTERY : "..tostring(Mastery)
FruitName.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitName.BackgroundTransparency = 0
FruitName.TextSize = 28.000
---------------------------------


game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AwakeningChanger","Check")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")

game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
wait(.1)
game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
local obj = Instance.new("Frame") 
local clone = obj.Clone(game:GetService("Players")["LocalPlayer"].PlayerGui.Main.AwakeningToggler)
clone.Parent = game.CoreGui.Melee
game.CoreGui.Melee.AwakeningToggler.Visible = false
game.CoreGui.Melee.AwakeningToggler.Size = UDim2.new(0, 200, 0, 200)
game.CoreGui.Melee.AwakeningToggler.Position = UDim2.new(0, 375, 0, 290 + 50)


Awake = game:GetService("CoreGui").Melee.AwakeningToggler.TopContainer.Frame
if Awake:FindFirstChild("X") then
game.CoreGui.Melee.AwakeningToggler.Visible = true

else
    print("Awake Ui -> Cant Find Ui")
    end
end
-----------------------------------------
if _G.AutoScreenShot then
local vim = game:GetService('VirtualInputManager')


local function pressKey(key)
    vim:SendKeyEvent(true, key, false, game)
end

print(_G.Padding)
local function releaseKey(key)
    vim:SendKeyEvent(false, key, false, game)
end
-- EquipWeapon("Superhuman")
pressKey(Enum.KeyCode.Left)
wait(1.5)
releaseKey(Enum.KeyCode.Left)
wait()
pressKey(Enum.KeyCode.Print)
wait(1)
end

---------------------------------
if _G.CloseUi then
a = game.CoreGui:FindFirstChild("Close")
  if a then
      a:Destroy()
      end
local ScreenGui = Instance.new("ScreenGui")
local CloseButton = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Close"
CloseButton.Parent = ScreenGui
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
CloseButton.BorderColor3 = Color3.fromRGB(141, 0, 0)
CloseButton.Position = UDim2.new(0.77, 0, 0.865, 0)
CloseButton.Size = UDim2.new(0, 24, 0, 20)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 28.000

CloseButton.MouseButton1Click:Connect(function()
    pcall(function()
  aa = game.CoreGui:FindFirstChild("Melee") 
  if aa then
      aa:Destroy()
      end
  a = game.CoreGui:FindFirstChild("Close")
  if a then
      a:Destroy()
      end
  end)
end)
end
game:GetService("Players")["LocalPlayer"].PlayerGui.Notifications.Enabled = true
