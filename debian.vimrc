"---------------------- Vimrc file from Siphillis ----------------------------

"-------------------------- Fevrier 2017 -------------------------------------

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" The following is for pathogen package manager
execute pathogen#infect()
filetype plugin indent on

" Adviced conf from vim for humans

"----------------------------- AFFICHAGE -------------------------------------
syntax enable		" Active la coloration syntaxique
"set mouse=a			" Permet d'utiliser la souris
set title			" Met a jour le titre du terminal
set number			" Affiche le numero de ligne
set ruler			" Affiche la position actuelle du curseur
set wrap			" Affiche les lignes trop longues sur plusieur lignes
set scrolloff=3		" Affiche un minimum de 3 lignes autour du curseur
set tabstop=4		" Regle l'affichage des tabulations sur 4 espaces
colo solarized		" Utilise le theme solarized
set background=dark	" Utilise des couleurs adaptees pour fond noir	
set laststatus=2	" Affiche la bar de status
set colorcolumn=80	" Change la couleur de fond a 80 colonnes
set showcmd			" Affiche les commandes incompletes

"----------------------------- RECHERCHE ------------------------------------

set ignorecase		" Ignore la casse lors d'une recherche
set smartcase		" Sauf si la recherche contient une majuscule
set incsearch		" Surligne le resultat pendant la saisie
set hlsearch		" Surligne le resultat de la recherche

"---------- Beep
set visualbell		" Empeche vim de beeper
set noerrorbells	" Empeche vim de beeper

" Cache les fichiers lors de l'ouverture d'un autre
set hidden

" Desactive les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" Fonction pour passer la numérotation en mode relative "
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
	else
		set relativenumber
	endif
endfunc

" Raccourci permettant d'utiliser la fonction
nnoremap <C-n> :call NumberToggle()<cr>

" fonction pour pouvoir coller du code sans problemes
function! IndentToggle()
	if(&paste ==1)
		set nopaste
	else
		set paste
	endif
endfunc

" Raccourci clavier pour utiliser la fontion
nnoremap <C-l> :call IndentToggle() <cr>

" Regle l'affichage des tabulations sur 4 espaces
set tabstop=4
" from 90% without plugins
set path+=**
set wildmenu

" Raccourci pour creer les tags dans un fichier
command! MakeTags !ctags -R .

" Faire de netrw quelquechose de classe
let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1			" open splits to the right
let g:netrw_liststyle=3		" tree view
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=15
let g:netrw_localrmdir='rm -r -i'
