" DEFINE LEADER
	let mapleader =" "

" DOC_COMPILER
	inoremap <F5> <Esc>:w<Cr>:!doc_compiler -c <C-r>%<Cr>
	inoremap ;C <Esc>:w<Cr>:!doc_compiler -c <C-r>%<Cr>
	map <F5> :w<Cr>:!doc_compiler -c <C-r>%<Cr>
	map ;C :w<Cr>:!doc_compiler -c <C-r>%<Cr>
	autocmd FileType tex map <F5> :w<Cr>:tabfind Main.tex<Cr>:!doc_compiler <C-r>%<Cr>:tabclose
	autocmd FileType groff map <F5> :w<Cr>:tabfind main.ms<Cr>:!doc_compiler <C-r>%<Cr>:tabclose
	autocmd FileType groff map ;C :w<Cr>:tabfind main.ms<Cr>:!doc_compiler <C-r>%<Cr>:tabclose

" DOC_PREVIEW
	inoremap <F4> <Esc>:w<Cr>:!doc_compiler -p <C-r>% &<Cr><Cr>
	map <F4> :w<Cr>:!doc_compiler -p <C-r>% &<Enter><Enter>

" TOGGLE SPELLCHECK
	map <F7> :setlocal spell! spelllang=de_de<Cr>

" OPEN TOOLS
	map <F2> :Fern . -drawer -toggle<Cr>
	map <F3> :Fern bookmark:///<Cr>
	map <F8> :TagbarToggle<Cr>

" TABING
	map <Tab> gt
	map <S-Tab> gT
	map gf <C-w>gf

" OPEN SPLITVIEWS
	map <leader>s :split<Space>
	map <leader>v :vsplit<Space>

" REDUCE KEYPRESS
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" COPY/PASTE
	map Y y$
	map cy cp

" START VIM-PROGRAMS
	map <leader>c :Calendar<Enter>
	map <leader>r :Renamer<Enter>

" TOGGLE SETTINGS
	map <leader>h :set hls!<Cr>
	map <leader>l :set cursorline!<Cr>
	map <leader>z :set foldenable!<Cr>

" FZF
	map <leader>f :Filetypes<Cr>
	map <leader>b :Buffers<Cr>
	map <leader>m :Marks<Cr>
	map <leader>o :FZF<Enter>

" JUMP TO THE NEXT PLACEHOLDER (<++>)
	map <space><tab> <Esc>/<++><Enter>ca<
	inoremap <space><tab> <Esc>/<++><Enter>ca<
	vnoremap <space><tab> <Esc>/<++><Enter>ca<

" SOURCE KEYMAPS FOR FILETYPES
	autocmd FileType markdown source ~/.config/nvim/keys/markdown.vim
	autocmd FileType tex source ~/.config/nvim/keys/latex.vim

" FLOATTERM
	nnoremap   <silent>   <F12>   :FloatermToggle<CR>
	tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" UNIVERSAL LINK HANDLER
	map gl :Utl<Cr>

" winchoose
	nmap - <Plug>(choosewin)

map <C-s> ]s
" map <S-C-s> [s


nmap <C-g> :echo expand('%:p')<Cr>


map <F10> :execute "Rg " . expand("<cword>") <CR>
" NOT USED
	" map <leader>V :vsplit<Cr><c-w>l:term<Cr>
	" map <leader>S :split<Cr><c-w>j:term<Cr>
	" map <leader>T :tabedit<Cr>:term<Cr>
	" map <leader>t :tabedit<Space>
	" map <leader>t :LfCurrentDirectoryExistingOrNewTab<Cr>
