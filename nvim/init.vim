" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
" source $HOME/.config/nvim/general/functions.vim
" source $HOME/.config/nvim/general/paths.vim

" Plugin Configuration
" source $HOME/.config/nvim/plug-config/fzf-config.vim
source $HOME/.config/nvim/plug-config/vim-sneak-config.vim
source $HOME/.config/nvim/plug-config/vim-doge-config.vim
source $HOME/.config/nvim/plug-config/vim-fugitive-config.vim
source $HOME/.config/nvim/plug-config/vim-fswitch-config.vim
source $HOME/.config/nvim/plug-config/scratch-config.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/start-screen-config.vim
luafile $HOME/.config/nvim/lua/plugins/telescope-config.lua
luafile $HOME/.config/nvim/lua/plugins/kommentary.lua
luafile $HOME/.config/nvim/lua/plugins/diffview-config.lua
luafile $HOME/.config/nvim/lua/plugins/gitsigns.lua
luafile $HOME/.config/nvim/lua/plugins/lspkind.lua
luafile $HOME/.config/nvim/lua/plugins/lsp-signature-config.lua
" luafile $HOME/.config/nvim/lua/plugins/lightspeed.lua

luafile $HOME/.config/nvim/lua/plugins/nvim-bufferline.lua
luafile $HOME/.config/nvim/lua/plugins/galaxyline-config.lua
luafile $HOME/.config/nvim/lua/plugins/nvim-treesitter.lua

luafile $HOME/.config/nvim/lua/plugins/compe-config.lua
" LSP: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
" source $HOME/.config/nvim/plug-config/lsp-config.vim
luafile $HOME/.config/nvim/lua/lsp/lsp-config.lua
luafile $HOME/.config/nvim/lua/lsp/ccls-ls.lua
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
luafile $HOME/.config/nvim/lua/lsp/vim-ls.lua
" luafile $HOME/.config/nvim/lua/lsp/lua-ls.lua
" luafile $HOME/.config/nvim/lua/lsp/bash-ls.lua
" luafile $HOME/.config/nvim/lua/lsp/json-ls.lua

" Themes
" source $HOME/.config/nvim/themes/solarized8.vim
" source $HOME/.config/nvim/themes/miramare.vim
" luafile $HOME/.config/nvim/lua/themes/gruvbox.lua
luafile $HOME/.config/nvim/lua/themes/nord.lua
