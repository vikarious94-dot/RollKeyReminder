local RollKeyReminder = _G.RollKeyReminder

local frame = CreateFrame("Frame")
local keyLevel = C_MythicPlus.GetOwnedKeystoneLevel()

print("Events.lua chargé")

frame:RegisterEvent("CHALLENGE_MODE_START")
frame:RegisterEvent("CHALLENGE_MODE_COMPLETED")
frame:RegisterEvent("CHALLENGE_MODE_COMPLETED_REWARDS")

frame:SetScript("OnEvent", function(event, ...)
    if event == "CHALLENGE_MODE_START" then
        RollKeyReminder.lastRunLevel = C_ChallengeMode.GetActiveKeystoneInfo()
        print("Event reçu :", event)

    elseif event == "CHALLENGE_MODE_COMPLETED" then
        local level, onTime = ...
        RollKeyReminder.lastRunLevel = level
        RollKeyReminder.lastRunTimed = onTime
        print("Event reçu :", event)

    elseif event == "CHALLENGE_MODE_COMPLETED_REWARDS" and RollKeyReminder.lastRunLevel >= keyLevel then
        RollKeyReminder:ShowReminder()
        print("Event reçu :", event)
    end

    print("Fin MM+ détectée")
    print("lastRunLevel =", RollKeyReminder.lastRunLevel)
    print("keyLevel =", C_MythicPlus.GetOwnedKeystoneLevel())

end)