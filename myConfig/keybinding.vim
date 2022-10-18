"----------------------------------------------------------
" (part of) coc 
"----------------------------------------------------------

" key with g
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" lsp related
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-format-selected)
vmap <leader>f  <Plug>(coc-format-selected)
nnoremap <silent> K :call ShowDocumentation()<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

"----------------------------------------------------------
" custom map
"----------------------------------------------------------

nnoremap <silent> <leader>qq :bdelete!<CR>
nnoremap <silent> <leader>qa :qa!<CR>

nnoremap Z ZZ

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

nnoremap J j
vnoremap J j


"----------------------------------------------------------
" F key (function key)
"----------------------------------------------------------
nnoremap <silent> <F1> :wa<CR>:b#<CR>
nnoremap <silent> <F2> :wa<CR>:bp<CR>
nnoremap <silent> <F3> :wa<CR>:bn<CR>
nnoremap <silent> <F4> :wa<CR>

inoremap <silent> <F1> <ESC>:wa<CR>:b#<CR>
inoremap <silent> <F2> <ESC>:wa<CR>:bp<CR>
inoremap <silent> <F3> <ESC>:wa<CR>:bn<CR>
inoremap <silent> <F4> <ESC>:wa<CR>


nnoremap <silent> <F9> :NERDTreeToggle<cr>
nnoremap <silent> <F10> :wa<CR>:QFix<CR>

inoremap <silent> <F10> <ESC>:wa<CR>:QFix<CR>

"----------------------------------------------------------
" airline theme
"----------------------------------------------------------

" let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <silent> <leader>1 <Plug>AirlineSelectTab1
nmap <silent> <leader>2 <Plug>AirlineSelectTab2
nmap <silent> <leader>3 <Plug>AirlineSelectTab3
nmap <silent> <leader>4 <Plug>AirlineSelectTab4
nmap <silent> <leader>5 <Plug>AirlineSelectTab5
nmap <silent> <leader>6 <Plug>AirlineSelectTab6
nmap <silent> <leader>7 <Plug>AirlineSelectTab7
nmap <silent> <leader>8 <Plug>AirlineSelectTab8
nmap <silent> <leader>9 <Plug>AirlineSelectTab9

"----------------------------------------------------------
" LeaderF
"----------------------------------------------------------

let g:Lf_ShortcutF='<c-p>'
let g:Lf_ShortcutB='<c-l>'
nnoremap <leader>fm :LeaderfMru<cr>
nnoremap <leader>ff :LeaderfFunction<cr>
nnoremap <leader>fa :LeaderfFunctionAll<cr>
nnoremap <leader>ll :LeaderfLine<cr>
nnoremap <leader>la :LeaderfLineAll<cr>
nnoremap <leader>bt :LeaderfBufTag<cr>
nnoremap <leader>ba :LeaderfBufTagAll<cr>

let g:Lf_WindowHeight=0.30
let g:Lf_WorkingDirectoryMode='AF'
let g:Lf_RootMarkers=['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_ShowDevIcons = 0
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_WildIgnore = {
        \ 'dir': ['.cache', '.svn','.git','.hg','build'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}

"----------------------------------------------------------
" easymotion
"----------------------------------------------------------
" can integrate with incsearch but not here TODO
" <Leader>f{char} to move to {char}
map  <Leader>t <Plug>(easymotion-bd-f)
nmap <Leader>t <Plug>(easymotion-overwin-f)

" Move to word
map  <Leader>T <Plug>(easymotion-bd-w)
nmap <Leader>T <Plug>(easymotion-overwin-w)

"----------------------------------------------------------
" incsearch
"----------------------------------------------------------

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

function! s:noregexp(pattern) abort
  return '\V' . escape(a:pattern, '\')
endfunction

function! s:incsconfig() abort
  return {'converters': [function('s:noregexp')]}
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>incsconfig())
"----------------------------------------------------------
" vim-floaterm
"----------------------------------------------------------

let g:floaterm_wintype = 'split'
let g:floaterm_position = 'botright'
let g:floaterm_height = 12

"let g:floaterm_keymap_new    = '<F1>'
"let g:floaterm_keymap_prev   = '<F2>'
"let g:floaterm_keymap_next   = '<F3>'
let g:floaterm_keymap_toggle = '<C-t>'

hi Floaterm guibg=white ctermbg=NONE
hi FloatermBorder guibg=orange guifg=cyan

