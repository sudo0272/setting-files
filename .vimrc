call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'

Plug 'mattn/emmet-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'chriskempson/vim-tomorrow-theme'
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-fugitive'

call plug#end()

let g:airline#extensions#tabline#enabled = 1

" onedark settings
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    " For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Set cursor to block
set guicursor=
" Set number row to hybrid mode
set number
" Sync with system clipboard
set clipboard=unnamedplus
" tab settings
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
" Search settings
set hlsearch
set incsearch
" Text render settings
set encoding=utf8
syntax on
colorscheme Tomorrow-Night-Bright
" Miscellaneous settings
set confirm

" Startup settings
autocmd VimEnter * NERDTree
autocmd VimEnter * CocEnable
autocmd VimEnter * AirlineTheme base16_bright
autocmd VimEnter * IndentLinesEnable
autocmd VimEnter * winc w

" Use Ctrl + j/k to scroll through autocomplete list
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("k"))

