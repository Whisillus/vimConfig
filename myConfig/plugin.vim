
" using vim-plug manage the plugins
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
" Plug 'xuyuanp/nerdtree-git-plugin', {'on': 'NERDTreeToggle'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'skywind3000/asynctasks.vim'
" Plug 'skywind3000/asyncrun.vim'
Plug 'petRUShka/vim-opencl'


Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'haya14busa/incsearch.vim'
Plug 'voldikss/vim-floaterm'
Plug 'archibate/QFixToggle', {'on': 'QFix'}
Plug 'preservim/nerdcommenter'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'sickill/vim-monokai'

call plug#end()

