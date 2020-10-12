# Windows Terminal Preview Config

<code>
{
    "$schema": "https://aka.ms/terminal-profiles-schema",
    
    "defaultProfile": "{2c4de342-38b7-51cf-b940-2309a097f518}",
			"launchMode": "maximized",
			"useTabSwitcher": false,
			"confirmCloseAllTabs": false,
			"largePasteWarning": false,
			"multiLinePasteWarning": false,
    "profiles":
    {
        "defaults":
        {
            // Put settings here that you want to apply to all profiles
		"padding": "10, 10, 10, -10",
		"cursorColor": "#FFFFFF",
		"launchMode": "maximized",
		"largePasteWarning": "false",
		"foreground": "#00ff2f", 	
		"background": "#262626",
		"cursorShape" : "filledBox",  
   		"fontFace": "Hack Nerd Font",
		"fontSize": 11,
		"startingDirectory": "D:/code",
		//"useAcrylic" : true,
		"acrylicOpacity" : 0.1,
		"scrollbarState" : "hidden",
		"colorScheme": "Blaze",
		"launchMode": "maximized"
		
        },
        "list":
        [
            {
                // Make changes here to the CMD.exe profile
		"guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
            	"name": "Command Prompt",
            	"commandline": "%SystemRoot%\\System32\\cmd.exe",
                "hidden": false,
		"confirmCloseAllTabs": false,
		"background": "#262626",
		 "useAcrylic" : true,
		//"acrylicOpacity" : 0.8,
		"startingDirectory": "D:/code",
		"icon": "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png"
            },
            {
                // Make changes here to the Powershell.exe profile
                "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
                "name": "Powershell",
                "commandline": "powershell.exe",
                "hidden": false,
		"useAcrylic" : true,
		"acrylicOpacity" : 0.0,
		"startingDirectory": "%USERPROFILE%",
		"confirmCloseAllTabs": false,
		"icon": "ms-appx:///ProfileIcons/{61c54bbd-c2c6-5271-96e7-009a87ff44bf}.png"
            },
            {
                "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
                "hidden": false,
                "name": "Azure Cloud Shell",
                "source": "Windows.Terminal.Azure"
            },
            {
                "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
                "hidden": false,
                "name": "Blaze",
                "source": "Windows.Terminal.Wsl",
            }
        ]
    },

    // Add custom color schemes to this array
    "schemes": [
		{	
	"name" : "Blaze",
        "black" : "#21222C", //TEXT COLOR
        "blue" : "#FF5555", //FOLDER PATH BACKGROUND COLOR
        "cyan" : "#8BE9FD",
        "foreground" : "#0373fc",
        "green" : "#0373fc",
        "purple" : "#FF5555",
        "red" : "#FF5555",
        "white" : "#F8F8F2",
        "yellow" : "#ffffff", //GIT STATUS BACKGROUND COLOR
        "brightBlack" : "#6272A4",
        "brightBlue" : "#D6ACFF",
        "brightCyan" : "#ffffff",
        "brightGreen" : "#69FF94",
        "brightPurple" : "#FF6E6E",
        "brightRed" : "#FF6E6E",
        "brightWhite" : "#F8F8F2",
        "brightYellow" : "#BD93F9" 

		}

	],

    // Add any keybinding overrides to this array.
    // To unbind a default keybinding, set the command to "unbound"
    "keybindings": []
}
</code>

