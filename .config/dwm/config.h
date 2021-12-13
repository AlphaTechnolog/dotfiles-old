// -------------------------------- Appearance ---------------------------------

// border pixel of windows
static const unsigned int borderpx  = 1;
// gaps between windows 
static const unsigned int gappx = 12;
// snap pixel 
static const unsigned int snap = 32;
// 0: sloppy systray follows selected monitor, >0: pin systray to monitor X 
static const unsigned int systraypinning = 0;
// systray spacing 
static const unsigned int systrayspacing = 2;
// 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor
static const int systraypinningfailfirst = 1;
// 0 means no systray
static const int showsystray = 1;
// 0 means no bar 
static const int showbar = 1;
// 0 means bottom bar 
static const int topbar = 1;

// ---------------------------------- Fonts ------------------------------------

static const char *fonts[] = { "SauceCodePro Nerd Font:size=9:weight=bold:antialias=true:autohint:true" };
static const char dmenufont[] = "SauceCodePro Nerd Font:size=10:antialias=true:autohint=true";

// ---------------------------------- Colors -----------------------------------

struct Theme {
    char *inactive;
    char *active;
    char *bg;
    char *focus;
};

static const struct Theme material_ocean = {
    .inactive = "#4c566a",
    .active = "#ffffff",
    .bg = "#0f101a",
    .focus = "#d3a7ee",
};

static const struct Theme nord = {
    .inactive = "#4c566a",
    .active = "#ffffff",
    .bg = "#2e3440",
    .focus = "#81a1c1"
};

static const struct Theme oneh4ck = {
    .inactive = "#5c6370",
    .active = "#accddc",
    .bg = "#00031f",
    .focus = "#4f8eac",
};

static const struct Theme onedarker = {
    .inactive = "#5c6370",
    .active = "#e6efff",
    .bg = "#1C1F26",
    .focus = "#5BA3DE",
};

static const struct Theme onedark = {
    .inactive = "#5c6370",
    .active = "#e6efff",
    .bg = "#1e222a",
    .focus = "#528bff",
};

static const struct Theme dracula = {
    .inactive = "#44475a",
    .active = "#f8f8f2",
    .bg = "#282a36",
    .focus = "#bd93f9",
};

static const struct Theme doom_one = {
    .inactive = "#3e4451",
    .active = "#e6efff",
    .bg = "#282c34",
    .focus = "#51afef",
};

static const struct Theme ayu_mirage = {
    .inactive = "#3e4451",
    .active = "#fafafa",
    .bg = "#212733",
    .focus = "#60b8d6",
};

static const struct Theme horizon_dark = {
    .inactive = "#3e4451",
    .active = "#e0e0e0",
    .bg = "#1c1e26",
    .focus = "#ee64ac",
};

static const struct Theme moonlight = {
    .inactive = "#3e4451",
    .active = "#c8d3f5",
    .bg = "#212337",
    .focus = "#c099ff",
};

static const struct Theme tokyonight = {
    .inactive = "#3e4451",
    .active = "#c0caf5",
    .bg = "#1a1b26",
    .focus = "#7aa2f7",
};

static const struct Theme tokyonight_storm = {
    .inactive = "#3e4451",
    .active = "#c0caf5",
    .bg = "#24283b",
    .focus = "#7aa2f7",
};

static const struct Theme codedark = {
    .inactive = "#3e4451",
    .active = "#d4d4d4",
    .bg = "#1e1e1e",
    .focus = "#569cd6",
};

static const struct Theme nightfox = {
    .inactive = "#3e4451",
    .active = "#cdcecf",
    .bg = "#192330",
    .focus = "#719cd6"
};

static const struct Theme calvera_dark = {
    .inactive = "#3e4451",
    .active = "#FFFFFF",
    .bg = "#0c0c1f",
    .focus = "#7878E7",
};

static const struct Theme solarized_dark = {
    .inactive = "#3e4451",
    .active = "#FFFFFF",
    .bg = "#002b36",
    .focus = "#2aa198",
};

static const char window_border[] = "#000000";

