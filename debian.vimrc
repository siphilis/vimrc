
"---------------------- Vimrc file from Siphillis ----------------------------
"-------------------------- janvier 2017 -------------------------------------

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" The following is for pathogen package manager

execute pathogen#infect()
filetype plugin indent on

" Show statusbar
set laststatus=2

" Adviced conf from vim for humans

"---------- Affichage
set title		" Met a jour le titre du terminal
set number		" Affiche le numero de ligne
set ruler		" Affiche la position actuelle du curseur
set wrap		" Affiche les lignes trop longues sur plusieur lignes
set scrolloff=3		" Affiche un minimum de 3 lignes autour du curseur
syntax enable		" Active la coloration syntaxique

"---------- Recherche
set ignorecase		" Ignore la casse lors d'une recherche
set smartcase		" Sauf si la recherche contient une majuscule
set incsearch		" Surligne le resultat pendant la saisie
set hlsearch		" Surligne le resultat de la recherche

"---------- Beep
set visualbell		" Empeche vim de beeper
set noerrorbells	" Empeche vim de beeper

" Cache les fichiers lors de l'ouverture d'un autre
set hidden

" Active les comportements specifiques au types de fichiers comme
" la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on
" Change la couleur de fond a 80 colonnes
set colorcolumn=80

" Utilise le theme solarized
set background=dark
colorscheme solarized

" Utilise le theme spacemacs (a pas l'air de marcher)
" if (has("termguicolor"))
"	set termguicolors
"endif
"set background=dark
"colorscheme spacemacs-theme

" Affiche les commandes incompletes
set showcmd

" Desactive les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Remplacer la touche echap par ;;
map ;; <Esc>
imap ;; <Esc>

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

" Configuration de smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Fonction pour pouvoir coller du code sans problemes
function! IndentToggle()
	if(&paste == 1)
		set nopaste
	else
		set paste
	endif
endfunc

" Raccourci pour utiliser la fonction IndentToggle
nnoremap <C-l> :call IndentToggle() <cr>

" Regle l'affichage des tabulations sur 4 espaces
set tabstop=4
