" BASICS
	colorscheme codedark
	set wildmenu
	set relativenumber number
	set splitbelow splitright
	set cursorline
	set nocompatible
	set path+=**
	filetype plugin on
	filetype plugin indent on
	syntax on

" FOR BETTER SUBSTITUTION (NEOVIM ONLY)
	set inccommand=split

" CASESENSITVE
	set ignorecase
	set smartcase

" ALWAY CENTER WHEN INSTERTING
	autocmd InsertEnter * norm zz


" TAGBAR
	let g:tagbar_type_markdown = {
	    \ 'ctagstype' : 'markdown',
	    \ 'kinds' : [
		\ 'h:Heading_L1',
		\ 'i:Heading_L2',
		\ 'k:Heading_L3'
	    \ ]
	\ }

" PEEKABOO
	let g:peekaboo_prefix = '<leader>'

" TABLINE
	let g:airline_theme = 'codedark'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#formatter = 'unique_tail'

" FOR NOTE-TAKING
	augroup notes
		autocmd!
		autocmd BufNewFile,BufRead,BufWrite *.note set nofoldenable
		autocmd BufNewFile,BufRead,BufWrite *.note set filetype=markdown
	augroup END

" LOAD SKELS FOR NEW FILES
	autocmd BufNewFile *.md -1read ~/.config/nvim/templates/skel.md
	autocmd BufNewFile *.html -1read ~/.config/nvim/templates/skel.html
	autocmd BufNewFile *.sh -1read ~/.config/nvim/templates/skel.sh


" HIGHLIGHT TRAILING WHITESPACE
	highlight ExtraWhitespace ctermbg=red guibg=red
	autocmd BufEnter,InsertLeave * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * call clearmatches()

" REMOVE TRAILING WHITESPACE ON SAVING
	autocmd BufWritePre * %s/\s\+$//e

" ULTISNIPS
	let g:UltiSnipsSnippetDirectories=[$HOME. '/.config/nvim/UltiSnips']
	let g:UltiSnipsExpandTrigger="<M-Cr>"
	let g:UltiSnipsJumpForwardTrigger="<c-j>"
	let g:UltiSnipsJumpBackwardTrigger="<c-k>"
	let g:UltiSnipsListSnippets="<c-l>"

" QUICK-SCOPE
	let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
	highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 ctermbg=0 cterm=underline
	highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 ctermbg=0 cterm=underline

" SET FILETYPE FOR RMD-FILES
	autocmd BufNewFile,BufRead,BufWrite *.rmd set filetype=markdown

" FOR PRESENTATIONS IN MARKDOWN
	augroup md_pres
		autocmd!
		autocmd BufNewFile,BufRead,BufWrite *.pres set filetype=markdown
		autocmd BufNewFile *.pres -1read ~/.config/nvim/templates/skel.md
	augroup END

" SET FILETYPE FOR LaTeX
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" NOT USED
	" let g:vim_markdown_folding_level = 6
	" let g:vim_markdown_edit_url_in = 'tab'
	" autocmd BufNewFile *.tex -1read ~/.config/nvim/templates/skel.tex
