let g:python_host_prog='/usr/bin/python3'
let g:python_host_skip_check = 1

call plug#begin()
Plug 'Valloric/YouCompleteMe', { 'do' : 'python3 install.py --clang-completer --tern-completer --system-boost --system-libclang'}
Plug 'Yggdroot/indentLine', { 'for': 'python' }
Plug 'airblade/vim-gitgutter'
Plug 'arakashic/chromatica.nvim'
Plug 'arecarn/crunch.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do' : './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'lilydjwg/colorizer'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/HJKL'
Plug 'w0rp/ale'
call plug#end()

"Use colorscheme
colorscheme inkpot "Use color scheme 'inkpot'

"Set cursor
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

"Set more things
set autochdir "Automatically change directory to file's directory
set autoindent smartindent "Auto indent 
set autoread "Automatically update file
set autowrite "Save before you :make
set cul "Highlight current linse
set encoding=utf8 "Set encoding as UTF-8
set expandtab "Use space instead of tabs 
set ffs=unix,dos,mac "Set file format
set hidden "Hide buffer instead of closing it
set history=10000 "Store this number of lines
set hlsearch "Highlight search patterns
set incsearch "Do an incremental search
set lazyredraw "Dont redraw when you dont have to
set mouse=a "Turn the mouse on
set nobackup "Disable file backups
set noswapfile "Use RAM
set nowb "Dont write the backup
set nowrap "Dont wrap long lines
set number "Set line number
set pastetoggle=<F2> "Paste toggle (for indentation in terminal)
set ruler "Show cursur position all the time
set shiftwidth=4 "Tab size
set showcmd "Display incomplete commands
set showmatch "Show matching brackets
set splitbelow "Horizontal splits below
set splitright "Vertical splits at right side
set tabstop=4 "Tab size
set undolevels=1000 "We like a big undo level 
set visualbell "Use a visual bell
set wildmenu "Use tab completion
set wildmode=longest,list,full "Tab completion mode

"" Enable file indentation
filetype indent plugin on

""Config vim airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

""Arduino files
au BufRead,BufNewFile *.pde,*.ino set filetype=c++

""Activate rainbow brackets
let g:rainbow_active = 1 

""Key bindings
nmap <M-u> :GundoToggle<CR>
nmap <M-t> :TagbarToggle<CR>
nmap <M-o> :FZF<CR>
nmap <C-c> :vs +te<CR>
tnoremap <M-\> <C-\><C-n>
imap <M-\> <Esc>

""Settings for YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_always_populate_location_list = 1
"let g:ycm_collect_identifiers_from_tags_files = 1

""Settings for Chromatica
let g:chromatica#libclang_path='/usr/lib/libclang.so'
"let g:chromatica#enable_at_startup=1
"let g:chromatica#highlight_feature_level=1
let g:chromatica#responsive_mode=1

""Settings for ALE
let g:ale_c_clang_options = '-std=c11 -Wall -Wextra'
let g:ale_cpp_clang_options = '-std=c++14 -Wall -Wextra'
let g:ale_linters = { 'python': ['flake8'] }
let g:ale_python_flake8_args = '--select=F --ignore=F403,F405'

""Strip dead spaces
au FileType c,cpp,java,php,js,jl,rs,python,tex autocmd BufWritePre <buffer> :%s/\s\+$//e

"" Auto spell for tex files
au FileType tex set spell
au FileType tex syntax spell toplevel

""Sync x clipboard with vim
set clipboard^=unnamed,unnamedplus
