-- Xmobar (http://projects.haskell.org/xmobar/)
-- Dependencies: otf-font-awesome ttf-mononoki ttf-ubuntu-font-family trayer
-- Also depends on scripts from dtos-local-bin from the dtos-core-repo.

Config {   font            = "xft:UbuntuMono Nerd Font:weight=bold:pixelsize=11.8:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Mononoki Nerd Font:pixelsize=11:antialias=true:hinting=true"
                           , "xft:Font Awesome 5 Free Solid:pixelsize=12"
                           , "xft:Font Awesome 5 Brands:pixelsize=12"
                           ]
       -- Onedark colors:
       -- , bgColor      = "#1e2127"
       -- , fgColor      = "#e06c75"
       -- Onedarker colors:
       , bgColor = "#1e222a"
       , fgColor = "#bb71d1"
       , alpha = 50
       -- Nightfox colors:
       -- , bgColor      = "#192330"
       -- , fgColor      = "#9d79d6"
       -- Calvera Dark colors:
       -- , bgColor      = "#0c0c1f"
       -- , fgColor      = "#B0BEC5"
       -- Moonlight colors:
       -- , bgColor      = "#212337"
       -- , fgColor      = "#c099ff"
       -- Horizon dark colors:
       -- , bgColor      = "#1c1e26"
       -- , fgColor      = "#e95678"
       -- Doom one colors:
       -- , bgColor      = "#282c34"
       -- , fgColor      = "#ff6c6b"
       -- Ayu Mirage
       -- , bgColor      = "#212733"
       -- , fgColor      = "#f08778"
       -- Material Ocean
       -- , bgColor      = "#0f101a"
       -- , fgColor      = "#a151d3"
       -- Gotham colors:
       -- , bgColor      = "#0a0f14"
       -- , fgColor      = "#98d1ce"
       -- Dogrun
       -- , bgColor      = "#222433"
       -- , fgColor      = "#9ea3c0"
       -- Tokyonight colors
       -- , bgColor      = "#24283b" -- This for storm
       -- , bgColor      = "#1a1b26"
       -- , fgColor      = "#c0caf5"
       -- --------------------------
       -- Dracula colors
       -- , bgColor      = "#282a36"
       -- , fgColor      = "#f8f8f2"
       -- Gruvbox colors
       -- , bgColor      = "#1d2021"
       -- , fgColor      = "#ebdbb2"
       -- Tokyonight Day
       -- , bgColor = "#e1e2e7"
       -- , fgColor = "#3760bf"
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
                    , Run Com "/home/alphatechnolog/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 20
                        -- Prints out the left side items such as workspaces, layout, etc.
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       -- Tokyonight Day
       -- , template = " <icon=haskell-dark_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#8c6c3e><fc=#8c6c3e><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#f52a65><fc=#f52a65><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#9854f1><fc=#9854f1><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#587539><fc=#587539>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#007197><fc=#007197>%date%</fc></box> %trayerpad%"
       -- Onedark
       , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#ecbe7b><fc=#ecbe7b><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ff6c6b><fc=#ff6c6b><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#a9a1e1><fc=#a9a1e1><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#98be65><fc=#98be65>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#46d9ff><fc=#46d9ff>%date%</fc></box> %trayerpad%"
       -- Nightfox
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#dbc074><fc=#dbc074><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#c94f6d><fc=#c94f6d><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#9d79d6><fc=#9d79d6><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#81b29a><fc=#81b29a>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#63cdcf><fc=#63cdcf>%date%</fc></box> %trayerpad%"
       -- Moonlight
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#ffc777><fc=#ffc777><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ff757f><fc=#ff757f><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#c099ff><fc=#c099ff><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#c3e88d><fc=#c3e88d>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#b4f9f8><fc=#b4f9f8>%date%</fc></box> %trayerpad%"
       -- Calvera Dark
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#D6B295><fc=#D6B295><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#E97A7A><fc=#E97A7A><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#7878E7><fc=#7878E7><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ADCEA1><fc=#ADCEA1>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#82AAFF><fc=#82AAFF>%date%</fc></box> %trayerpad%"
       -- Horizon Dark
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#fab795><fc=#fab795><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#e95678><fc=#e95678><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ee64ac><fc=#ee64ac><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#29d398><fc=#29d398>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#60b8d6><fc=#60b8d6>%date%</fc></box> %trayerpad%"
       -- Material Ocean
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#ffd47e><fc=#ffd47e><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#F07178><fc=#F07178><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#a151d3><fc=#a151d3><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#cdea9f><fc=#cdea9f>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#93bbff><fc=#93bbff>%date%</fc></box> %trayerpad%"
       -- Gruvbox
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#d79921><fc=#d79921><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#cc241d><fc=#cc241d><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#b16286><fc=#b16286><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#98971a><fc=#98971a>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#458588><fc=#458588>%date%</fc></box> %trayerpad%"
       -- Dracula
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#f4f99d><fc=#f4f99d><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#ff6e67><fc=#ff6e67><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#caa9fa><fc=#caa9fa><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#5af78e><fc=#5af78e>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#9aedfe><fc=#9aedfe>%date%</fc></box> %trayerpad%"
       -- Gotham
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#edb54b><fc=#edb54b><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#c33027><fc=#c33027><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#4e5165><fc=#4e5165><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#26a98b><fc=#26a98b>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#195465><fc=#195465>%date%</fc></box> %trayerpad%"
       -- Dogrun
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#AC8B83><fc=#AC8B83><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#DC6F7A><fc=#DC6F7A><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#929BE5><fc=#929BE5><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#7CBE8C><fc=#7CBE8C>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#59B6B6><fc=#59B6B6>%date%</fc></box> %trayerpad%"
       -- Ayu mirage
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#fdcc60><fc=#fdcc60><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#f08778><fc=#f08778><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#929BE5><fc=#929BE5><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#53bf97><fc=#53bf97>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#60b8d6><fc=#60b8d6>%date%</fc></box> %trayerpad%"
       -- Tokyonight
       -- , template = " <icon=haskell_20.xpm/>   <fc=#666666>|</fc> %UnsafeStdinReader% }{<box type=Bottom width=2 mb=2 color=#e0af68><fc=#e0af68><action=`alacritty -e htop`>%cpu%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#f7768e><fc=#f7768e><action=`alacritty -e htop`>%memory%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#bb9af7><fc=#bb9af7><action=`alacritty -e htop`>%disku%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#9ece6a><fc=#9ece6a>%uparrow%  <action=`alacritty -e htop`>%uptime%</action></fc></box>    <box type=Bottom width=2 mb=2 color=#7dcfff><fc=#7dcfff>%date%</fc></box> %trayerpad%"
       }
