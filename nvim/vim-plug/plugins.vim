" Auto install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Color scheme
    Plug 'lifepillar/vim-solarized8'

    " Syntax Coloring
    Plug 'sheerun/vim-polyglot'

    " Better Comments
    Plug 'tomtom/tcomment_vim'

    " Documentation
    Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

    " Text Navigation
    Plug 'justinmk/vim-sneak'

    " Tags
    Plug 'ludovicchabant/vim-gutentags'

    " Text Modification
    " Inserting newline without going into Insert Mode (]<Space> and [<Space>)
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'

    " Have the file system follow you around
    Plug 'airblade/vim-rooter'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'

    " Telescope
    " Plug 'nvim-telescope/telescope.nvim'

    " Intellisense
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    " Plug 'glepnir/lspsaga.nvim'
    " Plug 'onsails/lspkind-nvim'
    " Plug 'kosayoda/nvim-lightbulb'
    " Plug 'mfussenegger/nvim-jdtls'
    " Plug 'mfussenegger/nvim-dap'

    " File Explorer
    " Plug 'kyazdani42/nvim-tree.lua'

    " Auto pairs for '(' '[' '{'

    " Cool Icons
    Plug 'onsails/lspkind-nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    " Plug 'ryanoasis/vim-devicons'

    " Indentation Guide
    Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}

    " Status Line
    " Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Snippets
    " Plug 'honza/vim-snippets'
    " Plug 'mattn/emmet-vim'

    " Interactive Code
    " Plug 'metakirby5/codi.vim'

    " Ranger
    " Plug 'kevinhwang91/rnvimr'

    " Better Tabline
    " Plug 'romgrk/barbar.nvim'

    " Find and replace
    " Plug 'brooth/far.vim'

    " Smooth Scroll
    Plug 'psliwka/vim-smoothie'

    " Vim Sessions
    Plug 'xolox/vim-session'
    Plug 'xolox/vim-misc'

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Switch between .h and .cpp
    Plug 'derekwyatt/vim-fswitch'

    " Note Taking
    Plug 'mtth/scratch.vim'

call plug#end()

