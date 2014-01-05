-- Script to toggle between first person and third person camera
-- Original Author, Jonathan Price
-- Verison 0.1
class 'FirstPerson'

function FirstPerson:__init()
    isFirstPerson = false

    Network:Subscribe("FirstPerson", self.SwitchCamera)
    Events:Subscribe("CalcView", self.FirstPerson)
end

-- Run when the network receives the event "FirstPerson"
function FirstPerson:SwitchCamera()
    if(isFirstPerson == true) then
        isFirstPerson = false
    else
        isFirstPerson = true
    end
end

-- Run on ever player frame
function FirstPerson:FirstPerson()
    -- If the boolean isFirstPerson is true, then put the camera in your head
    if(isFirstPerson == true) then
        Camera:SetPosition(LocalPlayer:GetBonePosition("ragdoll_Head"))
    end
end

firstperson = FirstPerson()
