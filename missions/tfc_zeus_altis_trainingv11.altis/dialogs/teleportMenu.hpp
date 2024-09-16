#define ST_CENTER         0x02
#define IDD_TELEPORT_MENU 9800000
#define IDC_LIST_BOX 9800001
/*
    Author: PDT

    File: clothingSelectGUI.hpp
*/

class TFC_Teleport_Menu {
    idd = IDD_TELEPORT_MENU;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    name = "TFC_Teleport_Menu";
    onLoad = "uiNamespace setVariable ['TFC_Teleport_Menu', _this select 0]; [] call TFC_fnc_locationLbAdd";
    objects[] = {};

    class controlsBackground {

		class TFC_RscText_TitleBackground: RscText
		{
            idc = -1;
            shadow = 0;
            type = 0;
            style = 0;
            sizeEx = 0.023;
            text = "";
            font = "PuristaMedium";
            colorBackground[] = {1, 1, 1, 1.0};
            colorText[] = {};
            x = 0.0 * safezoneW + safezoneX;
            y = 0.125 * safezoneH + safezoneY;
    		h = 0.035 * safezoneH;
    		w = 1 * safezoneW;
            tooltipColorText[] = {1,1,1,1};
            tooltipColorBox[] = {1,1,1,1};
            tooltipColorShade[] = {0,0,0,0.65};
		};

		class TFC_RscText_TitleText: RscText
		{
            idc = -1;
            x = 0.015 * safezoneW + safezoneX;
            y = 0.120 * safezoneH + safezoneY;
    		h = 0.037 * safezoneH;
    		w = 0.3 * safezoneW;
			shadow = 0;
			colorShadow[] = {0, 0, 0, 0.5};
			font = "PuristaMedium";
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2)";
			text = "Select a location";
			colorText[] = {0, 0, 0, 1.0};
			colorBackground[] = {0, 0, 0, 0};
			linespacing = 1;
			tooltipColorText[] = {1,1,1,1};
			tooltipColorBox[] = {1,1,1,1};
			tooltipColorShade[] = {0,0,0,0.65};
		};

        class TFC_RscButton_Accept: RscButtonMenu
        {
            idc = -1;
            shadow = 0;
            x = 0.8 * safezoneW + safezoneX;
            y = 0.84 * safezoneH + safezoneY;
            w = 0.1 * safezoneW;
            h = 0.03 * safezoneH;
            colorBackground[] = {0,0,0,0.8};
            colorBackgroundFocused[] = {1,1,1,1};
            colorBackground2[] = {0.75,0.75,0.75,1};
            color[] = {1,1,1,1};
            colorFocused[] = {0,0,0,1};
            colorText[] = {1,1,1,1};
            size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
            sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
            text = "Teleport";
            action = "closeDialog 1;";
            class Attributes
            {
                font = "PuristaLight";
                color = "#E5E5E5";
                align = "center";
                shadow = "false";
            };
        };
    };

    class controls{
        class TFC_RscListBox_Spawns: RscListBox
        {
            idc = IDC_LIST_BOX;
            x = 0.05 * safezoneW + safezoneX;
            y = 0.25 * safezoneH + safezoneY;
            w = 0.15 * safezoneW;
            h = 0.25 * safezoneH;
            color[] = {1,1,1,0.6};
            colorActive[] = {1,1,1,1};
            colorDisabled[] = {1,1,1,0.3};
            arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
            arrowFull = "#(argb,8,8,3)color(1,0.5,0,1)";
            border = "#(argb,8,8,3)color(0,0,0,1)";
            colorSelect[] = {1,1,1,1};
            colorText[] = {1,1,1,0.8};
            soundSelect[] = {"",0.1,1};
            sizeEx = 0.0325;
        };
    };
};
