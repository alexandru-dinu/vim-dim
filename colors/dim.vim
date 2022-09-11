hi clear

if exists("syntax_on")
  syntax reset
endif

exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "dim"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
hi DiffAdd        ctermfg=0    ctermbg=2
hi DiffChange     ctermfg=0    ctermbg=3
hi DiffDelete     ctermfg=0    ctermbg=1
hi DiffText       ctermfg=0    ctermbg=11   cterm=bold

hi Visual         ctermfg=7    ctermbg=8    cterm=none

" hi search matches in black, with a yellow background
hi Search         ctermfg=0    ctermbg=11

" Dim line numbers, comments, color columns, the status line, splits and sign
" columns.
if &background == "light"
  hi LineNr       ctermfg=7
  hi CursorLineNr ctermfg=8
  hi Comment      ctermfg=7
  hi ColorColumn  ctermfg=8 ctermbg=7
  hi Folded       ctermfg=8 ctermbg=7
  hi FoldColumn   ctermfg=8 ctermbg=7
  hi Pmenu        ctermfg=0 ctermbg=7
  hi PmenuSel     ctermfg=7 ctermbg=0
  hi SpellCap     ctermfg=8 ctermbg=7
  hi StatusLine   ctermfg=0 ctermbg=7 cterm=bold
  hi StatusLineNC ctermfg=8 ctermbg=7 cterm=NONE
  hi VertSplit    ctermfg=8 ctermbg=7 cterm=NONE
  hi SignColumn             ctermbg=7
else
  hi LineNr       ctermfg=8
  hi CursorLineNr ctermfg=7
  hi Comment      ctermfg=8
  hi ColorColumn  ctermfg=7  ctermbg=8
  hi Folded       ctermfg=7  ctermbg=8
  hi FoldColumn   ctermfg=7  ctermbg=8
  hi Pmenu        ctermfg=15 ctermbg=8
  hi PmenuSel     ctermfg=8  ctermbg=15
  hi SpellCap     ctermfg=7  ctermbg=8
  hi StatusLine   ctermfg=15 ctermbg=8 cterm=bold
  hi StatusLineNC ctermfg=7  ctermbg=8 cterm=NONE
  hi VertSplit    ctermfg=7  ctermbg=8 cterm=NONE
  hi SignColumn              ctermbg=8
endif

hi link DimFzfFg     Normal
hi link DimFzfBg     Normal
hi link DimFzfFgPlus PmenuSel
hi link DimFzfBgPlus PmenuSel
hi link DimFzfInfo   Comment

hi DimFzfHl      ctermfg=2
hi DimFzfPrompt  ctermfg=12
hi DimFzfPointer ctermfg=1
hi DimFzfMarker  ctermfg=9

let g:fzf_colors = { 'fg':      ['fg', 'DimFzfFg'],
                   \ 'bg':      ['bg', 'DimFzfBg'],
                   \ 'hl':      ['fg', 'DimFzfHl'],
                   \ 'fg+':     ['fg', 'DimFzfFgPlus'],
                   \ 'bg+':     ['bg', 'DimFzfbgPlus'],
                   \ 'hl+':     ['fg', 'DimFzfHl'],
                   \ 'info':    ['fg', 'DimFzfInfo'],
                   \ 'prompt':  ['fg', 'DimFzfPrompt'],
                   \ 'pointer': ['fg', 'DimFzfPointer'],
                   \ 'marker':  ['fg', 'DimFzfMarker']}
