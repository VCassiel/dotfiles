"---------------------
"   VINIFERA :: N/VIM
"---------------------
" Work in Progress

hi clear
syntax reset
let g:colors_name = "vinifera"

hi Normal            guifg=#e7e6f5 guibg=#191924 gui=NONE

hi PreProc           guifg=#e4c1f9 guibg=NONE gui=bold
hi Include           guifg=#e4c1f9 guibg=NONE gui=bold
hi DiffText          guifg=#e4c1f9 guibg=NONE
hi Function          guifg=#e4c1f9 guibg=NONE
hi ErrorMsg          guifg=#d2235f guibg=NONE gui=bold
hi WarningMsg        guifg=#d2235f guibg=NONE
hi Exception         guifg=#d2235f guibg=NONE
hi Error             guifg=#d2235f guibg=NONE gui=bold
hi DiffDelete        guifg=#d2235f guibg=NONE
hi GitGutterDelete   guifg=#d2235f guibg=NONE
hi Type              guifg=#79a9ec guibg=NONE
hi EndOfBuffer       guifg=#a0197d guibg=NONE

hi Pmenu             guifg=#e7e6f5 guibg=#35334a 
hi PmenuSel          guifg=#35334a guibg=#d0cdf4
hi PmenuSbar         guibg=#35334a guifg=NONE
hi PmenuThumb        guibg=#7880b5 guifg=NONE

hi Identifier        guifg=#99d2e0 guibg=NONE
hi Keyword           guifg=#99d2e0 guibg=NONE
hi Conceal           guifg=#99d2e0 guibg=NONE

hi Todo              guifg=#e882b5 guibg=NONE
hi Special           guifg=#d0cdf4 guibg=NONE
hi IncSearch         guifg=#9790f5 guibg=NONE
hi MatchParen        guifg=#9790f5 guibg=#2a273f gui=bold
hi Title             guifg=#f6d8ae guibg=NONE
hi Debug             guifg=#f6d8ae guibg=NONE
hi SpecialChar       guifg=#f6d8ae guibg=NONE
hi Label             guifg=#f6d8ae guibg=NONE
hi Delimiter         guifg=#f6d8ae guibg=NONE
hi Define            guifg=#f6d8ae guibg=NONE
hi Tag               guifg=#d0cdf4 guibg=NONE
hi Folded            guifg=#f6d8ae guibg=#1e1c22
hi FoldColumn        guifg=#f6d8ae guibg=NONE

hi Macro             guifg=#79a9ec guibg=NONE
hi Directory         guifg=#79a9ec guibg=NONE
hi markdownLinkText  guifg=#79a9ec guibg=NONE
hi Boolean           guifg=#79a9ec guibg=NONE
hi Storage           guifg=#79a9ec guibg=NONE

hi String            guifg=#fcefef guibg=NONE
hi Constant          guifg=#fcefef guibg=NONE
hi Number            guifg=#fcefef guibg=NONE
hi Statement         guifg=#f6d8ae guibg=NONE gui=NONE
hi Operator          guifg=#d0cdf4 guibg=NONE

hi StatusLineNC      guibg=#3e8fb0 guifg=#fcefef
hi SignColumn        guifg=#d2235f guibg=NONE
hi NonText           guifg=#191924 guibg=NONE
hi Whitespace        guifg=#191924 guibg=NONE
hi Search            guifg=#d0cdf4 guibg=NONE gui=bold
hi StatusLine        guifg=#d0cdf4 guibg=#706e96
hi SpecialComment    guifg=#9fa0c3 guibg=NONE
hi Comment           guifg=#7880b5 guibg=NONE
 
hi CursorLine        guibg=#35334a guifg=NONE
hi CursorColumn      guibg=#35334a guifg=NONE
hi CursorLineNr      guifg=#d0cdf4 guibg=NONE
hi TabLineFill       guibg=#706e96
hi VertSplit         guifg=#706e96 guibg=NONE
hi Visual            guifg=#191924 guibg=#d0cdf4
hi TabLine           guifg=#706e96 guibg=NONE
hi LineNr            guifg=#7880b5 guibg=NONE
