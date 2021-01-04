
set shell=/bin/zsh

" format code
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" coc explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

let g:elite_mode=1                      " Enable arrows"

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

" Save
nnoremap <leader>w :w<CR> 
" New tab
"nnoremap <leader>t :tabnew<CR>
nnoremap <leader>t :vnew<CR>

" Change 2 split windows from vert to horiz or vice versa
map <Leader>th <C-W>t<C-W>H
map <Leader>tk <C-W>t<C-W>K

" Use shift + hjkl to resize windows
nnoremap <S-j>    :resize -2<CR>
nnoremap <S-k>    :resize +2<CR>
nnoremap <S-h>    :vertical resize -2<CR>
nnoremap <S-l>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <S-q> :bd<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

 "Better tabbing
vnoremap < <gv
vnoremap > >gv

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap ee <Esc>

" switching between panels
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
