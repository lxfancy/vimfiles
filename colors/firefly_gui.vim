" Author: muzuiget (muzuiget@gmail.com)
" Last Change: 2011-11-08

" Retset
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "firefly_gui"

" General colors
highlight Normal guifg=#FFFFFF guibg=#000000
highlight Visual guibg=#2D498B
highlight CursorLine gui=NONE
highlight LineNr guifg=#666666
highlight Search guibg=#FFFF00
highlight StatusLine guifg=#5FDFFF guibg=#444444 gui=BOLD
highlight StatusLineNC guifg=#F6F3E8 guibg=#444444 gui=NONE
highlight Directory guifg=#5FDFFF gui=BOLD
highlight Identifier guifg=#FF8787
highlight DiffAdd guibg=#13354A
highlight DiffChange guifg=#BCBCBC guibg=#4C4745
highlight DiffDelete guifg=#960050 guibg=#1E0010
highlight DiffText guibg=#4C4745
highlight VertSplit guifg=#808080 gui=BOLD
highlight ColorColumn guibg=#767676
highlight Title guifg=#FFFFFF gui=BOLD
highlight Subtitle guifg=#87FF00 gui=BOLD

" Syntax highlighting
highlight Comment guifg=#AFDFDF
highlight Constant guifg=#AF5FFF gui=BOLD
highlight Function guifg=#5FDFFF
highlight Include guifg=#FFDF5F gui=BOLD
highlight String guifg=#AFFF00
highlight Statement guifg=#FFA500 gui=BOLD
highlight StorageClass guifg=#FF8700
highlight Type guifg=#FFFF5F gui=BOLD
highlight Todo guifg=#D0D0D0 guibg=NONE gui=BOLD

" Python
highlight pythonBuiltin guifg=#FFA500
