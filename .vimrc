" Vundle Settings
filetype off " required from vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'kien/ctrlp.vim'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'
Bundle 'Lokaltog/vim-powerline'
Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-fugitive'

" Bundle 'vim-taglist'
" Bundle 'vim-scripts/AutoTag'

"General Settings

" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

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

" set foldcolumn=3
set foldmethod=marker

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Show line numbers
set number

" Incrementally match the search
set incsearch

" Turn on spell checking
set spell

" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

" Display long lies as just one line (i.e. you have to scroll horizontally to
" see the entire line)
set nowrap

" This shows what you are typing as a command.
set showcmd

" Colorscheme Solarized Options

se t_Co=16

" Home Computer Settings
 let g:solarized_termcolors=16
 set background=light

" Laptop Settings
" let g:solarized_termcolors=256|16
" set background=dark

colorscheme solarized

" Tabs and Whitespace

" Tab size and fixes double tab after { [ENTER]
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Status Bar

" Status Line
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

" YouCompleteMe options

" Normally, YCM searches for a '.ycm_extra_conf.py' file
" for compilation flags but if not found, this option specifies a fallback
" path to a config file which is used if no '.ycm_extra_conf.py' is found. 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" force YCM to immediately recompile your file and display any new
" diagnostics it encounters.
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" When this option is set to 1, YCM will auto-close the preview window
" after the user leaves insert mode.
" let g:ycm_autoclose_preview_window_after_insertion=1

" When this option is set to 1, YCM will auto-close the preview window
" after the user accepts the offered completion string.
let g:ycm_autoclose_preview_window_after_completion=1

" delimitMate options

" Makes gap after pressing { [ENTER]
let delimitMate_expand_cr = 1

" vim-session options

" saves editing session before quitting Vim
let g:session_autosave=1

" restore default editing session
let g:session_autoload=1

" Mappings

" Window Management Mappings

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

" General Mappings

" <C-l> clears and redraws the screen. This mapping builds on top of the usual
" behavior.
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

" CTags Mappings

" Open the definition in a vertical split
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Tabularize Mappings
let mapleader=','
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>

nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>

nmap <Leader>a) :Tabularize /)<CR>
vmap <Leader>a) :Tabularize /)<CR>

nmap <Leader>a( :Tabularize /(<CR>
vmap <Leader>a( :Tabularize /(<CR>

" UltiSnips Settings
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" CtrlP Settings

" Set local working directory to the directory of the current file
let g:ctrlp_working_path_mode='ra'

" Syntastic Settings

" tell syntastic to always stick any detected errors into the loclist
let g:syntastic_always_populate_loc_list=1

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

let g:syntastic_warning_symbol = 'WW'
let g:syntastic_error_symbol = 'EE'
