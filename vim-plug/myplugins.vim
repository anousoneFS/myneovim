" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'airblade/vim-rooter'
    " Theme color 
    Plug 'dracula/vim'
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
    Plug 'whatyouhide/vim-gotham'
    Plug 'ajmwagar/vim-deus'
    Plug 'christophermca/meta5'
    Plug 'christophermca/meta5'
    Plug 'rakr/vim-one'
    Plug 'AlessandroYorba/Sierra'
    Plug 'sainnhe/sonokai'
    Plug 'fcpg/vim-orbital'
    Plug 'arcticicestudio/nord-vim'

    "Format code
    Plug 'junegunn/vim-easy-align'

    "Plug 'kyoz/purify'
    Plug 'kyoz/purify', { 'rtp': 'vim' }
    " file explorer
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    " file searching
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Stable version of coc 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
    " Syntax highlign for typescript
    "Plug 'leafgarland/typescrip-vim'
    Plug 'peitalin/vim-jsx-typescript'
        
    Plug 'jiangmiao/auto-pairs'
    Plug 'norcalli/nvim-colorizer.lua'
    " status line
    Plug 'vim-ctrlspace/vim-ctrlspace'   
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'sirver/ultisnips'
    Plug 'preservim/nerdcommenter'

    Plug 'roxma/nvim-yarp'
    Plug 'ncm2/ncm2'
    " Fast python completion (use ncm2 if you want type info or snippet support)
    Plug 'HansPinckaers/ncm2-jedi'
    " Words in buffer completion
    Plug 'ncm2/ncm2-bufword'
    " Filepath completion
    Plug 'ncm2/ncm2-path'

call plug#end()"Config Section

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


