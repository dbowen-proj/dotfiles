" vimrc file.
"
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead
set undofile		" keep an undo file (undo changes after closing)
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set relativenumber
set number              " turn on line numbers
set nowrap              " turn off line wrap
set hlsearch
set hidden

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let mapleader=" " 

"guioptions
if has('gui_running')
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  set lines=52
  set columns=162
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

syntax on
set background=dark
set t_Co=256
colorscheme apprentice

filetype plugin indent on

""hi Normal guibg=NONE ctermbg=NONE

call plug#begin('~/.vim/plugged')
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'yuezk/vim-js'
"    Plug 'mxw/vim-jsx'
    Plug 'leafgarland/typescript-vim'
    Plug 'alvan/vim-closetag'
    Plug 'StanAngeloff/php.vim'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'jlanzarotta/bufexplorer'
    Plug 'ap/vim-buftabline'
call plug#end()

"****vim-closetag****
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx,*.vue'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx,tsx,vue'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

" Enables closing tags for React fragments -> <></> for all supported file types
let g:closetag_enable_react_fragment = 1


"*******unltisnip******
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"******omnicomplete*****
set omnifunc=syntaxcomplete#Complete
set completeopt+=menuone

"******NERDTree*******
nnoremap <leader>n :NERDTreeToggle<CR>
inoremap <C-f> <ESC>:NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1

"******Bufftabline*****
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>
inoremap <C-j> <ESC>:bnext<CR>
inoremap <C-k> <ESC>:bprev<CR>
let g:buftabline_numbers=1

augroup vimrcEx
	au!
	
	"NerdTree
	autocmd StdinReadPre * let s:std_in=1
        "autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
	autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
        autocmd BufRead,BufNewFile .vimrc let b:autopairs_loaded=1
	autocmd BufRead,BufNewFile *.pde,*.ino set filetype=cpp
	autocmd BufRead,BufNewFile *.vue set filetype=vue
	autocmd BufRead,BufNewFile *.jsx set filetype=javascript
	autocmd FileType text setlocal textwidth=78
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
augroup END

augroup c
	autocmd!
	autocmd	FileType c,cpp
		\ setlocal tabstop=4 |
		\ setlocal shiftwidth=4 |
		\ setlocal softtabstop=4 |
		\ setlocal expandtab
augroup END

augroup js
	autocmd!
	autocmd FileType javascript
		\ setlocal tabstop=4 |
		\ setlocal shiftwidth=4 |
		\ setlocal softtabstop=4 |
		\ setlocal expandtab
augroup END

augroup php
	autocmd!
	autocmd FileType php
		\ setlocal tabstop=4 |
		\ setlocal shiftwidth=4 |
		\ setlocal softtabstop=4 |
		\ setlocal expandtab
augroup END

augroup html
	autocmd!
	autocmd FileType html
		\ setlocal tabstop=2 |
		\ setlocal shiftwidth=2 |
		\ setlocal softtabstop=2 |
		\ setlocal expandtab
augroup END

augroup vue
	autocmd!
	autocmd FileType vue
		\ setlocal tabstop=4 |
		\ setlocal shiftwidth=4 |
		\ setlocal softtabstop=4 |
		\ setlocal expandtab
augroup END


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
