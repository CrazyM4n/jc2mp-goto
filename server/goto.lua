function Goto( args )
	chatCommand = args.text:split(" ")

	if #chatCommand == 2 and chatCommand[1] == "/goto" then
		if Player.Match(chatCommand[2])[1] ~= nil then
			local playerTo = Player.Match(chatCommand[2])[1]
			args.player:SetPosition(playerTo:GetPosition())
			args.player:SendChatMessage("Teleporting to "..playerTo:GetName(), Color(255, 120, 0))
		else
			args.player:SendChatMessage("Not a player!", Color(255, 120, 0))
		end
	end
end

Events:Subscribe( "PlayerChat", Goto )