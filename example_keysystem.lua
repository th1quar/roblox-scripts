local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "KEY SYSTEM | ROBLOX", HidePremium = false, SaveConfig = false})

getgenv().Key = "key" -- or httpget : game:HttpGet("pastebin or github url")
getgenv().KeyInput = "string"

function notif(title, message)
    OrionLib:MakeNotification({
        Name = title,
        Content = message,
        Image = "rbxassetid://4483345998",
        Time = 5
    }) 
end


function afterCorrectKey()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddTextbox({
	Name = "KeyInput",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyInput = Value
	end	  
})

MainTab:AddButton({
	Name = "Check Key!",
	Callback = function()
      	if getgenv().KeyInput == getgenv().Key then
            notif("System32", "correct key")
			wait(1)
            afterCorrectKey()
			OrionLib:Destroy()
		else
			notif("System32", "wrong key")
        end
  	end    
})
