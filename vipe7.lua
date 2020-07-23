function Initialize()
	RecycleBin = SKIN:GetMeasure('mCount')
	GamingMode3 = SKIN:GetMeasure('HWiNFOFPS')
	GetBattery = SKIN:GetMeasure('BatteryChecker')
	GetVer1 = SKIN:GetVariable('CurrentVersion')
	GetVer2 = SKIN:GetVariable('CurrentInstalledVersionNEW')
	FreePremium = SKIN:GetMeasure('FreePremium')
	MenuTransparency = SKIN:GetMeasure('TransparencyCalc')
end -- fun

-- Auto Update START
function Update()
	GetRecycleBin = RecycleBin:GetStringValue()
	GetAutoRecycle = SKIN:GetVariable('AutoRecycle')
	GetGamingMode3 = GamingMode3:GetStringValue()
	GetPremiumStatus = SKIN:GetVariable('PremiumStatus')
	GetAutoGamingModeValue = SKIN:GetVariable('AutoGamingMode')
	GetQBT = SKIN:GetVariable('QBTstats')
	GetAPSVar = SKIN:GetVariable('AutoPowerSavingMode')
	GetAutoColor = SKIN:GetVariable('MenuColor')
	GetAutoBatteryValue = SKIN:GetVariable('AutoBattery')
	GetBattery2 = GetBattery:GetStringValue()
	GetFreePremium = FreePremium:GetStringValue()
	GetPremiumStatus2 = SKIN:GetVariable('PremiumStatus2')
	GetSpaceColorMode = SKIN:GetVariable('SpaceColorMode')
	GetMenuTransparency = MenuTransparency:GetStringValue()
	GetPremiumCheck = SKIN:GetVariable('zMACAddressTEST')

--Premium Check
	if GetPremiumCheck == '1005014B4761' then--GetFreePremium == '04'
		SKIN:Bang('!SetVariable PremiumStatus "Active"')
		SKIN:Bang('!SetVariable PremiumStatus2 "Active"')
		SKIN:Bang('!SetOption PremiumText01 FontColor 00FF00FF')
		SKIN:Bang('!SetOption ExtensionsText2 FontColor 00FF00FF')
		SKIN:Bang('!SetVariable AdminActionVipers "#ROOTCONFIGPATH#"')--RightClick
		SKIN:Bang('!SetVariable AdminActionMore "!SkinMenu"')--RightClick
		SKIN:Bang('!SetOption SystemLINE SolidColor #SpaceColor#')--Space Color
	elseif GetPremiumCheck == '94E979744B09' then--Sasho
		SKIN:Bang('!SetVariable PremiumStatus "Active"')
		SKIN:Bang('!SetVariable PremiumStatus2 "Active"')
		SKIN:Bang('!SetOption PremiumText01 FontColor 00FF00FF')
		SKIN:Bang('!SetOption ExtensionsText2 FontColor 00FF00FF')
		SKIN:Bang('!SetVariable AdminActionVipers "#ROOTCONFIGPATH#"')--RightClick
		SKIN:Bang('!SetOption SystemLINE SolidColor #SpaceColor#')--Space Color
	elseif  GetFreePremium == '07' or GetFreePremium == '08' then
		SKIN:Bang('!SetVariable PremiumStatus "Active"')
		SKIN:Bang('!SetVariable PremiumStatus2 "Active"')
		SKIN:Bang('!SetOption PremiumText01 FontColor 00FF00FF')
		SKIN:Bang('!SetOption ExtensionsText2 FontColor 00FF00FF')
		SKIN:Bang('!SetVariable AdminActionVipers "#ROOTCONFIGPATH#"')--RightClick
		SKIN:Bang('!SetOption SystemLINE SolidColor #SpaceColor#')--Space Color
	else
		SKIN:Bang('!SetVariable PremiumStatus "Not Active"')
		SKIN:Bang('!SetVariable PremiumStatus2 "Become a Premium"')
		SKIN:Bang('!SetOption PremiumText01 FontColor FF0000FF')
		SKIN:Bang('!SetOption ExtensionsText2 FontColor FF0000FF')
		SKIN:Bang('!SetOption SystemLINE SolidColor FF0000')--Space Color
	end
-- end Premium Check

-- Transparency 
	if GetPremiumStatus == 'Active' and GetMenuTransparency > '155' then
		SKIN:Bang('!SetTransparency [TransparencyCalc]')
	elseif GetPremiumStatus == 'Active' and GetMenuTransparency <= '155' then
		SKIN:Bang('!SetTransparency 155')
	else
		SKIN:Bang('!SetTransparency 255')
	end
-- end Transparency
	
