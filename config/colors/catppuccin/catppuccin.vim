"-----------------------
"   CATPPUCCIN :: N/VIM
"-----------------------
" Modified from the original

hi clear
syntax reset
let g:colors_name = "catppuccin"

hi Normal            guifg=#d9e0ee guibg=#1A1826 gui=NONE

hi PreProc           guifg=#F2CDCD guibg=NONE gui=bold
hi Include           guifg=#F2CDCD guibg=NONE gui=bold
hi DiffText          guifg=#F2CDCD guibg=NONE
hi Function          guifg=#F8BD96 guibg=NONE
hi ErrorMsg          guifg=#F28FAD guibg=NONE gui=bold
hi WarningMsg        guifg=#e8a2af guibg=NONE
hi Exception         guifg=#F28FAD guibg=NONE
hi Error             guifg=#F28FAD guibg=NONE gui=bold
hi DiffDelete        guifg=#e8a2af guibg=NONE
hi GitGutterDelete   guifg=#e8a2af guibg=NONE
hi Type              guifg=#96CDFB guibg=NONE
hi EndOfBuffer       guifg=#F2CDCD guibg=NONE

hi Pmenu             guifg=#f5e0dc guibg=#302D41 
hi PmenuSel          guifg=#302D41 guibg=#f5e0dc
hi PmenuSbar         guibg=#302D41 guifg=NONE
hi PmenuThumb        guibg=#575268 guifg=NONE

hi Identifier        guifg=#89DCEB guibg=NONE
hi Keyword           guifg=#96CDFB guibg=NONE
hi Conceal           guifg=#96CDFB guibg=NONE

hi Todo              guifg=#e8a2af guibg=NONE
hi Special           guifg=#f5e0dc guibg=NONE
hi IncSearch         guifg=#ABE9B3 guibg=NONE
hi MatchParen        guifg=#ffb49a guibg=#1E1E2E gui=bold
hi Title             guifg=#B5E8E0 guibg=NONE
hi Debug             guifg=#B5E8E0 guibg=NONE
hi SpecialChar       guifg=#B5E8E0 guibg=NONE
hi Label             guifg=#B5E8E0 guibg=NONE
hi Delimiter         guifg=#B5E8E0 guibg=NONE
hi Define            guifg=#B5E8E0 guibg=NONE
hi Tag               guifg=#B5E8E0 guibg=NONE
hi Folded            guifg=#B5E8E0 guibg=#1A1826
hi FoldColumn        guifg=#B5E8E0 guibg=NONE

hi Macro             guifg=#89DCEB guibg=NONE
hi Directory         guifg=#89DCEB guibg=NONE
hi markdownLinkText  guifg=#89DCEB guibg=NONE
hi Boolean           guifg=#ABE9B3 guibg=NONE
hi Storage           guifg=#89DCEB guibg=NONE

hi String            guifg=#C9CBFF guibg=NONE
hi Constant          guifg=#C9CBFF guibg=NONE
hi Number            guifg=#C9CBFF guibg=NONE
hi Statement         guifg=#FAE3B0 guibg=NONE gui=NONE
hi Operator          guifg=#f5e0dc guibg=NONE

hi SignColumn        guifg=#e8a2af guibg=NONE
hi NonText           guifg=#1A1826 guibg=NONE
hi Whitespace        guifg=#1A1826 guibg=NONE
hi Search            guifg=#f5e0dc guibg=NONE gui=bold
hi StatusLine        guifg=#f5e0dc guibg=#706e96
hi SpecialComment    guifg=#6E6C7E guibg=NONE
hi Comment           guifg=#6E6C7E guibg=NONE
 
hi CursorLine        guibg=#302D41 guifg=NONE
hi CursorColumn      guibg=#302D41 guifg=NONE
hi CursorLineNr      guifg=#F2CDCD guibg=NONE
hi TabLineFill       guibg=#302D41 guibg=NONE
hi VertSplit         guifg=#302D41 guibg=NONE
hi Visual            guifg=#1A1826 guibg=#f5e0dc
hi TabLine           guifg=#302D41 guibg=NONE gui=NONE
hi LineNr            guifg=#6E6C7E guibg=NONE
