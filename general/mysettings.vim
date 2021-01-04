" ctrl space
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1


" theme color
if (has("termguicolors"))
 set termguicolors
endif

" set color for css file
lua require 'colorizer' .setup()

set mouse=n
set mouse=a                            " Enable your mouse
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cursorline                          " Enable highlighting of the current line
set number
set relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" vim-ctrlspace
set nocompatible
set hidden
set encoding=utf-8
set showtabline=1
let g:CtrlSpaceDefaultMappingKey = "<C-space> "

let mapleader=' '

" open new split panes to right and below
set splitright
"set splitbelow

" Aoto Pair
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" file explore
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" file searching
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpendTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" NERDTree
let NERDTreeQuitOnOpen=1
nmap <F2> :NERDTreeToggle<CR>
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