static const char *colors[][3] = {
    // fg                 bg             border   
    { solarized_dark.inactive, solarized_dark.bg, window_border },
    { solarized_dark.active, solarized_dark.focus, solarized_dark.focus },

    { onedarker.inactive, onedarker.bg, window_border },
    { onedarker.active, onedarker.focus,  onedarker.focus  },

    { oneh4ck.inactive, oneh4ck.bg, window_border },
    { oneh4ck.active, oneh4ck.focus,  oneh4ck.focus  },

    { onedark.inactive, onedark.bg, window_border },
    { onedark.active, onedark.focus,  onedark.focus  },

    { tokyonight.inactive, tokyonight.bg, window_border },
    { tokyonight.active, tokyonight.focus, tokyonight.focus },

    { horizon_dark.inactive, horizon_dark.bg, window_border },
    { horizon_dark.active, horizon_dark.focus, horizon_dark.focus },

    { calvera_dark.inactive, calvera_dark.bg, window_border },
    { calvera_dark.active, calvera_dark.focus, calvera_dark.focus },

    { doom_one.inactive, doom_one.bg, window_border },
    { doom_one.active, doom_one.focus, doom_one.focus },

    { dracula.inactive, dracula.bg, window_border },
    { dracula.active, dracula.focus, dracula.focus },

    { tokyonight_storm.inactive, tokyonight_storm.bg, window_border },
    { tokyonight_storm.active, tokyonight_storm.focus, tokyonight_storm.focus },

    { moonlight.inactive, moonlight.bg, window_border },
    { moonlight.active, moonlight.focus, moonlight.focus },

    { material_ocean.inactive, material_ocean.bg, window_border },
    { material_ocean.active, material_ocean.focus, material_ocean.focus },

    { nightfox.inactive, nightfox.bg, window_border },
    { nightfox.active, nightfox.focus, nightfox.focus },

    { codedark.inactive, codedark.bg, window_border },
    { codedark.active, codedark.focus, codedark.focus },

    { ayu_mirage.inactive, ayu_mirage.bg, window_border },
    { ayu_mirage.active, ayu_mirage.focus, ayu_mirage.focus },

    { nord.inactive, nord.bg, window_border },
    { nord.active, nord.focus, nord.focus  },
};

// -------------------------------- Workspaces ---------------------------------

static const char *tags[] = { " ", " ", " ", " ", " ", " ", " ", "ﭮ ", " " };

static const Rule rules[] = {
    /* xprop(1):
     * WM_CLASS(STRING) = instance, class
     * WM_NAME(STRING) = title
     */

    // class      instance    title       tags mask     isfloating   monitor 
    { "Gimp",     NULL,       NULL,       0,            1,           -1 },
};

// ---------------------------------- Layouts ----------------------------------

static const float mfact = 0.50;  // factor of master area size [0.05..0.95] 
static const int nmaster = 1;     // number of clients in master area 
static const int resizehints = 1; // 1 means respect size hints in tiled resizals 

#include "layouts.c"
static const Layout layouts[] = {
    // symbol   arrange function
    { "[M]",    monocle }, // first entry is default
    { "[]",     tile },
    { "[F]",    NULL }, // no layout function means floating behavior 
    { "[C]",    tcl },
    { "[G]",    grid },
    { NULL,     NULL },
};

// -------------------------------- Keybindings --------------------------------

#define MODKEY Mod4Mask

