"################################################
"#              __                              # 
"#      __  __ /\_\    ___ ___   _ __   ___     #
"#     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\   #
"#   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/   #
"#  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\  #
"#  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/  #
"#                                              #
"#    customized .vimrc file (ck, Sept2014)     #
"#    include in $HOME/.vimrc with:             #
"#    source $HOME/myvimrc/.vimrc               #
"#                                              #
"################################################


"once .vimrc is created, syntax highlighting in vim is off. Turning it on explicitly.
syntax on

"mapping CTRL+] and control+T (follow help hyperlink +
" jump back to last page) to ü and Ü (German keyboard)
nnoremap ü <C-]>
nnoremap ü <C-]>

"show linenumber in the right corner
set ruler

"extend those brackets recognized by the % command (adding xml-like brackets)
set matchpairs+=<:>

"when in insert mode, allow to delete more than just the modifications from current edit
set backspace=indent,eol,start

"allow more intuitive regex when searching (i.e. \d+ instead of \d\+)
"nnoremap /v /\v

"disable case sensitive searching
set ignorecase
set smartcase

"enable search preview
:set incsearch

"enable search highlighting
:set hlsearch

"remapping Backspace key in normal mode to un-highlight the last search results
nmap <silent> <BS> :nohlsearch<CR>

"persistent undo files (save in the userprofile, not next to each file)
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.VIM_UNDO_FILES
endif

"increase max number of possible undos (standard: 1K)
set undolevels=10000

"file browser like view when using i.e. :edit
set wildmode=list:longest,full

"change function detection to Python-style
set define=^\s*define

"enable omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"use Windows clipboard
set clipboard=unnamed

"preparations for dragvisuals plugin (shift text blocks with SHIFT + Cursor)
runtime $HOME/myvimrc/plugin/dragvisuals.vim
vmap  <expr>  <S-LEFT>   DVB_Drag('left')
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
vmap  <expr>  <S-DOWN>   DVB_Drag('down')
vmap  <expr>  <S-UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()
set rtp+=$HOME/myvimrc

