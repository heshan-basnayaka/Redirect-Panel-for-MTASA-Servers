
function greetPlayer ( )
	
	local gpn = getPlayerName ( source )
	
	
	outputChatBox("#0000FF" .. gpn .. " #0000FFPress f10 to close redirect panel" , source,255,255,0,true)
end

addEventHandler ( "onPlayerJoin", getRootElement(), greetPlayer )
addEvent ( "Freeroam", true )
addEventHandler ( "Freeroam", getRootElement(), 
	function()
		redirectPlayer ( source, "139.99.101.38", "22003" )
	end
)

addEvent ( "Stealth", true )
addEventHandler ( "Stealth", getRootElement(), 
	function()
		redirectPlayer ( source, "139.99.101.38", "22008" )
	end
	)

addEvent ( "Protect The Presidant", true )
addEventHandler ( "Protect The Presidant", getRootElement(), 
	function()
		redirectPlayer ( source, "139.99.101.38", "22004" )
	end
)

addEvent ( "Race", true )
addEventHandler ( "Race", getRootElement(), 
	function()
		redirectPlayer ( source, "139.99.101.38", "27010" )
	end
)