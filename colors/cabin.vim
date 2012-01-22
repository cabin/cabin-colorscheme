" Cabin colorscheme
"
" Maintainer:	Zak Johnson <zak@hellocabin.com>
" Last Change:	2012-01-15
" URL: https://github.com/cabin/cabin-colorscheme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cabin"


" General VIM chrome.

hi Normal guifg=#8a8a8a guibg=#121212
hi Cursor guibg=#5fff87
hi MatchParen guifg=#5fff87 guibg=#000000
hi StatusLineNC gui=NONE guifg=#303030 guibg=#000000
hi VertSplit gui=NONE guifg=#000000 guibg=bg

function! s:StatusLine(focus)
  if exists("g:colors_name") && g:colors_name == "cabin"
    if a:focus
      hi StatusLine gui=NONE guifg=#d0d0d0 guibg=#000000
    else
      " Use reverse so Vim doesn't add markers to the active status line.
      hi StatusLine gui=REVERSE guibg=#303030 guifg=#000000
    endif
  endif
endfunction
call s:StatusLine(1)

" When another window has focus, no status line is current.
augroup cabin_colorscheme
    au!
    au FocusLost * call s:StatusLine(0)
    au FocusGained * call s:StatusLine(1)
augroup end

hi CursorColumn guibg=#080808
hi CursorLine guibg=#080808
hi ColorColumn guibg=#080808
hi LineNr guifg=#303030 guibg=#080808
hi SignColumn guifg=#303030 guibg=#080808
hi FoldColumn guifg=fg guibg=#080808
hi Folded guibg=bg guifg=#af8787

hi Pmenu guifg=bg guibg=fg
hi PmenuSel gui=NONE guifg=#000000 guibg=#005faf
hi WildMenu gui=bold guifg=bg guibg=fg

hi Search guibg=#afaf87
hi IncSearch guifg=#afaf87
hi Visual guifg=bg guibg=fg

hi NonText guifg=#005f87
hi SpecialKey guifg=#005f87

" TODO: refine
hi DiffAdd guibg=#262626
hi DiffDelete gui=NONE guibg=#000000 guifg=#444444
hi DiffChange guibg=#1c1c1c
hi DiffText NONE guibg=#303030

" Unchanged groups (from :help highlight-groups).
" Conceal	placeholder characters substituted for concealed text (see 'conceallevel')
" Directory	directory names (and other special names in listings)
" ErrorMsg	error messages on the command line
" ModeMsg	'showmode' message (e.g., "-- INSERT --")
" MoreMsg	|more-prompt|
" Question	|hit-enter| prompt and yes/no questions
" Title		titles for output from ":set all", ":autocmd" etc.
" WarningMsg	warning messages


" Syntax highlighting (from :help group-name).

hi Comment gui=italic guifg=#585858 guibg=bg
" TODO: Constant isn't in the 256-color palette.
hi Constant gui=NONE guifg=#8b002e guibg=bg
hi Identifier gui=NONE guifg=#875faf guibg=bg
hi Statement gui=bold guifg=#8787af guibg=bg
hi Type gui=NONE guifg=#5f5f87 guibg=bg
hi Operator gui=NONE guifg=#6c6c6c guibg=bg
hi PreProc guifg=#5f5faf
"hi Special guifg=#5f5f87  " TODO: Consider this instead
hi Special guifg=#5f8787

hi Underlined NONE  " TODO
hi Ignore NONE      " TODO
hi Error gui=NONE guifg=#b2b2b2 guibg=#af0000
hi Todo gui=bold guifg=#000000 guibg=#8787af
