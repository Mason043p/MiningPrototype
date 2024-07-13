class RscTitles{
	class moneyHUD{
		idd = 1000;
		onLoad = "uiNamespace setVariable ['moneyHUD', _this select 0];";
		duration = 1e+11;		
		class Controls{
		
				class moneyHUD: RscText
				{
					idc = 1001;
					text = "100";
					colorText[] = {1, 1, 1, 1};
					x = 0.0153125 * safezoneW + safezoneX;
					y = 0.016 * safezoneH + safezoneY;
					w = 0.12375 * safezoneW;
					h = 0.077 * safezoneH;
				};
				

		}

	}
}
