set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	let iCanHazVundle=0
endif

Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/syntastic' 
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'gerw/vim-latex-suite'
"Plugin 'Valloric/YouCompleteMe'

" 編輯喜好設定    
set encoding=utf-8
set fileencodings=utf-8,cp950
syntax enable
syntax on        " 語法上色顯示
set nocompatible " VIM 不使用和 VI 相容的模式
" set ai           " 自動縮排
set shiftwidth=4 " 設定縮排寬度 = 4 
set tabstop=4    " tab 的字元數
set softtabstop=4
set expandtab   " 用 space 代替 tab

set nu 
set ruler        " 顯示右下角設定值
set backspace=2  " 在 insert 也可用 backspace
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set smartindent  " 設定 smartindent
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set history=100  " 保留 100 個使用過的指令
set cursorline   " 顯示目前的游標位置 
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
set filetype=on

let g:tex_flavor = 'latex'

" THE BWLOWING SETTING IS FOR LATEX 
let g:Tex_EnvLabelprefix_equation = "eq:"
let g:Tex_EnvLabelprefix_enumerate = "en:"
let g:Tex_EnvLabelprefix_document = "doc:"
let g:Tex_EnvLabelprefix_aligned = "al:"

colorscheme jellybeans

augroup filetype_settings
    autocmd!
	autocmd FileType sh setlocal shiftwidth=2 softtabstop=2
    autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
	autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2 
	autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0 
	autocmd FileType gitcommit setlocal spell textwidth=72
    autocmd FileType tex setlocal shiftwidth=2 softtabstop=2    
augroup END

augroup filetype_settings
    autocmd FileType ruby colorscheme seti
    autocmd FileType sh colorscheme molokai
    autocmd FileType make colorscheme molokai
augroup END

map <F2> :NERDTree<CR>
