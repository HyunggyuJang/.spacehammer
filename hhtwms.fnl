(global hhtwm (require :hhtwm))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Swap Windows
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fn swap-window
  [arrow]
  "
  Swap window using hhtwm.
  "
  (let [dir {:h "west" :j "south" :k "north" :l "east"}
        win (hs.window.focusedWindow)]
    (hhtwm.swapInDirection win (. dir arrow))))

(fn swap-window-left
  []
  (swap-window :h))

(fn swap-window-above
  []
  (swap-window :j))

(fn swap-window-below
  []
  (swap-window :k))

(fn swap-window-right
  []
  (swap-window :l))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Spaces
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fn throw-window
  [index]
  "
  Throw window to space using hhtwm
  "
  (let [win (hs.window.focusedWindow)]
    (hhtwm.throwToSpace win index)))

(fn throw-window1
  []
  (throw-window 1))

(fn throw-window2
  []
  (throw-window 2))

(fn throw-window3
  []
  (throw-window 3))

(fn throw-window4
  []
  (throw-window 4))

(fn throw-window5
  []
  (throw-window 5))

(fn throw-window6
  []
  (throw-window 6))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tiling
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(hhtwm.setLayout "main-left")
(hhtwm.start)

{: swap-window-above
 : swap-window-below
 : swap-window-left
 : swap-window-right
 : throw-window1
 : throw-window2
 : throw-window3
 : throw-window4
 : throw-window5
 : throw-window6}
