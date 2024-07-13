class sellGUI
{
    idd = 1696;

    class Controls
     {
                   
           class background2: RscText
		{
			idc = 1001;
			x = 0.319531 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.293906 * safezoneW;
			h = 0.275 * safezoneH;
			text = "";
			fade = 0;
			deletable = 0;
			access = 0;
			type = CT_STATIC;
			colorBackground[] = {0, 0, 0, .9};
			
		};
		class primaryFrame: RscFrame
		{
			idc = 1800;
			x = 0.319531 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.293906 * safezoneW;
			h = 0.275 * safezoneH;
		};
		class sellButton: RscButton
		{
			idc = 1601;
			text = "Sell Gems (10$/gem)"; //--- ToDo: Localize;
			onButtonClick = "call gemSell;";
			x = 0.324687 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.044 * safezoneH;
		};

    };
};