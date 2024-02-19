-- Autojoin Server for Palworld v0.1 -- (by Hahabynow)

------------------------------------------------
--- SET YOUR SERVER IP ADDRESS AND PORT HERE ---
------------------------------------------------

-- Set to false to disable autojoin --
Enabled = true

-- Your servers port, IP, and password 
ServerPort = 44
ServerIP = "123g"
ServerPassword = "e5"

-----------------------------------------------
--------- Don't touch down here ---------------
-----------VVVVVVVVVVVVVVVVVV------------------
-----------------------------------------------

if Enabled then
    PUtility = StaticFindObject("/Script/Pal.Default__PalUtility")

    NotifyOnNewObject("/Script/Pal.PalUIJoinGameBase", function()
        JoinGame = FindFirstOf("PalUIJoinGameBase")
        
        if PUtility ~= nil then
            PUtility:SetPassword(JoinGame, ServerPassword)
        end
        
        if JoinGame ~= nil then
            JoinGame:ConnectServerByAddress(ServerIP, ServerPort)
        end
    end)
end