#define TAGKEYS(KEY,TAG) \
    { MODKEY,                       KEY,  view,       {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask,           KEY,  toggleview, {.ui = 1 << TAG} }, \
    { MODKEY|ShiftMask,             KEY,  tag,        {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask|ShiftMask, KEY,  toggletag,  {.ui = 1 << TAG} },

// Helper for spawning shell commands in the pre dwm-5.0 fashion 
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

// Commands
static char dmenumon[2] = "0";
static const char *termcmd[]  = { "kitty", NULL };
static const char *dmenucmd[] = {
    "dmenu_run", "-m", dmenumon,
    "-fn", dmenufont,
    NULL
};

#include <X11/XF86keysym.h>
static Key keys[] = {

    // ------------------ Windows ------------------

    // Switch between windows
    { MODKEY, XK_j, focusstack, {.i = +1 } },
    { MODKEY, XK_k, focusstack, {.i = -1 } },

    // Change window sizes
    { MODKEY, XK_i, incnmaster, {.i = +1 } },
    { MODKEY|ShiftMask, XK_i, incnmaster, {.i = -1 } },
    { MODKEY|ShiftMask, XK_h, setmfact, {.f = -0.05} },
    { MODKEY|ShiftMask, XK_l, setmfact, {.f = +0.05} },

    // Toggle floating
    { MODKEY|ShiftMask, XK_f, togglefloating, {0} },

    // Toggle bar
    { MODKEY|ShiftMask, XK_b, togglebar, {0} },

    // Move windows in current stack
    { MODKEY|ShiftMask, XK_j, rotatestack, {.i = +1 } },
    { MODKEY|ShiftMask, XK_k, rotatestack, {.i = -1 } },

    // Cycle layouts
    { MODKEY, XK_Tab, cyclelayout, {.i = +1 } },
    { MODKEY|ShiftMask, XK_Tab, cyclelayout,  {.i = -1 } },

    // Increase - decrease gaps
    { MODKEY, XK_g, setgaps, {.i = -1 } },
    { MODKEY|ShiftMask, XK_g, setgaps, {.i = +1 } },

    // Focus next - prev monitor
    { MODKEY, XK_period, focusmon, {.i = +1 } },
    { MODKEY, XK_comma, focusmon, {.i = -1 } },

    // Send window to next - prev monitor
    { MODKEY|ShiftMask, XK_period, tagmon, {.i = +1 } },
    { MODKEY|ShiftMask, XK_comma, tagmon, {.i = -1 } },

    // Change color scheme
    { MODKEY, XK_Left, schemeToggle, {0} },
    { MODKEY, XK_Right, schemeCycle, {0} },

    // Kill window
    { MODKEY, XK_w, killclient, {0} },

    // Restart dwm
    { MODKEY|ShiftMask, XK_r, quit, {1} },

    // Quit dwm
    { MODKEY|ShiftMask, XK_q, quit, {0} },

    // ---------------- Workspaces -----------------

    TAGKEYS(XK_1, 0)
    TAGKEYS(XK_2, 1)
    TAGKEYS(XK_3, 2)
    TAGKEYS(XK_4, 3)
    TAGKEYS(XK_5, 4)
    TAGKEYS(XK_6, 5)
    TAGKEYS(XK_7, 6)
    TAGKEYS(XK_8, 7)
    TAGKEYS(XK_9, 8)

    // ------------------- Apps --------------------

    // dmenu
    // { MODKEY|ShiftMask, XK_Return, spawn, {.v = dmenucmd } },

    // rofi
    { MODKEY|ShiftMask, XK_Return, spawn, SHCMD("rofi -show drun") },
    { MODKEY, XK_s, spawn, SHCMD("~/.local/bin/spanish-kb-copier") },

    // Terminal
    { MODKEY, XK_Return, spawn, SHCMD("kitty") },

    // Browser
    { MODKEY, XK_b, spawn, SHCMD("qutebrowser") },

    // Audio Toggler
    { MODKEY, XK_p, spawn, SHCMD("~/.local/bin/audio-toggler") },

    // ----------------- Hardware ------------------

    // Volume
    {0, XF86XK_AudioLowerVolume, spawn, SHCMD("pactl set-sink-volume @DEFAULT_SINK@ -5%")},
    {0, XF86XK_AudioRaiseVolume, spawn, SHCMD("pactl set-sink-volume @DEFAULT_SINK@ +5%")},
    {0, XF86XK_AudioMute, spawn, SHCMD("pactl set-sink-mute @DEFAULT_SINK@ toggle")},

    // Brightness
    {0, XF86XK_MonBrightnessUp, spawn, SHCMD("brightnessctl set +10%")},
    {0, XF86XK_MonBrightnessDown, spawn, SHCMD("brightnessctl set 10%-")},

};

// click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin 
static Button buttons[] = {
    // click            event mask    button       function         argument 
    { ClkLtSymbol,      0,            Button1,     setlayout,       {0} },
    { ClkLtSymbol,      0,            Button3,     setlayout,       {.v = &layouts[2]} },
    { ClkWinTitle,      0,            Button2,     zoom,            {0} },
    { ClkStatusText,    0,            Button2,     spawn,           {.v = termcmd } },
    { ClkClientWin,     MODKEY,       Button1,     movemouse,       {0} },
    { ClkClientWin,     MODKEY,       Button2,     togglefloating,  {0} },
    { ClkClientWin,     MODKEY,       Button3,     resizemouse,     {0} },
    { ClkTagBar,        0,            Button1,     view,            {0} },
    { ClkTagBar,        0,            Button3,     toggleview,      {0} },
    { ClkTagBar,        MODKEY,       Button1,     tag,             {0} },
    { ClkTagBar,        MODKEY,       Button3,     toggletag,       {0} },
};
