Banned_Words = { "ban", "kick", "lag" }
PlayerList = {  }
Law_Breakers = {  }
 
function Banned( String )
    local Return_Value = false
    if type( String ) ~= "string" then return end
    for Word in String:gmatch( "%w+" ) do
        for _, Local_Word in pairs( Banned_Words ) do
            if ( Word:lower() == Local_Word ) then
                Return_Value = true
            end
        end
    end
    return Return_Value
end
 
function Player( String )
    local Return_Value = false
    if type( String ) ~= "string" then return end
    for Word in String:gmatch( "%w+" ) do
        for _, Local_Player in pairs( PlayerList ) do
            if ( Word:lower() == Local_Player ) then
                Return_Value = true
            end
        end
    end
end
 
function Update_PlayerList(  )
    PlayerList = {  }
    for _, Player in pairs( Game:GetService( "Players" ):GetChildren(  ) ) do
        Local_Name = Player["Name"]
        table.insert( PlayerList, Local_Name )
    end
end
 
function OnChatted( Message, Recipient, Speaker )
    Message = Message:lower(  )
    if Banned( Message ) and Player( Message ) then
        table.insert( Law_Breakers, Speaker["Name"] )
        local Count = 0
        for _, Name in pairs( Law_Breakers ) do
            if ( Name:lower(  ) == Speaker["Name"]:lower(  ) ) then
                Count = Count + 1
            end
        end
        local Message = Instance.new( "Hint", Game:GetService( "Workspace" ) )
        Message["Name"] = "Warning"
        Message["Text"] = ""..Speaker["Name"]..", you have broken a rule. Do not break rules. You have broken a total of: "..Count.." rules so far."
        Game:GetService( "Debris" ):AddItem( Message, 10 )
        Speaker:Destroy(  )
    end
end
 
function OnPlayerEntered( NewPlayer )
    local Count = 0
    for _, Name in pairs( Law_Breakers ) do
        if ( Name:lower(  ) == NewPlayer["Name"]:lower(  ) ) then
            Count = Count + 1
        end
    end
    if Count >= 1 then
        local Message = Instance.new( "Hint", Game:GetService( "Workspace" ) )
        Message["Name"] = "Warning"
        Message["Text"] = ""..NewPlayer["Name"]..", you have broken a rule (it is on your record). Do not break rules. You have broken a total of: "..Count.." rules so far."
        Game:GetService( "Debris" ):AddItem( Message, 10 )
    end
    NewPlayer["Chatted"]:connect( function ( Message, Recipient ) OnChatted( Message, Recipient, NewPlayer ) end )
end
 
Game:GetService( "Players" )["PlayerAdded"]:connect( OnPlayerEntered )
 
for _, Player in pairs( Game:GetService( "Players" ):GetChildren(  ) ) do
    Player["Chatted"]:connect( function ( Message, Recipient ) OnChatted( Message, Recipient, Player ) end )
end
 