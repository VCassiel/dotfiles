"------------------
"   SPICE :: N/VIM
"------------------

hi clear
syntax reset
let g:colors_name = "spice"

hi Normal            guifg=#f4f2f2 guibg=#1e1c22 gui=NONE

hi PreProc           guifg=#05b9a5 guibg=NONE gui=bold
hi Include           guifg=#05b9a5 guibg=NONE gui=bold
hi DiffText          guifg=#05b9a5 guibg=NONE
hi Function          guifg=#06efd4 guibg=NONE
hi ErrorMsg          guifg=#ee6352 guibg=NONE gui=bold
hi WarningMsg        guifg=#ee6352 guibg=NONE
hi Exception         guifg=#ee6352 guibg=NONE
hi Error             guifg=#ee6352 guibg=NONE gui=bold
hi DiffDelete        guifg=#ee6352 guibg=NONE
hi GitGutterDelete   guifg=#ee6352 guibg=NONE
hi Type              guifg=#9ccfd8 guibg=NONE
hi EndOfBuffer       guifg=#ee6352 guibg=NONE

hi Pmenu             guifg=#ffe2d1 guibg=#312a32 
hi PmenuSel          guifg=#312a32 guibg=#ffe2d1
hi PmenuSbar         guibg=#312a32 guifg=NONE
hi PmenuThumb        guibg=#443742 guifg=NONE

hi Identifier        guifg=#76b7d0 guibg=NONE
hi Keyword           guifg=#9ccfd8 guibg=NONE
hi Conceal           guifg=#9ccfd8 guibg=NONE

hi Todo              guifg=#ee6352 guibg=NONE
hi Special           guifg=#ffe2d1 guibg=NONE
hi IncSearch         guifg=#ffb49a guibg=NONE
hi MatchParen        guifg=#ffb49a guibg=#443742 gui=bold
hi Title             guifg=#ffbc79 guibg=NONE
hi Debug             guifg=#ffbc79 guibg=NONE
hi SpecialChar       guifg=#ffbc79 guibg=NONE
hi Label             guifg=#ffbc79 guibg=NONE
hi Delimiter         guifg=#ffbc79 guibg=NONE
hi Define            guifg=#ffbc79 guibg=NONE
hi Tag               guifg=#ffbc79 guibg=NONE
hi Folded            guifg=#ffbc79 guibg=#1e1c22
hi FoldColumn        guifg=#ffbc79 guibg=NONE

hi Macro             guifg=#5fb1bf guibg=NONE
hi Directory         guifg=#5fb1bf guibg=NONE
hi markdownLinkText  guifg=#5fb1bf guibg=NONE
hi Boolean           guifg=#5fb1bf guibg=NONE
hi Storage           guifg=#5fb1bf guibg=NONE

hi String            guifg=#ebbcba guibg=NONE
hi Constant          guifg=#ebbcba guibg=NONE
hi Number            guifg=#ea9a97 guibg=NONE
hi Statement         guifg=#ffbc79 guibg=NONE gui=NONE
hi Operator          guifg=#ffe2d1 guibg=NONE

hi StatusLineNC      guibg=#3e8fb0 guifg=#f4f2f2
hi SignColumn        guifg=#ee6352 guibg=NONE
hi NonText           guifg=#1e1c22 guibg=NONE
hi Whitespace        guifg=#1e1c22 guibg=NONE
hi Search            guifg=#ffe2d1 guibg=NONE gui=bold
hi StatusLine        guifg=#ffe2d1 guibg=#706e96
hi SpecialComment    guifg=#a6958f guibg=NONE
hi Comment           guifg=#a6958f guibg=NONE
 
hi CursorLine        guibg=#312a32 guifg=NONE
hi CursorColumn      guibg=#312a32 guifg=NONE
hi CursorLineNr      guifg=#ffe2d1 guibg=NONE
hi TabLineFill       guibg=#706e96 guibg=NONE
hi VertSplit         guifg=#706e96 guibg=NONE
hi Visual            guifg=#1e1c22 guibg=#ffe2d1
hi TabLine           guifg=#706e96 guibg=NONE gui=NONE
hi LineNr            guifg=#706e96 guibg=NONE
