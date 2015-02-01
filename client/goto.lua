function ModulesLoad()
    Events:Fire( "HelpAddItem",
        {
            name = "Goto",
            text = 
                "Use /goto [player] to teleport to people.\n\nYou don't need to type their whole name, just the first part."
        } )
end

function ModuleUnload()
    Events:Fire( "HelpRemoveItem",
        {
            name = "Goto"
        } )
end

Events:Subscribe( "ModulesLoad", ModulesLoad )
Events:Subscribe( "ModuleUnload", ModuleUnload )
