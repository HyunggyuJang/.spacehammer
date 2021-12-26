(local homedir (os.getenv "HOME"))
(local customdir (.. homedir "/.spacehammer"))
(tset package :path (.. package.path ";" customdir "/?.lua;" customdir "/?/init.lua"))
(tset package :cpath (.. package.cpath ";" customdir "/?.so;" customdir "/?/init.lua"))
