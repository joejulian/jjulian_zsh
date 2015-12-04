function! DetectSls()
  if !did_filetype()
    if match(getline(1), '^#!py') > -1
      set ft=python
    else
      set ft=sls
    endif
  endif
endfunction

:au BufNewFile,BufRead *.sls call DetectSls()
:au BufNewFile,BufRead *.tmpl,*.jinja2,*.jinja,*.j2 set ft=sls
