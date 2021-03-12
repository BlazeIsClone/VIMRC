"                                ╔══╗╔╗  ╔═══╦════╦═══╗  ╔╗  ╔╦══╦═╗╔═╦═══╦═══╗
"                                ║╔╗║║║  ║╔═╗╠══╗═║╔══╝  ║╚╗╔╝╠╣╠╣║╚╝║║╔═╗║╔═╗║
"                                ║╚╝╚╣║  ║║ ║║ ╔╝╔╣╚══╗  ╚╗║║╔╝║║║╔╗╔╗║╚═╝║║ ╚╝
"                                ║╔═╗║║ ╔╣╚═╝║╔╝╔╝║╔══╝   ║╚╝║ ║║║║║║║║╔╗╔╣║ ╔╗
"                                ║╚═╝║╚═╝║╔═╗╠╝═╚═╣╚══╗  ╔╬╗╔╝╔╣╠╣║║║║║║║╚╣╚═╝║
"                                ╚═══╩═══╩╝ ╚╩════╩═══╝  ╚╝╚╝ ╚══╩╝╚╝╚╩╝╚═╩═══╝
"
syntax on
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set encoding=utf-8
set relativenumber
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
autocmd vimenter * NERDTree
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"Pretteir Remap
autocmd FileType javascript nmap <silent> <buffer> <leader>p :Prettier<CR>
"let g:prettier#quickfix_enabled = 0
"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"let g:prettier#autoformat_require_pragma = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let NERDTreeMinimalUI=1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
set t_Co=256
highlight LineNr ctermfg=grey
"Button Remap For Buffer Swiching
nnoremap <C-N> :bnext<CR>
nnoremap <C-B> :bprev<CR>
"Quite Vim With One Command
nnoremap <C-z> :qa!<CR>
"Terminal Command Presets
set splitbelow
set termwinsize=20x179
"NerdTree CMD
nmap <F6> :NERDTreeToggle<CR>
"Tag Bar Command
nmap <F8> :TagbarToggle<CR>
"Show hidden
let NERDTreeShowHidden=1 
let NERDTreeHighlightCursorline = 0
set lazyredraw
set nofoldenable
"No Recording
map q <Nop>

call plug#begin('~/.vim/plugged')
"Word under cursor will be searched if no argument is passed to Rg
Plug 'jremmen/vim-ripgrep'
"View man pages in vim. Grep for the man pages
Plug 'vim-utils/vim-man'
"File Search Ctrl + p
"Plug 'https://github.com/ctrlpvim/ctrlp.vim' 
"Color Theme
Plug 'morhetz/gruvbox'
"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Folder Tree
Plug 'preservim/nerdtree'
Plug 'townk/vim-autoclose'
"Css ColorSlector Display 
Plug 'gorodinskiy/vim-coloresque'
"Text Formatter 
Plug 'prettier/vim-prettier', { 'do': 'npm install' } 
"Syntax Colorscheame For Js
Plug 'yuezk/vim-js'
" ---> git commands within vim <---
Plug 'tpope/vim-fugitive'
" ---> git changes on the gutter <---
Plug 'airblade/vim-gitgutter'
"---> nerdtree git changes <---
 Plug 'Xuyuanp/nerdtree-git-plugin'
"Coc.vim AutoCompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Syntax Highlighter 
Plug 'sheerun/vim-polyglot'
"Theme Color 
Plug 'drewtempelmeyer/palenight.vim'
"Emmet - html:5 then ctrl y,
Plug 'mattn/emmet-vim'
"Dev Icons
Plug 'ryanoasis/vim-devicons'
"NerdTree Syntax Color 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Tab Bar
Plug 'drmingdrmer/vim-tabbar'
"Line Indentation
Plug 'yggdroot/indentline'
"JSX Syntax Support
Plug 'maxmellon/vim-jsx-pretty'
"TagBar
Plug 'preservim/tagbar'
"OmniSharp
Plug 'OmniSharp/omnisharp-vim'
"Linting For C#
Plug 'dense-analysis/ale'
call plug#end() 
let g:javascript_plugin_jsdoc = 1
"This will call the color Scheme for execution 
colorscheme gruvbox 
"Air-line Themes (uses Hack Font)
packloadall 
let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Airline Themes
"let g:airline_theme='dark'
"let g:airline_theme='badwolf'
"let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme='ubaryd'
"let g:airline_theme='laederon'
"let g:airline_theme='kolor'
"let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'
"let g:airline_theme='bubblegum'
let g:airline_theme='tomorrow'
                                                   
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "ae403f"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule "
let g:vim_jsx_pretty_colorful_config = 1

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
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

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" OmniSharp Setup
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :                                                                                                                    
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

"C# Linter
let g:ale_linters = {
      \ 'cs': ['OmniSharp'],
      \ 'javascript': ['flow-language-server']
      \}
let b:ale_linters = ['cs', 'flow-language-server']

autocmd FileType cs nmap <silent> <buffer> <leader>gd <Plug>(omnisharp_go_to_definition)
autocmd FileType cs nmap <silent> <buffer> <leader>rn <Plug>(omnisharp_rename)
autocmd FileType cs nmap <silent> <buffer> <leader>ff :OmniSharpCodeFormat<CR>

"Remap CocRestart
autocmd FileType * nmap <silent> <buffer> <leader>rr :CocRestart<CR>
