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
;; Tiling
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(hhtwm.setLayout "main-left")
(hhtwm.start)

{: swap-window-above
 : swap-window-below
 : swap-window-left
 : swap-window-right}
