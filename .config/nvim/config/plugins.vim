call plug#begin('~/.config/nvim/plugged')

" THEME
	Plug 'arcticicestudio/nord-vim'			" the best theme for vim
	Plug 'vim-airline/vim-airline'			" for a fancier tagbar and bottom bar
	Plug 'ap/vim-css-color'				" highlight hexcolors in code

" SPEEDUP
	Plug 'SirVer/ultisnips'				" best tool to write code fast
	Plug 'terryma/vim-multiple-cursors'		" edit the different lines the same way
	Plug 'vim-scripts/speeddating.vim'		" in/decrease dates with <C-a>,<C-x>

" FORMATING TEXT
	Plug 'tpope/vim-commentary'			" make commenting in any language really easy
	Plug 'tpope/vim-surround'			" surround anything
	Plug 'chrisbra/NrrwRgn'				" select only a region of your document to edit
	Plug 'jiangmiao/auto-pairs'			" autocloses (/\"
	Plug 'chrisbra/unicode.vim'

" SEARCH
	Plug 'unblevable/quick-scope'			" highlight the words you can jump with f/t
 	Plug 'embear/vim-foldsearch'			" for better search overviews

" SYSTEM
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-repeat'				" make the \"dot\" even more useful
	Plug 'michaeljsmith/vim-indent-object'		" for better movements
	Plug 'christoomey/vim-system-copy'		" invoke xsel
	Plug 'junegunn/vim-peekaboo'			" list what is in the vim registers
	Plug 'majutsushi/tagbar'			" outline
	Plug 'machakann/vim-highlightedyank'		" visualize what was yanked
	Plug 't9md/vim-choosewin'			" easy swap between splits and tabs
	Plug 'voldikss/vim-floaterm'			" floating terminal for vim
	Plug 'vim-scripts/utl.vim'			" opening links with vim (pdf,url,jpg)

" LF FOR VIM
	Plug 'ptzz/lf.vim'				" lf for vim
	Plug 'rbgrouleff/bclose.vim'			" needed for the lf plugin

" ADDITONAL MODES
	Plug 'dhruvasagar/vim-table-mode'		" easy formatting of markdown tables
	Plug 'jceb/vim-orgmode'				" copy of emacs orgmode for vim

" FILETREE
	Plug 'lambdalisue/fern.vim'			" the filetree itself
	Plug 'lambdalisue/fern-bookmark.vim'		" bookmarks in filetree
	Plug 'LumaKernel/fern-mapping-fzf.vim'		" fuzzy finding files in the filetree

" MISC
	Plug 'junegunn/goyo.vim'			" work on files without distraction

" FILETYPE PLUGINS
	Plug 'inkarkat/vim-SyntaxRange'			" insert blocks of code in files
	Plug 'baskerville/vim-sxhkdrc'			" syntax for sxhkdrc
	Plug 'matze/vim-tex-fold'			" enable folding for .tex-files

" VIM PROGRAMS
	Plug 'itchyny/calendar.vim'			" visual calendar for vim
	Plug 'qpkorr/vim-renamer'			" bulk renamer for vim

call plug#end()

" NOT USED
	" Plug 'dracula/vim',{'as':'dracula'}
	" Plug 'plasticboy/vim-markdown'
	" Plug 'pbrisbin/vim-mkdir'
	" Plug 'dylanaraps/fff.vim'
	" Plug 'godlygeek/tabular'
	" Plug 'jkramer/vim-checkbox'
	" Plug 'mattn/calendar-vim'
	" Plug 'ctrlpvim/ctrlp.vim'			" for fast fileopening