-- Color Changer
	if GetPremiumStatus == 'Active' and GetAutoColor == 'Default' then
		SKIN:Bang('!SetVariable BarColor 2E2E2E')
		SKIN:Bang('!SetVariable SolidColor 1C1C1C')
		SKIN:Bang('!SetOption TextTheme2 Text Default')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 424242][!SetVariable SolidColor 2E2E2E][!SetOption TextTheme2 Text Theme1][!SetVariable MenuColor Theme1][!WriteKeyValue variables MenuColor Theme1 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme1' then
		SKIN:Bang('!SetVariable BarColor 424242')
		SKIN:Bang('!SetVariable SolidColor 2E2E2E')
		SKIN:Bang('!SetOption TextTheme2 Text Theme1')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 0B3861][!SetVariable SolidColor 0B243B][!SetOption TextTheme2 Text Theme2][!SetVariable MenuColor Theme2][!WriteKeyValue variables MenuColor Theme2 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme2' then
		SKIN:Bang('!SetVariable BarColor 0B3861')
		SKIN:Bang('!SetVariable SolidColor 0B243B')
		SKIN:Bang('!SetOption TextTheme2 Text Theme2')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 0B4C5F][!SetVariable SolidColor 0B2F3A][!SetOption TextTheme2 Text Theme3][!SetVariable MenuColor Theme3][!WriteKeyValue variables MenuColor Theme3 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme3' then
		SKIN:Bang('!SetVariable BarColor 0B4C5F')
		SKIN:Bang('!SetVariable SolidColor 0B2F3A')
		SKIN:Bang('!SetOption TextTheme2 Text Theme3')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 61380B][!SetVariable SolidColor 3B240B][!SetOption TextTheme2 Text Theme4][!SetVariable MenuColor Theme4][!WriteKeyValue variables MenuColor Theme4 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme4' then
		SKIN:Bang('!SetVariable BarColor 61380B')
		SKIN:Bang('!SetVariable SolidColor 3B240B')
		SKIN:Bang('!SetOption TextTheme2 Text Theme4')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 610B0B][!SetVariable SolidColor 3B0B0B][!SetOption TextTheme2 Text Theme5][!SetVariable MenuColor Theme5][!WriteKeyValue variables MenuColor Theme5 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme5' then
		SKIN:Bang('!SetVariable BarColor 610B0B')
		SKIN:Bang('!SetVariable SolidColor 3B0B0B')
		SKIN:Bang('!SetOption TextTheme2 Text Theme5')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 8A0808][!SetVariable SolidColor 610B0B][!SetOption TextTheme2 Text Theme6][!SetVariable MenuColor Theme6][!WriteKeyValue variables MenuColor Theme6 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme6' then
		SKIN:Bang('!SetVariable BarColor 8A0808')
		SKIN:Bang('!SetVariable SolidColor 610B0B')
		SKIN:Bang('!SetOption TextTheme2 Text Theme6')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 585858][!SetVariable SolidColor 424242][!SetOption TextTheme2 Text Theme7][!SetVariable MenuColor Theme7][!WriteKeyValue variables MenuColor Theme7 #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Theme7' then
		SKIN:Bang('!SetVariable BarColor 585858')
		SKIN:Bang('!SetVariable SolidColor 424242')
		SKIN:Bang('!SetOption TextTheme2 Text Theme7')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor #MyBarColor#][!SetVariable SolidColor #MySolidColor#][!SetOption TextTheme2 Text Custom][!SetVariable MenuColor Custom][!WriteKeyValue variables MenuColor Custom #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	elseif GetPremiumStatus == 'Active' and GetAutoColor == 'Custom' then
		SKIN:Bang('!SetVariable BarColor #MyBarColor#')
		SKIN:Bang('!SetVariable SolidColor #MySolidColor#')
		SKIN:Bang('!SetOption TextTheme2 Text Custom')
		SKIN:Bang('!SetVariable Color #MyTextColor#')
		SKIN:Bang('!SetVariable ExtraExtensions #Extensions#')
		SKIN:Bang('!SetOption CloseExtBorder Y 16r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 2E2E2E][!SetVariable SolidColor 1C1C1C][!SetOption TextTheme2 Text Default][!SetVariable MenuColor Default][!WriteKeyValue variables MenuColor Default #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	else
		SKIN:Bang('!SetVariable BarColor 2E2E2E')
		SKIN:Bang('!SetVariable SolidColor 1C1C1C')
		SKIN:Bang('!SetOption TextTheme2 Text Default')
		SKIN:Bang('!SetVariable Color "0080C0"')
		SKIN:Bang('!SetVariable ExtraExtensions 1')
		SKIN:Bang('!SetOption CloseExtBorder Y -20r')
		SKIN:Bang('!SetOption BorderTheme1 LeftMouseUpAction "[!SetVariable BarColor 2E2E2E][!SetVariable SolidColor 1C1C1C][!SetOption TextTheme2 Text Default][!SetVariable MenuColor Default][!WriteKeyValue variables MenuColor Default #@#Settings.txt][!UpdateMeasure AutoRELua]"')
	end
-- end Color Changer

-- Updates Checker
	if GetVer1 ~= GetVer2 then
		SKIN:Bang('!SetVariable SystemHidden 1')
		SKIN:Bang('!SetOption UpdateAvailableBorder Hidden 0')
		SKIN:Bang('!SetOption UpdateAvailableText Hidden 0')
	else
		SKIN:Bang('!SetOption UpdateAvailableBorder Hidden 1')
		SKIN:Bang('!SetOption UpdateAvailableText Hidden 1')
	end
-- end Updates Checker

-- Gaming Mode START
	if GetAutoGamingModeValue == '1' and GetGamingMode3 >= '1' and GetPremiumStatus == 'Active' then
		SKIN:Bang('!SetOption AutoGamingModeText2 Text ON')
		SKIN:Bang('!SetOption AutoGamingModeText2 FontColor 00FF00FF')
		SKIN:Bang('!ActivateConfig', 'Vipers\\GamingMode', 'GamingMode.ini')
		SKIN:Bang('!SetOption AutoGamingModeBorder LeftMouseUpAction "[!WriteKeyValue variables AutoGamingMode 0 #@#Settings.txt][!Refresh]"')
	elseif GetAutoGamingModeValue == '1' and GetGamingMode3 < '1' and GetPremiumStatus == 'Active' then
		SKIN:Bang('!SetOption AutoGamingModeText2 Text ON')
		SKIN:Bang('!SetOption AutoGamingModeText2 FontColor 00FF00FF')
		SKIN:Bang('!DeactivateConfig', 'Vipers\\GamingMode', 'GamingMode.ini')
		SKIN:Bang('!SetOption AutoGamingModeBorder LeftMouseUpAction "[!WriteKeyValue variables AutoGamingMode 0 #@#Settings.txt][!Refresh]"')
	elseif GetAutoGamingModeValue ~= '1' and GetPremiumStatus == 'Active' then
		SKIN:Bang('!SetOption AutoGamingModeBorder LeftMouseUpAction "[!WriteKeyValue variables AutoGamingMode 1 #@#Settings.txt][!RefreshApp]"')
	else
	end
-- Gaming Mode END
-- Recycle Bin Auto START
	if GetPremiumStatus == 'Active' and GetRecycleBin >= '0' and GetAutoRecycle == '1' then
		SKIN:Bang('!SetOption BorderRecycleBin LeftMouseUpAction ""')
		SKIN:Bang('!SetOption BorderRecycleBin RightMouseUpAction ""')
		SKIN:Bang('!SetOption AutoRecycleBinBorder LeftMouseUpAction "[!WriteKeyValue variables AutoRecycle 0 #@#Settings.txt][!RefreshApp]"')
		SKIN:Bang('!SetOption RecycleBinCount Text "AUTO"')
		SKIN:Bang('!SetOption RecycleBinCount FontSize 6')
		SKIN:Bang('!SetOption RecycleBinCount Y "4r"')
		SKIN:Bang('!SetOption RecycleBinCount StringAlign "LEFT"')
		SKIN:Bang('!SetOption RecycleBinCount X "75r"')
		SKIN:Bang('!SetOption RecycleBinCount FontColor #Color.green#')
		SKIN:Bang('!SetOption BorderRecycleBin MouseActionCursor 0')
		SKIN:Bang('!SetOption AutoRecycleBinText2 FontColor #Color.green#')
		SKIN:Bang('!SetOption AutoRecycleBinText2 Text ON')
		SKIN:Bang('!RainmeterPluginBang "mCount EmptyBinSilent"')
	else
		SKIN:Bang('!SetOption AutoRecycleBinBorder LeftMouseUpAction "[!WriteKeyValue variables AutoRecycle 1 #@#Settings.txt][!RefreshApp]"')
	end
-- Recycle Bin Auto END


--Auto Battery Checker END
	if GetAutoBatteryValue == '1' and GetBattery2 <= '0' and GetPremiumStatus == 'Active' then
		SKIN:Bang('!SetOption AutoBatteryText2 Text ON')
		SKIN:Bang('!SetOption AutoBatteryText2 FontColor 00FF00FF')
		SKIN:Bang('!ActivateConfig', 'Vipers\\Battery', 'Battery.ini')
		SKIN:Bang('!SetOption AutoBatteryBorder LeftMouseUpAction "[!WriteKeyValue variables AutoBattery 0 #@#Settings.txt][!Refresh]"')
	elseif GetAutoBatteryValue == '1' and GetBattery2 >= '1' and GetPremiumStatus == 'Active' then
		SKIN:Bang('!SetOption AutoBatteryText2 Text ON')
		SKIN:Bang('!SetOption AutoBatteryText2 FontColor 00FF00FF')
		SKIN:Bang('!DeactivateConfig', 'Vipers\\Battery', 'Battery.ini')
		SKIN:Bang('!SetOption AutoBatteryBorder LeftMouseUpAction "[!WriteKeyValue variables AutoBattery 0 #@#Settings.txt][!Refresh]"')
	else
		SKIN:Bang('!SetOption AutoBatteryBorder LeftMouseUpAction "[!WriteKeyValue variables AutoBattery 1 #@#Settings.txt][!RefreshApp]"')
		SKIN:Bang('!DeactivateConfig', 'Vipers\\Battery', 'Battery.ini')
	end
--Auto Battery Checker END
end

