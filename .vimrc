"https://www.jianshu.com/p/58e2d78744a2
set shell=/bin/bash

function! SetStyle()
  let l:fname = expand("%:p")
  if stridx(l:fname, 'libsanitizer') != -1
    return
  endif
  let l:ext = fnamemodify(l:fname, ":e")
  let l:c_exts = ['c', 'h', 'cpp', 'cc', 'C', 'H', 'def', 'java']
  if index(l:c_exts, l:ext) != -1
    setlocal cindent
    setlocal tabstop=8
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal noexpandtab
    setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,f0,h2,p4,t0,+2,(0,u0,w1,m0
    setlocal textwidth=80
    setlocal formatoptions-=ro formatoptions+=cqlt
  endif
endfunction

call SetStyle()

let mapleader=";"

"support mouse.
set mouse=a

set fileencodings=utf-8,ucs-bom,shift-jis,latin1,big5,gb18030,gbk,gb2312,cp936  
set fileencoding=utf-8 
set encoding=utf-8 
set termencoding=utf-8  
set guifont=Courier\ New\:h12  
set guifontwide=NSimsun\:h12  

set nocompatible              " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'
"Plugin 'vim-scripts/phd'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'derekwyatt/vim-fswitch'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'derekwyatt/vim-protodef'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"let g:airline_powerline_fonts = 1

"Bundle 'fholgado/minibufexpl.vim'
"let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=1
let g:miniBufExplUseSingleClick = 1

map <Leader>bl :MBEToggle<cr>
map <F9> :MBEbp<CR>
map <F10> :MBEbn<CR>
map <Leader>bn :MBEbn<cr>
map <Leader>bp :MBEbp<cr>
map <Leader>bd :MBEbd<cr>
map <Leader>bb :b#<cr>

"Plugin 'majutsushi/tagbar'

"Bundle 'Valloric/YouCompleteMe'
set completeopt=longest,menu 
autocmd InsertLeave * if pumvisible() == 0|pclose|endif 
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_confirm_extra_conf=0 

"let g:ycm_collect_identifiers_from_tags_files=1 
"let g:ycm_min_num_of_chars_for_completion=2 
"let g:ycm_cache_omnifunc=0 
"let g:ycm_seed_identifiers_with_syntax=1 
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> 
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR> "close locationlist
inoremap <leader><leader> <C-x><C-o>
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"Bundle 'taglist.vim'
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1 
let Tlist_WinWidth = 28
let Tlist_Exit_OnlyWindow=1 
let Tlist_Use_Right_Window = 1
"let Tlist_Auto_Update = 1
"let Tlist_Auto_Open = 1
"let Tlist_Window_Check_Auto_Open = 1
let Tlist_Use_SingleClick = 1

" Taglist plugin mapping
noremap <silent> <Leader>t :Tlist<CR>
set updatetime=1500

"Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
noremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>y :NERDTreeFind<cr>
"let NERDTreeIgnore=['\.pyc', '~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.class'] 
let NERDTreeWinPos='left'
let NERDTreeWinSize=32
let g:Srcexpl_winHeight = 0
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 50
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeHighlightCursorline=3
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeMouseMode = 3
let NERDTreeStatusline = 1
"au BufWinEnter * set number


"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

set mouse=a

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

"Bundle 'jistr/vim-nerdtred-tabs'



nmap <silent> <Leader>sw :FSHere<cr>

"Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
"Bundle 'scrooloose/syntastic'
"Bundle 't9md/vim-quickhl'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
"Bundle 'YankRing.vim'
"Bundle 'vcscommand.vim'
"Bundle 'ShowPairs'
"Bundle 'SudoEdit.vim'
"Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'VimIM'

"Bundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \  }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"Bundle 'tacahiroy/ctrlp-funky'
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set tags=tags;/  


"not working.
nmap <C-H> <C-W>h 
nmap <C-J> <C-W>j  
nmap <C-K> <C-W>k 
nmap <C-L> <C-W>l  


execute pathogen#infect()
filetype plugin indent on


set nocompatible 

syntax on 

set number 

set cursorline 

set ruler 

set shiftwidth=2

"set softtabstop=2

"set tabstop=2 

set nobackup 





set backupcopy=yes 

set ignorecase smartcase 

set nowrapscan 

set incsearch 

set hlsearch 

set noerrorbells 

set novisualbell 

set magic 

set hidden 

set guioptions-=T 

set guioptions-=m 

set smartindent

set backspace=indent,eol,start



set cmdheight=1

set laststatus=2

"set statusline=\%<%F[%1*%M%*%n%R%H]%=\%y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  endfunction

  function! StatuslineGit()
      let l:branchname = GitBranch()
        return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
      endfunction

set statusline=
set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=



"set ts=2
"set expandtab
set autoindent

" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"let g:omni_sql_no_default_maps = 1
"let g:ycm_key_list_stop_completion = ['<CR>']

"copy to clipboard.
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

set clipboard=unnamed
set ignorecase
set wrap
map <C-K> :py3f /home/luoxhu/workspace/clang-format.py<cr>
imap <C-K> <c-o>:py3f /home/luoxhu/workspace/clang-format.py<cr>

function! SetStyle()
  let l:fname = expand("%:p")
  if stridx(l:fname, 'libsanitizer') != -1
    return
  endif
  let l:ext = fnamemodify(l:fname, ":e")
  let l:c_exts = ['c', 'h', 'cpp', 'cc', 'C', 'H', 'def', 'java']
  if index(l:c_exts, l:ext) != -1
    setlocal cindent
    setlocal tabstop=8
    setlocal softtabstop=2
    setlocal shiftwidth=2
    setlocal noexpandtab
    setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,f0,h2,p4,t0,+2,(0,u0,w1,m0
    setlocal textwidth=80
    setlocal formatoptions-=ro formatoptions+=cqlt
  endif
endfunction

call SetStyle()

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


highlight SpecialKey ctermfg=red cterm=NONE
set listchars=tab:>-,trail:-
set list
au bufread ~/src/gcc/*.{c,h,md} set sw=2 sts=2 ai

set background=dark
hi Comment ctermfg=6

" Edit vimr configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>
