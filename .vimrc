let g:mapleader = ","

set noswapfile
syntax on

" Min lines to keep above 
set scrolloff=6

" Clear Search Mark
nnoremap <leader><space> :noh<cr>

" Set Line number
set number relativenumber
set nu rnu

" Copy/paste to from clipboard
vnoremap <C-c> "+y
nnoremap <C-p> "+p

" Some file commands
" Selecting all text in a file
nnoremap <C-A> ggVG
" Saving a file
map <C-s> :w <CR>
" redo
map <C-y> :redo <CR>
" Exiting buffer , error if changes not saved
map xt :bd <CR>
" Exiting buffer , no error if changes not saved
map xx :bd! <CR>
" Esc shortcut
imap jk <ESC>

" Switching windows
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Resizing-splits
noremap <silent> <C-S-Up> :resize +10<CR>
noremap <silent> <C-S-Down> :resize -10<CR>
noremap <silent> <C-S-Right> :vertical resize +10<CR>
noremap <silent> <C-S-Left> :vertical resize -10<CR>

" Switching tabs commands
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-l> :tabnext<CR>

" Tab switching 
noremap <M-1> 1gt
noremap <M-2> 2gt
noremap <M-3> 3gt
noremap <M-4> 4gt
noremap <M-5> 5gt
noremap <M-6> 6gt
noremap <M-7> 7gt
noremap <M-8> 8gt
noremap <M-9> 9gt

" autoreloading config file
nnoremap nve :e $MYVIMRC<CR>
nnoremap nvc :so $MYVIMRC<CR>

" Swap window splits
nnoremap <leader>sw <C-W><C-x>

" Home and End of current line
map <leader>b <Home>
map <leader>e <End>

