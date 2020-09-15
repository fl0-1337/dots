" LOAD CONFIGS
	" let s:config_dir = '$HOME/.config/nvim/config/'
" 	let s:config_files = [ 'plugins.vim', 'netrw.vim', 'settings.vim', 'mappings.vim', 'vsc.vim', 'stab.vim' ]
" 	for filename in s:config_files
" 		exec 'source' . s:config_dir . filename
" 	endfor

" LOAD CONFIGS
	source $HOME/.config/nvim/config/plugins.vim
	source $HOME/.config/nvim/config/netrw.vim
	source $HOME/.config/nvim/config/settings.vim
	source $HOME/.config/nvim/config/mappings.vim
	source $HOME/.config/nvim/config/vsc.vim
	source $HOME/.config/nvim/config/stab.vim
