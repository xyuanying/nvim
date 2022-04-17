map Q :wq<CR>
map W :w!<CR>
map <C-n> :NERDTreeToggle<CR>
set cursorline
set wrap
set showcmd
set wildmenu
syntax on
set number
set relativenumber
map R :source init.vim<CR>
call plug#begin('~/.config/nvim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'connorholyday/vim-snazzy'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ncm2/ncm2-vim-lsp'
call plug#end()
color snazzy
nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode
