(import-macros {: set! : map!} :macros)

(set! guifont "monospace:h11")
;; lina's comfortable keybinds
(map! [niv] "<C-s>" "<esc><cmd>w<cr>") ;; Ctrl-S: Save
(map! [niv] "<C-z>" "<C-O>u")          ;; Ctrl-Z: Undo
(map! [niv] "<C-y>" "<C-O><C-r>")       ;; Ctrl-Y: Redo

;; neovide options
(when (= 1 (vim.fn.exists "g:neovide"))
    (tset vim.g :neovide_transparency 0.92)
    (tset vim.g :neovide_refresh_rate 140))
