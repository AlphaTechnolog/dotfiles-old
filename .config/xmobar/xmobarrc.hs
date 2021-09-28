-- Xmobar (http://projects.haskell.org/xmobar/)
-- Dependencies: otf-font-awesome ttf-mononoki ttf-ubuntu-font-family trayer
-- Also depends on scripts from dtos-local-bin from the dtos-core-repo.

Config { font            = "xft:UbuntuMono Nerd Font:weight=bold:pixelsize=11.8:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=11:antialias=true:hinting=true"
                           , "xft:Font Awesome 5 Free Solid:pixelsize=12"
                           , "xft:Font Awesome 5 Brands:pixelsize=12"
                           ]
       -- Onedark colors:
       , bgColor      = "#1e2127"
       , fgColor      = "#ff6c6b"
       -- Tokyonight colors
       -- , bgColor      = "#1a1b26"
       -- , fgColor      = "#c0caf5"
       -- --------------------------
       -- Dracula colors
       -- , bgColor      = "#282a36"
       -- , fgColor      = "#f8f8f2"
       -- Gruvbox colors
       -- , bgColor      = "#282828"
       -- , fgColor      = "#ebdbb2"
       -- Position TopSize and BottomSize take 3 arguments:
       --   an alignment parameter (L/R/C) for Left, Right or Center.
       --   an integer for the percentage width, so 100 would be 100%.
       --   an integer for the minimum pixel height for xmobar, so 24 would force a height of at least 24 pixels.
       --   NOTE: The height should be the same as the trayer (system tray) height.
       , position       = TopSize L 100 24
       , lowerOnStart = True
       , hideOnStart  = False
       , allDesktops  = True
       , persistent   = True
       , iconRoot     = ".xmonad/xpm/"  -- default: "."
       , commands = [
                        -- Cpu usage in percent
                    Run Cpu ["-t", "<fn=2>\xf108</fn>  cpu: (<total>%)","-H","50","--high","red"] 20
                        -- Ram used number and percent
                    , Run Memory ["-t", "<fn=2>\xf233</fn>  mem: <used>M (<usedratio>%)"] 20
                        -- Disk space free
                    , Run DiskU [("/", "<fn=2>\xf0c7</fn>  hdd: <free> free")] [] 60
                        -- Echos an "up arrow" icon in front of the uptime output.
                    , Run Com "echo" ["<fn=2>\xf0aa</fn>"] "uparrow" 3600
                        -- Uptime
                    , Run Uptime ["-t", "uptime: <days>d <hours>h"] 360
                        -- Time and date
                    , Run Date "<fn=2>\xf017</fn>  %b %d %Y - (%H:%M) " "date" 50
                        -- Script that dynamically adjusts xmobar padding depending on number of trayer icons.
                    , Run Com "/home/dt/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 20
                        -- Prints out the left side items such as workspaces, layout, etc.
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       -- Onedark
       , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#ecbe7b><fc=#ecbe7b><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ff6c6b><fc=#ff6c6b><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#a9a1e1><fc=#a9a1e1><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#98be65><fc=#98be65>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#46d9ff><fc=#46d9ff>%date%</fc></box> %trayerpad%"
       -- Gruvbox
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#d79921><fc=#d79921><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#cc241d><fc=#cc241d><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#b16286><fc=#b16286><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#98971a><fc=#98971a>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#458588><fc=#458588>%date%</fc></box> %trayerpad%"
       -- Dracula
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#f4f99d><fc=#f4f99d><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ff6e67><fc=#ff6e67><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#caa9fa><fc=#caa9fa><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#5af78e><fc=#5af78e>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#9aedfe><fc=#9aedfe>%date%</fc></box> %trayerpad%"
       }
