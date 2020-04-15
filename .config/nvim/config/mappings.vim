" DEFINE LEADER
	let mapleader =" "

" DOC_COMPILER
	inoremap <F5> <Esc>:w<Cr>:!$HOME/.config/nvim/bin/doc_compiler <C-r>%<Cr>
	inoremap ;C <Esc>:w<Cr>:!$HOME/.config/nvim/bin/doc_compiler <C-r>%<Cr>
	map <F5> :w<Cr>:!$HOME/.config/nvim/bin/doc_compiler <C-r>%<Cr>
	map ;C :w<Cr>:!$HOME/.config/nvim/bin/doc_compiler <C-r>%<Cr>
	autocmd FileType tex map <F5> :w<Cr>:tabfind Main.tex<Cr>:!$HOME/.config/nvim/bin/doc_compiler <C-r>%<Cr>:tabclose

" DOC_PREVIEW
	inoremap <F4> <Esc>:w<Cr>:!doc_compiler <C-r>% -p &<Cr><Cr>
	map <F4> :w<Cr>:!doc_compiler <C-r>% -p &<Enter><Enter>

" OPEN TOOLS
	map <F8> :TagbarToggle<Cr>
	map <F2> :Lexplore<Cr>
	map <leader>o :CtrlP<Enter>

" TABING
	map <leader>t :tabedit<Space>
	map <leader>T :tabedit<Cr>:term<Cr>
	map <Tab> gt
	map <S-Tab> gT
	map gf <C-w>gf

" OPEN SPLITVIEWS
	map <leader>s :split<Space>
	map <leader>v :vsplit<Space>

" OPEN TERMINAL IN SPLITS
	map <leader>V :vsplit<Cr><c-w>l:term<Cr>
	map <leader>S :split<Cr><c-w>j:term<Cr>

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
	map <leader>f :set ft=

" JUMP TO THE NEXT PLACEHOLDER (<++>)
	map <space><tab> <Esc>/<++><Enter>ca<
	inoremap <space><tab> <Esc>/<++><Enter>ca<
	vnoremap <space><tab> <Esc>/<++><Enter>ca<

" SOURCE KEYMAPS FOR FILETYPES
	autocmd FileType markdown source ~/.config/nvim/keys/markdown.vim
	autocmd FileType tex source ~/.config/nvim/keys/latex.vim
