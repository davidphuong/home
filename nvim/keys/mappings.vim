nnoremap <F3> :e $MYVIMRC<CR>
map <F4> :source $MYVIMRC<CR>

" Substitute for <ESC>
imap jj <Esc>

nmap <leader>q :qa<CR>

" Faster save
nnoremap <Leader>w :w<CR>

" Map gt and gT to next/prev buffers instead of tabs
nmap gt :bnext<CR>
nmap gT :bprev<CR>

" Map <Leader> x to close current buffer
" Use this a lot
nmap <leader>x :bd<CR>

" Select what was just pasted
nnoremap <Leader>V V`]

" Clears and redraws the screen. This mapping builds on top of the usual behavior
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Don't jump to next word search straight away
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Window movement
" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>
" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>
" Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>
" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>
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

