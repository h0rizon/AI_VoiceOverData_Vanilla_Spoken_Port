if not VoiceOver or not VoiceOver.DataModules then return end

AI_VoiceOverData_Vanilla_Spoken_Port = {}

function AI_VoiceOverData_Vanilla_Spoken_Port:GetSoundPath(fileName, event)
    setfenv(1, VoiceOver)
    if Enums.SoundEvent:IsQuestEvent(event) then
        return format([[generated\sounds\quests\%s.ogg]], fileName)
    elseif Enums.SoundEvent:IsGossipEvent(event) then
        return format([[generated\sounds\gossip\%s.ogg]], fileName)
    end
end

VoiceOver.DataModules:Register("AI_VoiceOverData_Vanilla_Spoken_Port", AI_VoiceOverData_Vanilla_Spoken_Port)
