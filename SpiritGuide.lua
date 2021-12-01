local f = CreateFrame("Frame", "SpiritGuide", UIParent)

f:RegisterEvent("ADDON_LOADED");
f:RegisterEvent("PLAYER_LOGOUT");




function f:OnEvent(event, arg1)
    if event == "ADDON_LOADED" and arg1 == "SpiritGuide" then
        if SpiritGuide == nil then
            SpiritGuide = "";
        end
    elseif event == "PLAYER_LOGOUT" then
        SpiritGuide = "";
    end
end
f:SetScript("OnEvent", f.OnEvent);



SLASH_SPIRITGUIDE1 = "/bl"
SlashCmdList["SPIRITGUIDE"] = function(msg)
    local guide = SpiritGuideEdit;
    SpiritGuideEdit:Show();
end


