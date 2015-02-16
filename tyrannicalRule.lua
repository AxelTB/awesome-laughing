local awful = require("awful")
local tyrannical = require("tyrannical")

tyrannical.tags = {
{
name = "Term",
init        = true                                           ,
exclusive   = true                                           ,
layout      = awful.layout.suit.tile                         ,
focus_new   = true                                           ,
selected    = true,
index       = 1,
class       = {
"xterm" , "urxvt" , "aterm","URxvt","XTerm","Gnome-terminal"
},
} ,
{
name = "Internet",
init        = true                                           ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("net.png")        ,
--screen      = config.scr.pri                          ,
layout      = awful.layout.suit.max                          ,
--         clone_on    = 2,
class = {
"Opera"         , "Firefox"        , "Rekonq"    , "Dillo"        , "Arora",
"Chromium"      , "nightly"        , "Nightly"   , "minefield"    , "Minefield",
"luakit"	    , "Google-chrome"  , "Google-chrome-stable"
}
} ,
{
name = "Files",
init        = true                                           ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("folder.png")     ,
--screen      = config.scr.pri                          ,
layout      = awful.layout.suit.tile                         ,
exec_once   = {"dolphin"},
no_focus_stealing_in = true,
max_clients = fair_split_or_tile,
rotate_shortcut = true,
shortcut    = { {modkey} , "e" },
class  = { 
"Thunar"        , "Konqueror"      , "Dolphin"   , "ark"          , "Nautilus",         }
} ,
{
name = "Develop",
init        = true                                              ,
exclusive   = true                                           ,
--                     screen      = {config.scr.pri, config.scr.sec}     ,
--icon        = utils.tools.invertedIconPath("bug.png")        ,
layout      = awful.layout.suit.max                          ,
class ={ 
"Kate"          , "KDevelop"       , "Codeblocks", "Code::Blocks" , "DDD", "kate4","Brackets"             }
} ,
{
name = "Edit",
init        = true                                           ,
exclusive   = false                                           ,
--                     screen      = {config.scr.pri, config.scr.sec}     ,
--icon        = utils.tools.invertedIconPath("editor.png")     ,
layout      = awful.layout.suit.tile.bottom                  ,
class = { 
"KWrite"        , "GVim"           , "Emacs"     , "Code::Blocks" , "DDD", "Gedit"               }
} ,
{
name = "Media",
init        = true                                           ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("media.png")      ,
layout      = awful.layout.suit.max                          ,
class = { 
"Xine"          , "xine Panel"     , "xine*"     , "MPlayer"      , "GMPlayer",
"XMMS", "Rhythmbox" }
} ,
{
name = "Doc",
--  init        = true                                           ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("info.png")       ,
--                     screen      = config.scr.music                          ,
layout      = awful.layout.suit.max                          ,
force_screen= true                                           ,
class       = {
"Assistant"     , "Okular"         , "Evince"    , "EPDFviewer"   , "xpdf",
"Xpdf"          ,                                        }
} ,


-----------------VOLATILE TAGS-----------------------
{
name        = "Imaging",
init        = false                                          ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("image.png")      ,
layout      = awful.layout.suit.max                          ,
class       = {"Inkscape"      , "KolourPaint"    , "Krita"     , "Karbon"       , "Karbon14"}
} ,
{
name        = "Picture",
init        = false                                          ,
position    = 10                                             ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("image.png")      ,
layout      = awful.layout.suit.max                          ,
class       = {"Digikam"       , "F-Spot"         , "GPicView"  , "ShowPhoto"    , "KPhotoAlbum"}
} ,
{
name        = "Video",
init        = false                                          ,
position    = 10                                             ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("video.png")      ,
layout      = awful.layout.suit.max                          ,
class       = {"KDenLive"      , "Cinelerra"      , "AVIDeMux"  , "Kino"}
} ,
{
name        = "Movie",
init        = false                                          ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("video.png")      ,
layout      = awful.layout.suit.max                          ,
class       = {"VLC"}
} ,
{
name        = "3D",
init        = false                                          ,
position    = 10                                             ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("3d.png")         ,
layout      = awful.layout.suit.max.fullscreen               ,
class       = {"Blender"       , "Maya"           , "K-3D"      , "KPovModeler"  , }
} ,
{
name        = "Music",
init        = false                                          ,
position    = 10                                             ,
exclusive   = true                                           ,
--screen      = config.scr.music or config.scr.pri             ,
force_screen= true                                           ,
--icon        = utils.tools.invertedIconPath("media.png")      ,
layout      = awful.layout.suit.max                          ,
class       = {"Amarok"        , "SongBird"       , "last.fm"   ,}
} ,
{
name        = "Down",
init        = false                                          ,
position    = 10                                             ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("download.png")   ,
layout      = awful.layout.suit.max                          ,
class       = {"Transmission"  , "KGet"}
} ,
{
name        = "Office",
init        = false                                          ,
position    = 10                                             ,
exclusive   = true                                           ,
--icon        = utils.tools.invertedIconPath("office.png")     ,
layout      = awful.layout.suit.max                          ,
class       = {
"OOWriter"      , "OOCalc"         , "OOMath"    , "OOImpress"    , "OOBase"       ,
"SQLitebrowser" , "Silverun"       , "Workbench" , "KWord"        , "KSpread"      ,
"KPres","Basket", "openoffice.org" , "OpenOffice.*"               ,                }
} ,
{
name        = "Admin",
init        = false                                          ,
exclusive   = false                                          ,
layout      = awful.layout.suit.max                        ,
class       = {"Systemsettings", "Kcontrol"       , "gconf-editor", "synaptic"}
} ,
{
name        = "Game",
init        = false                                          ,
--screen      = config.scr.pri                          ,
position    = 10                                             ,
exclusive   = false                                          ,
--icon        = utils.tools.invertedIconPath("game.png")       ,
force_screen= true                                           ,
layout      = awful.layout.suit.max                        ,
class       = {"sauer_client"  , "Cube 2$"        , "Cube 2: Sauerbraten"        ,}
} ,
{
name        = "Gimp",
init        = false                                          ,
position    = 10                                             ,
exclusive   = false                                          ,
--icon        = utils.tools.invertedIconPath("image.png")      ,
layout      = awful.layout.tile                              ,
nmaster     = 1                                              ,
incncol     = 10                                             ,
ncol        = 2                                              ,
mwfact      = 0.00                                           ,
class       = {}
} ,
{
name        = "MediaCenter",
init        = false                                           ,
exclusive   = false                                          ,
--icon        = utils.tools.invertedIconPath("video.png")      ,
max_clients = 5                                              ,
--screen      = config.scr.media or config.scr.pri   ,
init        = "mythfrontend"                                 ,
layout      = awful.layout.suit.tile                         ,
class       = {"mythfrontend"  , "xbmc" , "xbmc.bin"        ,}
} ,
}

