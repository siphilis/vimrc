"---------------------- Vimrc file from Siphillis ----------------------------

"-------------------------- janvier 2017 -------------------------------------

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

" Active la correction automatique
:setlocal spell 

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
