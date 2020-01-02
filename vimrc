if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap ,s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap ,g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap ,c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap ,t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ,e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap ,f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap ,i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap ,d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap ,a :cs find t struct <C-R><C-W> {<CR>
