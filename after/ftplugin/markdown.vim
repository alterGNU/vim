" ============================================================================================================
" MARKDOWN FILES CONFIGURATION
" ============================================================================================================
 
" =[ SETTINGS ]===============================================================================================
" -[ COMMENTS ]-----------------------------------------------------------------------------------------------
setlocal commentstring=#%s     | " The comment string characters

" -[ TABULATION ]---------------------------------------------------------------------------------------------
setlocal tabstop=4             | " Specify the width of a tab character (8 by default)
setlocal shiftwidth=4          | " In normod, indenting with '>'insert 4spaces instead of one tabulation
setlocal expandtab             | " On pressing tab, insert 4 spaces

" -[ LINES WIDTH ]--------------------------------------------------------------------------------------------
setlocal textwidth=120         | " Line width
setlocal wrap                  | " If line longer than windows, wrap text instead of horizontal scrolling
setlocal linebreak             | " If line longer than windows, prevent word from being split in two

" =[ MAPPINGS ]===============================================================================================
" -[ TITLE INSERTION ]----------------------------------------------------------------------------------------
map <buffer> <Leader>0 :call Markdown_Titles(0)<CR>
map <buffer> <Leader>1 :call Markdown_Titles(1)<CR>
map <buffer> <Leader>2 :call Markdown_Titles(2)<CR>
map <buffer> <Leader>3 :call Markdown_Titles(3)<CR>
map <buffer> <Leader>4 :call Markdown_Titles(4)<CR>
map <buffer> <Leader>5 :call Markdown_Titles(5)<CR>
map <buffer> <Leader>6 :call Markdown_Titles(6)<CR>
map <buffer> <Leader>7 :call Markdown_Titles(7)<CR>
map <buffer> <Leader>8 :call Markdown_Titles(8)<CR>
map <buffer> <Leader>9 :call Markdown_Titles(9)<CR>