tyrannical.properties.intrusive = {
"ksnapshot"     , "pinentry"       , "gtksu"     , "kcalc"        , "xcalc"           ,
"feh"           , "Gradient editor", "About KDE" , "Paste Special", "Background color",
"kcolorchooser" , "plasmoidviewer" , "plasmaengineexplorer" , "Xephyr" , "kruler"     ,
"yakuake"       ,
"sflphone-client-kde", "sflphone-client-gnome", "xev",
}
tyrannical.properties.floating = {
"MPlayer"      , "pinentry"        , "ksnapshot"  , "pinentry"     , "gtksu"          ,
"xine"         , "feh"             , "kmix"       , "kcalc"        , "xcalc"          ,
"yakuake"      , "Select Color$"   , "kruler"     , "kcolorchooser", "Paste Special"  ,
"New Form"     , "Insert Picture"  , "kcharselect", "mythfrontend" , "plasmoidviewer" ,
"sflphone-client-kde", "sflphone-client-gnome", "xev",
amarok = false , "yakuake", "Conky"
}

tyrannical.properties.ontop = {
"Xephyr"       , "ksnapshot"       , "kruler"
}

tyrannical.properties.focusable = {
conky=false
}


tyrannical.properties.no_autofocus = {
"Conky"
}

tyrannical.properties.below = {
"Conky"
}