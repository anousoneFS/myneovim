" Statusline
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  if strlen(l:branchname) > 15
      let l:branchname = l:branchname[:15] . "..."
  endif
  let b:gitstatus = strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

autocmd VimEnter,BufEnter,FileType * call StatuslineGit() "sets branch name on vim start, new buffer open and for quickfix window

hi NormalColor guifg=Black guibg=Green ctermbg=34 ctermfg=0
hi InsertColor guifg=Black guibg=Cyan ctermbg=44 ctermfg=0
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=0
hi VisualColor guifg=Black guibg=Orange ctermbg=202 ctermfg=0
hi CommandColor guifg=White guibg=Black ctermbg=12 ctermfg=11
hi DelimiterColor ctermbg=7 ctermfg=0


set laststatus=2
set statusline=
set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(mode()==?'i')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(mode()==?'R')?'\ \ RPLACE\ ':''}
set statusline+=%#VisualColor#%{(mode()==#'v')?'\ \ VISUAL\ ':''}
set statusline+=%#VisualColor#%{(mode()==#'V')?'\ \ V-LINE\ ':''}
set statusline+=%#VisualColor#%{(mode()==nr2char(22))?'\ \ V-BLOCK\ ':''}
set statusline+=%#CommandColor#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#CursorIM#
set statusline+=%(%{b:gitstatus}%) " git branch
set statusline+=%#DelimiterColor#
set statusline+=\ \%f "full path
set statusline+=\%m " modified [+] flag
set statusline+=%= " right align
set statusline+=\ %y\                                 " FileType
set statusline+=\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}] " Encoding & Fileformat
set statusline+=\ %l:\%c\ %L\            " Rownumber: colnumber total rowsu
