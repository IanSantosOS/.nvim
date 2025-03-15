# IanSantosOS' Main Config

This is where my main Neovim config lives.

## Things I have to do

- mudar a minha configuração inteira para inglês
- verificar as boas práticas de plugin na [documentação developer](https://lazy.folke.io/developers)
- adicionar o `vim.notify()` nos keymaps que necessitam (principalmente os de
  toggle)

- fazer 4 tipos de configs:
    - notepad -> Configurações para utilizar nvim como o meu notepad
    - no-plugin -> Mesma configuração do meu VIM porém em lua

- adicionar melhores keymaps e configurações para os plugins:
    - bullets
    - hardtime
    - obsidian
    - vim-pencil
    - vim-table-mode
    - inc-rename
    - precognition

- arrumar os cabeçalhos de plugins para ficar o mesmo tipo em todos eles (veja
  os plugins de lsp, vim-be-good e telescope)
- adicionar uma descrição para cada plugin (veja o exemplo do vim-be-good)
- verificar as referências e deixar apenas o que for necessário
- criar um "Toggle stay-centered" para o nvim nativo

## Plugins

Package Manager: <https://github.com/folke/lazy.nvim>

### Utils

- [Auto-Save](https://github.com/okuuva/auto-save.nvim)
- [Cloak](https://github.com/laytan/cloak.nvim)
- [CMP LuaSnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Harpoon 2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
- [Inc Rename](https://github.com/smjonas/inc-rename.nvim)
- [L3MON4AD3 LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [Mason](https://github.com/williamboman/mason.nvim)
- [None LS / Null LS](https://github.com/nvimtools/none-ls.nvim)
- [Nvim CMP](https://github.com/hrsh7th/nvim-cmp)
- [Nvim Lspconfig](https://github.com/neovim/nvim-lspconfig)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Undotree](https://github.com/mbbill/undotree)
- [Vim be Good](https://github.com/ThePrimeagen/vim-be-good)
- [Vim Fugitive](https://github.com/tpope/vim-fugitive)
- [Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)

### Markdown

- [Bullets](https://github.com/bullets-vim/bullets.vim)
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)
- [Obsidian](https://github.com/epwalsh/obsidian.nvim)
- [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [Vim Pencil](https://github.com/preservim/vim-pencil)
- [Vim Table Mode](https://github.com/dhruvasagar/vim-table-mode)

### Eye Candy

- [Cellular Automaton](https://github.com/eandrju/cellular-automaton.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Noice](https://github.com/folke/noice.nvim)
- [Nvim Notify](https://github.com/rcarriga/nvim-notify)
- [Stay Centered](https://github.com/arnamak/stay-centered.nvim)

#### Colorscheme

- [Bamboo](https://github.com/ribru17/bamboo.nvim)
- [Catppuccin](https://github.com/catppuccin/catppuccin)
- [JB](https://github.com/nickkadutskyi/jb.nvim)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
- [Onedark](https://github.com/navarasu/onedark.nvim)
- [Rose Pine](https://github.com/rose-pine/neovim)

### Mini.nvim

- [ai](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md)
- [align](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-align.md)
- [bracketed](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-bracketed.md)
- [clue](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-clue.md)
- [diff](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-diff.md)
- [extra](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-extra.md)
- [files](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md)
- [hipatterns](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-hipatterns.md)
- [icons](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-icons.md)
- [notify](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-notify.md)
- [pairs](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md)
- [pick](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pick.md)
- [statusline](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-statusline.md)
- [surround](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md)

### Pacotes para dar uma olhada depois

- plugins do [Tpope](https://github.com/tpope)
- neotest -> testes dentro do neovim
- folke/trouble.nvim -> ferramenta para erros no código
- refactoring.nvim
- nvim-autopairs
- MeanderingProgrammer/harpoon-core.nvim
- hedyhli/outline.nvim
- HakonHarnes/img-clip.nvim
- 3rd/image.nvim
- https://github.com/folke/snacks.nvim (especialmente o snacks.picker)

