""*****************************************************************************
"" NERDTREE CONFIGURATION
""*****************************************************************************
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusWithFlags = 1

let g:NERDTreeHighlightCursorline = 1
let g:nerdtree_sync_cursorline = 1

" close if nerdtree is last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" make sure vim does not open files and other buffers on NerdTree window?
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
let g:plug_window = 'noautocmd vertical topleft new'
