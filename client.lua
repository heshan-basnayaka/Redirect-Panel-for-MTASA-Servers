
GUIEditor = {
    button = {},
    window = {},
    label = {}
}
addEventHandler("onClientResourceStart", resourceRoot,
    function()
		 showCursor(true)
        GUIEditor.window[1] = guiCreateWindow(442, 242, 551, 423, "eUNLOCK Server Redirect Panel", false)
        guiWindowSetSizable(GUIEditor.window[1], false)
        guiSetProperty(GUIEditor.window[1], "CaptionColour", "FF89F509")

        GUIEditor.label[1] = guiCreateLabel(209, 3, 145, 15, "", false, GUIEditor.window[1])
        GUIEditor.button[1] = guiCreateButton(124, 68, 300, 45, "Freeroam", false, GUIEditor.window[1])
        guiSetFont(GUIEditor.button[1], "default-bold-small")
        guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FFFA0903")
        GUIEditor.button[2] = guiCreateButton(125, 139, 300, 50, "Stealth", false, GUIEditor.window[1])
        guiSetFont(GUIEditor.button[2], "default-bold-small")
        guiSetProperty(GUIEditor.button[2], "NormalTextColour", "FFDF19CA")
        GUIEditor.button[3] = guiCreateButton(126, 219, 299, 50, "Protect The Presidant", false, GUIEditor.window[1])
        guiSetFont(GUIEditor.button[3], "default-bold-small")
        guiSetProperty(GUIEditor.button[3], "NormalTextColour", "FFDDE911")
        GUIEditor.button[4] = guiCreateButton(126, 298, 299, 50, "Race", false, GUIEditor.window[1])
        guiSetFont(GUIEditor.button[4], "default-bold-small")
        guiSetProperty(GUIEditor.button[4], "NormalTextColour", "FF21D8D1")
        GUIEditor.label[2] = guiCreateLabel(187, 44, 237, 14, "Click To Connect The Server", false, GUIEditor.window[1])
        GUIEditor.label[3] = guiCreateLabel(419, 416, 59, 15, "", false, GUIEditor.window[1])
        GUIEditor.label[4] = guiCreateLabel(459, 401, 113, 15, "GUI BY Hesk_", false, GUIEditor.window[1])
        guiSetFont(GUIEditor.label[4], "default-bold-small")
        guiLabelSetColor(GUIEditor.label[4], 239, 226, 7)
        GUIEditor.label[5] = guiCreateLabel(10, 393, 218, 13, "Script By eUNLOCK", false, GUIEditor.window[1])
        guiLabelSetColor(GUIEditor.label[5], 11, 74, 236)
         guiSetFont(GUIEditor.label[5], "default-bold-small")
       
         addEventHandler("onClientGUIClick", GUIEditor.button[1], 
    function()
    triggerServerEvent("Freeroam", localPlayer)
    end
)
    addEventHandler("onClientGUIClick",  GUIEditor.button[2], 
    function()
    triggerServerEvent("Stealth", localPlayer)
    end
)
    addEventHandler("onClientGUIClick",  GUIEditor.button[3], 
    function()
    triggerServerEvent("Protect The Presidant", localPlayer)
    end
)
    addEventHandler("onClientGUIClick",  GUIEditor.button[4], 
    function()
    triggerServerEvent("Race", localPlayer)
    end
)

function guiackapa ()
    if guiGetVisible ( GUIEditor.window[1] ) then
        guiSetVisible ( GUIEditor.window[1], false )
        showCursor(false)
    else
        guiSetVisible ( GUIEditor.window[1], true)
        showCursor(true)
    end
end
addEvent( "ShowGUI", false )
addEventHandler ( "ShowGUI", getRootElement(), guiackapa )
    bindKey("F10","down",guiackapa)
  
    end
)
