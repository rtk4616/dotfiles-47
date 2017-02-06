call plug#begin('~/.config/nvim/plugged')
" Color Schemes
Plug 'altercation/vim-colors-solarized'

" General
Plug 'neomake/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'haya14busa/incsearch.vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf.vim'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'travisjeffery/vim-auto-mkdir'

" Editing
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'ntpeters/vim-better-whitespace'

" Text Object Selection
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'

" Eyecandy
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" HTML
Plug 'othree/html5.vim'

" Ruby | Rails
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'

" Javascript
Plug 'elzr/vim-json'
Plug 'gavocanov/vim-js-indent'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" CSS | SCSS
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/csscomplete.vim'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Elixir
Plug 'elixir-lang/vim-elixir'

call plug#end()
