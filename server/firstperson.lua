-- Script to toggle between first person and third person camera
-- Original Author, Jonathan Price
-- Verison 0.1
class 'FirstPerson'

function FirstPerson:__init()
        -- Subscribe to Player Chat
        Events:Subscribe("PlayerChat", self, self.IngameToggle)

end

-- Run when user types "/fp"
function FirstPerson:IngameToggle(args)
        if args.text == "/fp" then
                -- Send the event "FirstPerson" to the client
                Network:Send(args.player, "FirstPerson")
        end
end

firstperson = FirstPerson()
