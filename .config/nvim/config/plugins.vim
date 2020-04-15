call plug#begin('~/.config/nvim/plugged')
" THEME
	Plug 'tomasiser/vim-code-dark'
	Plug 'vim-airline/vim-airline'

" SPEEDUP
	Plug 'SirVer/ultisnips'
	Plug 'tpope/vim-commentary'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'unblevable/quick-scope'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'ctrlpvim/ctrlp.vim'

" MARKDOWN
	Plug 'godlygeek/tabular'
	Plug 'jkramer/vim-checkbox'


" SYSTEM
	Plug 'tpope/vim-repeat'
	Plug 'michaeljsmith/vim-indent-object'
	Plug 'christoomey/vim-system-copy'
	Plug 'junegunn/vim-peekaboo'
	Plug 'majutsushi/tagbar'
	Plug 'machakann/vim-highlightedyank'

" MISC
	Plug 'baskerville/vim-sxhkdrc'
	Plug 'matze/vim-tex-fold'
	Plug 'junegunn/goyo.vim'


" VIM PROGRAMS
	Plug 'itchyny/calendar.vim'
	Plug 'qpkorr/vim-renamer'
call plug#end()

" NOT USED
	" Plug 'dracula/vim',{'as':'dracula'}
	" Plug 'plasticboy/vim-markdown'
	" Plug 'pbrisbin/vim-mkdir'
