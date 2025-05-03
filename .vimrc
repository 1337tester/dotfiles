"cursors
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"set linenumbers
set nu

"setting syntax
syntax on
colorscheme monokai

"clipboard
set clipboard=unnamedplus

"fuzzy search
set path+=**
set wildmenu

"dictionary
set dictionary+=/usr/share/dict/words
	"ctrl-x ctrl-n -> complete nearest word from current file
	"ctrl-x ctrl-p -> choose from current file
	"ctrl-x ctrl-k

""file manager
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
"let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_winsize=25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END  
	":edit anyfile
	":Explore
	":tabnew Downloads/aaa
	"open in tab - t
	"open right - v
	"between windows - ctrl-w arrow left right up down

""persistent undo
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
    set undodir=~/.vim/undodir
  endif
endif

" relative numbers
:set relativenumber


""storing the aaa~ files into specific directory
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
