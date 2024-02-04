set nocompatible              " be iMproved, required
filetype off                  " required
set wildmenu

" plugins
call plug#begin('~/.vim/plugged')

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'andrewradev/splitjoin.vim'
Plug 'ap/vim-css-color'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'dense-analysis/ale'
Plug 'dyng/ctrlsf.vim'
Plug 'gregsexton/MatchTag'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'machakann/vim-highlightedyank'
Plug 'mileszs/ack.vim'
Plug 'msanders/snipmate.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ngmy/vim-rubocop'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'wincent/loupe'

" Color schemes
Plug 'morhetz/gruvbox'

call plug#end()              " required
filetype plugin indent on    " required

let mapleader=" "

syntax on
set nu rnu
set ruler
set mouse=a
set cursorline
set noswapfile
set scrolloff=7
set guicursor=n-v-c-i:block
set colorcolumn=120
set laststatus=2
set shiftwidth=2
set clipboard=unnamedplus
set softtabstop=2
set autoindent
set nohlsearch
set nowrap
set hidden
set tabstop=2 shiftwidth=2 expandtab
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set list
set listchars=nbsp:⦸
set listchars+=tab:▷┅
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=trail:•
if has('linebreak')
  let &showbreak='⤷ '
endif


" other settings
let g:vimrubocop_config = '/home/big/patterns/.rubocop.yml'
let g:airline_powerline_fonts = 1
let g:javascript_plugin_flow = 1
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
let g:vim_json_conceal=0
let g:highlightedyank_highlight_duration = 200 " Yank highlighting


" Color Scheme
set guifont=Fira\ Code
let g:seoul256_background = 236
:highlight CursorLine ctermbg=239
colorscheme gruvbox
set background=dark
:highlight Normal ctermbg=None
highlight LineNr ctermbg=None


" NERD Tree helpers
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeDirArrows = 0
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_autoclose = 1
noremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>


" What do we use for linting
let g:ale_echo_cursor = 1
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop'] }
let g:ale_linters_explicit = 1
let g:ale_sign_error = '\u2022'
let g:ale_sign_warning = '\u2022'

" Trigger quickscope highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline


" ruby surround
let g:surround_{char2nr('%')} = "%(\r)"
let g:surround_{char2nr('w')} = "%w(\r)"
let g:surround_{char2nr('#')} = "#{\r}"
let g:surround_{char2nr('|')} = "|\r|"


" to use fast shich splited windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-T> <C-W><S-T>
nnoremap g] <C-W>g]

" tabs movement
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap td :tabclose<CR>
nnoremap tn :tabnew<CR>

" resize current buffer by +/- 3
nnoremap <C-right> :vertical resize +3<cr>
nnoremap <C-down> :resize +3<cr>
nnoremap <C-up> :resize -3<cr>
nnoremap <C-left> :vertical resize -3<cr>


" quits from insert mode
imap jj <Esc> :w<CR>
imap qq <Esc> :q!<CR>

noremap Y y$                                  " Make yank similar behavier
noremap <Leader><Leader> <C-^>                " fast switch between last two files in buffer
nnoremap <Enter> @@                           " repeat last script
nnoremap <Leader>e :echo expand('%')<CR>      " show current file path
nnoremap <Leader>q :quit<CR>                  " quit from the file
nnoremap <Leader>w :write<CR>                 " save file
nnoremap <Leader>v o<C-r>0<Esc>               " insert AFTER current line
nnoremap <Leader>V O<C-r>0<Esc>               " insert BEFORE current line
nnoremap == <S-v>=                            " line identation
" remap zero to go to start of code line
nnoremap 0 ^
nnoremap ^ 0
" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'
" substition helpers
nnoremap <leader>sub yiw:%s/<C-r>0//g<left><left>
vnoremap <leader>sub :s///g<left><left><left>
nnoremap c* *Ncgn

map <Leader>c :call RunCurrentSpecFile()<CR>  " RSpec.vim mappings
nmap <silent> <C-G> :!ctags -R .<cr>          " update Ctags

nnoremap <F4> :Git status<CR><C-W><S-T>
nnoremap <F5> :Gwrite<CR>
nnoremap <F6> :Git add .<CR>
nnoremap <F7> :Git commit<CR>
nnoremap <F8> :Git push<CR>
nnoremap <F9> :Git blame<CR>

" fast instart/delete emptylines
nnoremap <leader>j o<Esc>k
nnoremap <leader>k O<Esc>j

" show buffers
nnoremap <Leader>bb :Buffers<CR>:buffer<Space>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bv :bprevious<CR>


" Coc settings
let g:coc_global_extensions = [ 'coc-solargraph', 'coc-highlight', 'coc-css', 'coc-eslint', 'coc-html', 'coc-pairs', 'coc-prettier', 'coc-angular', 'coc-tsserver']

command! -nargs=0 Prettier :CocCommand prettier.formatFile
if has('folding')
  if has('windows')
    set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
endif

" Ack search settings
if executable('ag')
  " need to install -->  sudo apt-get install silversearcher-ag
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>ff :Ack!<Space>
nnoremap <Leader>fw yiw:Ack! <C-r>0

" FZF settings
let g:fzf_layout = { 'down':  '40%'}
let g:fzf_preview_window = ''
noremap <C-p> :GFiles<Cr>


" change CamlCase to under_scores
function! ToUnderScores() range
  s#\C\(\<\u[a-z0-9]\+\|[a-z0-9]\+\)\(\u\)#\l\1_\l\2#g
endfunction
noremap <leader>snake :call ToUnderScores()<CR>
" change under_scores to CamlCase
function! ToCamlCase() range
  s#\(\%(\<\l\+\)\%(_\)\@=\)\|_\(\l\)#\u\1\2#g
endfunction
noremap <leader>camel :call ToCamlCase()<CR>

function! PutDebugger()
  if &ft=='ruby'
    normal! Obinding.pry
  endif
  if &ft=='javascript'
    normal! Odebugger
  endif
endfunction
noremap <leader>db :call PutDebugger()<CR>:w<CR>

autocmd BufWritePre * %s/\s\+$//e
