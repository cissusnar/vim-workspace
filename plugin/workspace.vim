function! Main() " {{{
	let cwd = getcwd()
	while 1
		if cwd == "/"
			break
		endif
		let rcpath = cwd . "/vimrc"
		if filereadable(rcpath)
			if rcpath != $HOME . "/.vim/vimrc"
				let g:workspace = cwd
				exec "so " . rcpath
				break
			endif
			break
		endif
		let cwd = fnamemodify(cwd, ':h')
	endwhile
endfunction " }}}

silent call Main()
"call Main()
