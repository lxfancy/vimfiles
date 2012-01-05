" Author: muzuiget (muzuiget@gmail.com)
" Last Change: 2011-11-08

" Retset
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "firefly"

" General colors
highlight Normal guifg=#ffffff guibg=#000000 ctermfg=231 ctermbg=NONE
highlight Visual guibg=#2d498b ctermbg=25
highlight CursorLine gui=NONE cterm=NONE
highlight LineNr guifg=#666666 ctermfg=241
highlight Search guibg=#ffff00 ctermbg=226
highlight StatusLine guifg=#5fdfff guibg=#444444 gui=bold ctermfg=81 ctermbg=238 cterm=bold
highlight StatusLineNC guifg=#f6f3e8 guibg=#444444 gui=NONE ctermfg=255 ctermbg=238 cterm=NONE
highlight Directory guifg=#5fdfff gui=bold ctermfg=81 cterm=bold
highlight Identifier guifg=#ff8787 ctermfg=210
highlight DiffAdd guibg=#13354a ctermbg=236
highlight DiffChange guifg=#bcbcbc guibg=#4c4745 ctermfg=250 ctermbg=238
highlight DiffDelete guifg=#960050 guibg=#1e0010 ctermfg=125 ctermbg=232
highlight DiffText guibg=#4c4745 ctermbg=238
highlight VertSplit guifg=#808080 gui=bold ctermfg=244 cterm=bold
highlight ColorColumn guibg=#767676 ctermbg=243
highlight Title guifg=#ffffff gui=bold ctermfg=231 cterm=bold
highlight Subtitle guifg=#87ff00 gui=bold ctermfg=118 cterm=bold

" Syntax highlighting
highlight Comment guifg=#afdfdf ctermfg=152
highlight Constant guifg=#af5fff gui=bold ctermfg=135 cterm=bold
highlight Function guifg=#5fdfff ctermfg=81
highlight Include guifg=#ffdf5f gui=bold ctermfg=221 cterm=bold
highlight String guifg=#afff00 ctermfg=154
highlight Statement guifg=#ffa500 gui=bold ctermfg=214 cterm=bold
highlight StorageClass guifg=#ff8700 ctermfg=208
highlight Type guifg=#ffff5f gui=bold ctermfg=227 cterm=bold
highlight Todo guifg=#d0d0d0 guibg=NONE gui=bold ctermfg=252 ctermbg=NONE cterm=bold

" Python
highlight pythonBuiltin guifg=#FFA500
