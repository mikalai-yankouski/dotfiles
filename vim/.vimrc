set nocompatible              " be iMproved, required
filetype off                  " required
set wildmenu

call plug#begin('~/.vim/plugged')

" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'scrooloose/syntastic'
" plugins
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'VundleVim/Vundle.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'andrewradev/splitjoin.vim'
Plug 'ap/vim-css-color'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'dense-analysis/ale'
Plug 'dyng/ctrlsf.vim'
Plug 'gregsexton/MatchTag'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
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
Plug 'terryma/vim-multiple-cursors'
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
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()            " required
filetype plugin indent on    " required

let mapleader=" "

set nu rnu
set ruler
set cursorline
set colorcolumn=120
set laststatus=2
set shiftwidth=2
set clipboard=unnamedplus
set softtabstop=2
set autoindent
set nohlsearch
set nowrap
set hidden
" set splitbelow
set tabstop=2 shiftwidth=2 expandtab
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let g:vimrubocop_config = "/home/big/patterns/.rubocop.yml"

" let g:ctrlp_custom_ignore = 'coverage'

let g:airline_powerline_fonts = 1
let g:javascript_plugin_flow = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_ruby_checkers = ['rubocop']
let g:indentLine_color_term = 239
let g:ale_echo_cursor = 1
let g:indentLine_char = '┊'
let g:highlightedyank_highlight_duration = 200 " Yank highlighting
let g:coc_global_extensions = [ 'coc-solargraph', 'coc-highlight', 'coc-css', 'coc-eslint', 'coc-html', 'coc-pairs', 'coc-prettier', 'coc-angular', 'coc-tsserver']
command! -nargs=0 Prettier :CocCommand prettier.formatFile
if has('folding')
  if has('windows')
    set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
endif

" Trigger quickscope highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

" syntax
syntax on
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_disabled_filetypes = ['html', 'slim', 'erb', 'md']

set list
set listchars=nbsp:⦸
set listchars+=tab:▷┅
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=trail:•
if has('linebreak')
  let &showbreak='⤷ '
endif

" Color Scheme
set guifont=Droid\ Sans\ Mono\ 12
let g:seoul256_background = 236
:highlight CursorLine ctermbg=239
colorscheme gruvbox
set background=dark
:highlight Normal ctermbg=None
highlight LineNr ctermbg=None
"
" set background=dark
" set termguicolors
" colorscheme deep-space
" let g:deepspace_italics=1
" let g:airline_theme='deep_space'

" ruby surround
let g:surround_{char2nr('%')} = "%(\r)"
let g:surround_{char2nr('w')} = "%w(\r)"
let g:surround_{char2nr('#')} = "#{\r}"
let g:surround_{char2nr('|')} = "|\r|"

" tabs movement
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap td :tabclose<CR>
nnoremap tn :tabnew<CR>

" quits from insert mode
imap jj <Esc> :w<CR>
imap qq <Esc> :q!<CR>

" git
" nnoremap <leader>gst :Gstatus<CR>
" nnoremap <leader>gd :Gdiff<CR>
" nnoremap <leader>gg :Gwrite<CR>
" nnoremap <leader>ga :Git add .<CR>
" nnoremap <leader>gc :Gcommit<CR>
" nnoremap <leader>ghh :Git checkout<space>
" nnoremap <leader>gp :Gpush<CR>
" nnoremap <leader>gl :Gpull<CR>
" nnoremap <leader>gmd :Gmerge developer<CR>
" nnoremap <leader>gms :Gmerge staging<CR>
" nnoremap <leader>gmv :Gmove<space>
" nnoremap <leader>grm :Gremove<CR>
" nnoremap <leader>grr :Gread<CR>
" rename current file
" nmap <leader>vv :Gmove<space>
nnoremap <F4> :Gstatus<CR><C-W><S-T>
nnoremap <F5> :Gwrite<CR>
nnoremap <F6> :Git add .<CR>
nnoremap <F7> :Gcommit<CR>
nnoremap <F8> :Gpush<CR>
nnoremap <F9> :Gpull<CR>

" RSpec.vim mappings
map <Leader>c :call RunCurrentSpecFile()<CR>

" repeat last script
nnoremap <Enter> @@

" fast switch between last two files in buffer
noremap <Leader><Leader> <C-^>
" show current file path
nnoremap <Leader>e :echo expand('%')<CR>
" quit from the file
nnoremap <Leader>q :quit<CR>
" save file
nnoremap <Leader>w :write<CR>
" show current file path
nnoremap <Leader>v o<C-r>0<Esc>
nnoremap <Leader>V O<C-r>0<Esc>
" show buffers
nnoremap <Leader>bb :buffers<CR>:buffer<Space>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bv :bprevious<CR>

nnoremap <Leader>x :xit<CR>
" open terminal
nnoremap <Leader>t :terminal<CR>

" update Ctags
nmap <silent> <C-G> :!ctags -R .<cr>

""NERD Tree helpers
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeDirArrows = 0
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_autoclose = 1
noremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :NERDTreeFind<CR>

" remap zero to go to start of code line
nnoremap 0 ^
nnoremap ^ 0

" Make yank similar behavier
noremap Y y$

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" Remove typo mistakes
nnoremap K <nop>
nnoremap Q <nop>

" line identation
nnoremap == <S-v>=

" substition helpers
nnoremap <leader>sub yiw:%s/<C-r>0//g<left><left>
vnoremap <leader>sub :s///g<left><left><left>
nnoremap c* *Ncgn

" Ack search settings
if executable('ag')
  " need to install -->  sudo apt-get install silversearcher-ag
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>ff :Ack!<Space>
nnoremap <Leader>fw yiw:Ack! <C-r>0
"fzf
noremap <C-p> :Files<Cr>
let g:fzf_preview_window = ''

" to use fast shich splited windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-T> <C-W><S-T>
" nnoremap gf <C-W>v<C-W><C-L>gf
nnoremap g] <C-W>g]
" resize current buffer by +/- 5
nnoremap <C-right> :vertical resize +3<cr>
nnoremap <C-down> :resize +3<cr>
nnoremap <C-up> :resize -3<cr>
nnoremap <C-left> :vertical resize -3<cr>

" fast instart/delete emptylines
nnoremap <leader>j o<Esc>k
nnoremap <leader>k O<Esc>j


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

" easy marks buffer
function! Marks()
  marks abcdefghijklmnopqrstuvwxyz.

  echo 'Jump to mark: '

  let marks = nr2char(getchar())
  redraw

  execute 'normal! `' . marks
endfunction
noremap <leader>m :call Marks()<CR>

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
