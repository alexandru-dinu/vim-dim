exec "source " . expand('<sfile>:p:h') . "/dim.vim"

let colors_name = "grim"

if &background == "light"
  hi Constant   ctermfg=8
  hi Identifier ctermfg=0
  hi PreProc    ctermfg=0 cterm=bold
  hi Special    ctermfg=0
  hi Statement  ctermfg=0 cterm=bold
  hi Title      ctermfg=0 cterm=bold
  hi Type       ctermfg=0
  hi Underlined ctermfg=0 cterm=underline
else
  hi Constant   ctermfg=7
  hi Identifier ctermfg=15
  hi PreProc    ctermfg=15 cterm=bold
  hi Special    ctermfg=15
  hi Statement  ctermfg=15 cterm=bold
  hi Title      ctermfg=15 cterm=bold
  hi Type       ctermfg=15
  hi Underlined ctermfg=15 cterm=underline
end
