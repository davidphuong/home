" Auto install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " ----------------- Accepted --------------------

    " Start Screen
    Plug 'mhinz/vim-startify'

    " Color Scheme
    Plug 'lifepillar/vim-solarized8'
    Plug 'franbach/miramare'

    " Syntax Coloring
    Plug 'sheerun/vim-polyglot'

    " Better Comments
    Plug 'b3nj5m1n/kommentary'

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

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'hrsh7th/nvim-compe'
    Plug 'ray-x/lsp_signature.nvim'

    " Cool Icons
    Plug 'onsails/lspkind-nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'

    " Indentation Guide
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Interactive Code
    Plug 'metakirby5/codi.vim'

    " Smooth Scroll
    Plug 'psliwka/vim-smoothie'

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    Plug 'sindrets/diffview.nvim'

    " Fuzzy Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " --------------- End Accepted ------------------


    " Plug 'glepnir/lspsaga.nvim'
    " Plug 'onsails/lspkind-nvim'
    " Plug 'kosayoda/nvim-lightbulb'
    " Plug 'mfussenegger/nvim-jdtls'
    " Plug 'mfussenegger/nvim-dap'










    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'


    " File Explorer
    " Plug 'kyazdani42/nvim-tree.lua'

    " Auto pairs for '(' '[' '{'




    " Snippets
    " Plug 'honza/vim-snippets'
    " Plug 'mattn/emmet-vim'


    " Better Tabline
    " Plug 'romgrk/barbar.nvim'

    " Find and replace
    " Plug 'brooth/far.vim'




    " Switch between .h and .cpp
    Plug 'derekwyatt/vim-fswitch'

    " Note Taking
    Plug 'mtth/scratch.vim'

    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Hex Coloring
    Plug 'ap/vim-css-color'

    " Vim Key Information
    Plug 'liuchengxu/vim-which-key'

    call plug#end()

