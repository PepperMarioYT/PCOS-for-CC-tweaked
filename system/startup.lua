-- Constants
local INSTALL_PATH = "/PCOS"  -- Update with your installation path

-- Function to draw the PCOS logo
local function drawPCOSLogo()
    term.clear()
    term.setCursorPos(1, 1)

    -- PCOS text with gear-like ASCII art
    print("██████╗░░█████╗░░█████╗░░██████╗")
    print("██╔══██╗██╔══██╗██╔══██╗██╔════╝")
    print("██████╔╝██║░░╚═╝██║░░██║╚█████╗░")
    print("██╔═══╝░██║░░██╗██║░░██║░╚═══██╗")
    print("██║░░░░░╚█████╔╝╚█████╔╝██████╔╝")
    print("╚═╝░░░░░░╚════╝░░╚════╝░╚═════╝░")
end

-- Function to run the update script
local function runUpdateScript()
    shell.run(fs.combine(INSTALL_PATH, "system/update.lua"))
end

-- Function to run the login script
local function runLoginScript()
    shell.run(fs.combine(INSTALL_PATH, "system/login.lua"))
end

-- Draw the PCOS logo
drawPCOSLogo()

-- Run the update script
runUpdateScript()

-- Run the login script
runLoginScript()
