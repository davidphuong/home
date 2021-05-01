set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-solarized8'
Plug 'rbong/vim-crystalline'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'derekwyatt/vim-fswitch'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Turn on that syntax highlighting
syntax enable

" Why is this not a default
set hidden

" Highlight search terms
set hlsearch

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu. See :help 'wildmenu'
set wildmenu

" Show line numbers
set relativenumber
set number

" Incrementally match the search
set incsearch

" Turn on spell checking
set spell

" Display long lies as just one line (i.e. you have to scroll horizontally to
" see the entire line)
" set nowrap
set wrap

" This shows what you are typing as a command.
set showcmd

" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>

" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>

" Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>

" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Close the window below this one
noremap <silent> ,cj :wincmd j<cr>:close<cr>

" Close the window above this one
noremap <silent> ,ck :wincmd k<cr>:close<cr>

" Close the window to the left of this one
noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr>

" Close the current window
noremap <silent> ,cc :close<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J

" <C-l> clears and redraws the screen. This mapping builds on top of the usual
" behavior.
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Solarized Plugin
" Color scheme settings
se t_Co=256
let g:solarized_termcolors=16
set background=dark
colorscheme solarized8_high

" Crystalline Plugin
function! StatusLine(...)
  return crystalline#mode() . crystalline#right_mode_sep('')
        \ . ' %f%h%w%m%r ' . crystalline#right_sep('', 'Fill') . '%='
        \ . crystalline#left_sep('', 'Fill') . ' %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
endfunction
let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_theme = 'onedark'
set laststatus=2

" Session
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" Set local working directory to the directory of the current file
let g:ctrlp_working_path_mode='ra'

" Gutentags Plugin
let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_project_root = ['Makefile', '.git']

" FSwitch Plugin
nmap <C-k> :FSHere<CR>

" Map ESC to jj
inoremap ff <esc>
vnoremap ff <esc>
