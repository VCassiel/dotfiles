"-----------------------
"   CATPPUCCIN :: N/VIM
"-----------------------
" Modified from the original

hi clear
syntax reset
let g:colors_name = "catppuccin"

hi Normal           guifg=#D9E0EE guibg=#131020  
hi NormalNC         guifg=#D9E0EE guibg=#131020  
hi NormalSB         guifg=#D9E0EE guibg=#161320  
hi NormalFloat      guifg=#D9E0EE guibg=#1A1826  
hi FloatBorder      guifg=#96CDFB
hi Question         guifg=#96CDFB

hi StatusLine       guifg=#D9E0EE guibg=#1A1826  
hi StatusLineNC     guifg=#575268 guibg=#1A1826  

hi Comment          guifg=#6E6C7E
hi ColorColumn      guibg=#302D41
hi Conceal          guifg=#988BA2
hi Cursor           guifg=#131020 guibg=#F2CDCD 
hi lCursor          guifg=#131020 guibg=#F2CDCD 
hi CursorIM         guifg=#131020 guibg=#F2CDCD 
hi CursorColumn     guibg=#302D41
hi CursorLine       guibg=#302D41
hi CursorLineNr     guifg=#F2CDCD
hi LineNr           guifg=#575268

hi VertSplit        guifg=#161320
hi Visual           guibg=#575268 gui=bold  
hi VisualNOS        guibg=#575268 gui=bold  
hi Whitespace       guifg=#575268

hi EndOfBuffer      guifg=#F2CDCD

hi Directory        guifg=#96CDFB
hi Folded           guifg=#96CDFB guibg=#575268  
hi FoldColumn       guibg=#131020 guifg=#6E6C7E  
hi SignColumn       guibg=#131020 guifg=#575268  
hi SignColumnSB     guibg=#161320 guifg=#575268  
hi Substitute       guibg=#575268 guifg=#F5C2E7  

hi Error            guifg=#F28FAD
hi ErrorMsg         guifg=#F28FAD
hi MsgArea          guifg=#D9E0EE
hi MoreMsg          guifg=#96CDFB
hi WarningMsg       guifg=#FAE3B0
hi ModeMsg          guifg=#D9E0EE gui=bold  

hi Pmenu            guibg=#302D41 guifg=#C3BAC6  
hi PmenuSel         guifg=#D9E0EE guibg=#575268 gui=bold
hi PmenuSbar        guibg=#575268
hi PmenuThumb       guibg=#6E6C7E

hi PreProc          guifg=#89DCEB
hi Operator         guifg=#f5e0dc
hi Keyword          guifg=#F5C2E7
hi Include          guifg=#F5C2E7
hi Constant         guifg=#FAE3B0
hi String           guifg=#ABE9B3
hi Character        guifg=#B5E8E0
hi Number           guifg=#B5E8E0
hi Float            guifg=#B5E8E0
hi Boolean          guifg=#FAE3B0
hi Identifier       guifg=#F2CDCD
hi Function         guifg=#96CDFB
hi Statement        guifg=#DDB6F2
hi Conditional      guifg=#F28FAD
hi Special          guifg=#F5C2E7
hi Type             guifg=#96CDFB
hi Structure        guifg=#FAE3B0
hi Typedef          guifg=#FAE3B0

hi Search           guibg=#575268 guifg=#C9CBFF gui=bold  
hi IncSearch        guibg=#C9CBFF guifg=#575268  
hi MatchParen       guifg=#FAE3B0 gui=bold  

hi NonText          guifg=#6E6C7E
hi QuickFixLine     guibg=#575268 gui=bold  
hi SpecialKey       guifg=#D9E0EE
hi TabLine          guibg=#1A1826 guifg=#575268  
hi TabLineSel       guifg=#ABE9B3 guibg=#575268  
hi Title            guifg=#96CDFB gui=bold  
hi Repeat           guifg=#F28FAD
hi Label            guifg=#FAE3B0
hi StorageClass     guifg=#FAE3B0
hi Todo             guibg=#FAE3B0 guifg=#131020 gui=bold  
hi htmlH1           guifg=#F5C2E7 gui=bold 
hi htmlH2           guifg=#96CDFB gui=bold 

hi diffAdded        guifg=#ABE9B3
hi diffRemoved      guifg=#F28FAD
hi diffChanged      guifg=#FAE3B0
hi diffOldFile      guifg=#FAE3B0
hi diffNewFile      guifg=#FAE3B0
hi diffFile         guifg=#96CDFB
hi diffLine         guifg=#6E6C7E
hi diffIndexLine    guifg=#F5C2E7
hi DiffAdd          guifg=#ABE9B3 guibg=#131020  
hi DiffChange       guifg=#FAE3B0 guibg=#131020  
hi DiffDelete       guifg=#F28FAD guibg=#131020  
hi DiffText         guifg=#96CDFB guibg=#131020  
