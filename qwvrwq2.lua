
game:GetService("Players").tablewwqtg01.PlayerGui.Main.Inventory.Visible = false
game:GetService("Players").tablewwqtg01.PlayerGui.Main.Inventory.Visible = true

wait(.1)
local Inventory = ""

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Current.ScrollingFrame.Frame:GetChildren()) do
    local ez = v.Name == "Yama" or v.Name == "Buddy Sword" or v.Name == "Shisui" or v.Name == "Wando" or v.Name == "Saddi" or v.Name == "Rengoku" or v.Name == "Kabucha" or v.Name == "Midnight Blade"
  
    if ez then
        Inventory = Inventory .. " " .. v.Name

    end

end

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Stored.ScrollingFrame.Frame:GetChildren()) do
local ez = v.Name == "Yama" or v.Name == "Buddy Sword" or v.Name == "Shisui" or v.Name == "Wando" or v.Name == "Saddi" or v.Name == "Rengoku" or v.Name == "Kabucha" or v.Name == "Midnight Blade"

if ez then
Inventory = Inventory .. " " .. v.Name




end
end

setclipboard(Inventory)
print(Inventory)




local data = {
   ["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
   ["embeds"] = {
       {
           ["title"] = "**Check Webhook!**",
           ["description"] = "**Username: **" .."||" .. game.Players.LocalPlayer.Name.."||".. "\n" .. "**Inventory :**".."\n" .."`".. Inventory .. "`" .."\n".. "**Fruit :**" .. "\n" .. "`"..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value .. "`",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
