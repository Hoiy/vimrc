set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'Valloric/YouCompleteMe' 

Plugin 'wincent/command-t'
" All of your Plugins must be added before the following line
call vundle#end()            " required
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

let g:ycm_confirm_extra_conf = '~/.ycm_extra_conf.py'

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
" set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
" set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
" set t_Co=256
" syntax on
" " colorscheme wombat256
" " turn line numbers on
set number
" " highlight matching braces
set showmatch
" " intelligent comments
" set comments=sl:/*,mb:\ *,elx:\ */

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
" map <C-S> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
" map <C-S> <ESC>:w<CR>i
" switch between header/source with F4
" map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
" map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
" map <F6> :Dox<CR>
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
" map <F12> <C-]>

map <C-I> :pyf ~/tools/clang-format.py<CR>

imap <C-I> <ESC>:pyf ~/tools/clang-format.py<CR>i

map <C-A> ggVG<CR>
imap <C-A> <ESC>ggVG<CR>i

map <S-F3> :YcmCompleter GoToDeclaration<CR>
map <F3> :YcmCompleter GoToDefinition<CR>

imap <S-F3> <ESC>:YcmCompleter GoToDeclaration<CR>i
imap <F3> <ESC>:YcmCompleter GoToDefinition<CR>i

map <F6> :CommandT<CR>

let g:clang_format_path = '/usr/lib/llvm-3.5/bin/clang-format'
