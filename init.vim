augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

autocmd VimEnter * wincmd p
autocmd BufWritePre *.tsx,*.ts Prettier

"nerdtree
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>

let mapleader = ","
let g:neoformat_try_node_exe = 1
let g:airline#extensions#clock#format = '%l:%M%p'
let g:rooter_patterns = ['.git', 'package.json']
set number
set expandtab
set shiftwidth=2
set autoindent
set smartindent
inoremap jk <esc>
vnoremap <esc> <nop>
inoremap <F1> <nop>
noremap <f1> <nop>
inoremap <esc> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nnoremap J jjj
nnoremap K kkk
nnoremap H hhhhhh
nnoremap L llllll
nnoremap <c-j> ddjP
nnoremap <c-k> ddkP
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>cwp :let @+ = expand("%:p")
"""""""""""""""""""""""""""""""""""""""""""""""""
" Color Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" colorscheme monokai
lua require('plugins')
