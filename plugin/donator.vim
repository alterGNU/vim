" ============================================================================================================
" Done commands
" ============================================================================================================
"
" Fun, cmd and augroup that set things at 'Done'
"
" Actions:
"   - if its a How_to ticket:
"       - search for the status line then change icon to ✅
"       - search for the end date and set it's value at now
"   - if its a Fix_it ticket:
"       - search for the status line then change icon to ✅
"       - search for the end date and set it's value at now
"
" TODO:
"   - [ ] Search_and_set_end_date : regroup function
" ============================================================================================================

" ============================================================================================================
" FUNCTIONS
" ============================================================================================================
" -[ SEARCH_AND_SET_END_DATE ]--------------------------------------------------------------------------------
" -[ DONE HOW_TO_FT ]----------------------------------------------------------------------------------------
" Done function for how_to.txt template
fun! g:Done_how_to_ft()
    let l:enddate_line_number = search("^- End Date", 'n')
    if l:enddate_line_number > 0
        let l:new_enddate_line = split(getline(l:enddate_line_number), ':')[0].": {{date}} {{day}} {{time}}"
        call setline(l:enddate_line_number, l:new_enddate_line)
        InsertMatches
    endif

    let l:status_line_number = search("^- Status", 'n')
    if l:status_line_number > 0
        let l:new_status_line = split(getline(l:status_line_number), ':')[0].": ✅"
        call setline(l:status_line_number, l:new_status_line)
    endif
endfun
" -[ DONE_fix_it_FT ]---------------------------------------------------------------------------------------
" Done function for fix_it.txt template
fun! g:Done_fix_it_ft()
    let l:enddate_line_number = search("^- End Date", 'n')
    if l:enddate_line_number > 0
        let l:new_enddate_line = split(getline(l:enddate_line_number), ':')[0].": {{date}} {{day}} {{time}}"
        call setline(l:enddate_line_number, l:new_enddate_line)
        InsertMatches
    endif

    let l:status_line_number = search("^- Status", 'n')
    if l:status_line_number > 0
        let l:new_status_line = split(getline(l:status_line_number), ':')[0].": ✅"
        call setline(l:status_line_number, l:new_status_line)
    endif
endfun

" -[ DONE TO DONE THEM ALL ]----------------------------------------------------------------------------------
" Apply the done function depending on the file we're on.
fun! g:Done()
    let l:title = split(getline(1), ':')[0][2:]
    echo "titre='".l:title."'"
    if l:title =~# 'How to'
        call g:Done_how_to_ft()
        echom "Done how_to.txt file"
    elseif l:title =~# 'Fix_it'
        call g:Done_fix_it_ft()
        echom "Done fix_it.txt file"
    else
        echo "Nothing to be done here"
    endif
endfun

" ============================================================================================================
" COMMANDES
" ============================================================================================================
command! Done call g:Done()

" ============================================================================================================
" AUGROUP
" ============================================================================================================
