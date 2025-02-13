# IanSantosOs' Main Config

This is where my main Neovim config lives.

## Things I have to do

- mudar a minha configuração inteira para inglês
- atualizar a lista de plugins
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
- criar um "Toggle stay-centered" para o nvim nativo

## Plugins

Package Manager > <https://github.com/folke/lazy.nvim>

| Pacotes                                                                           | Para que serve                                          |
| --------------------------------------------------------------------------------- | ------------------------------------------------------- |
| [Cloak](https://github.com/laytan/cloak.nvim)                                     | Serve para esconder caracteres no .env                  |
| [Bamboo](https://github.com/ribru17/bamboo.nvim)                                  | Colorscheme Theme :)                                    |
| [Rose Pine](https://github.com/rose-pine/neovim)                                  | Colorscheme Theme :)                                    |
| [Catppuccin](https://github.com/catppuccin/catppuccin)                            | Colorscheme Theme :)                                    |
| [Lualine](https://github.com/nvim-lualine/lualine.nvim)                           | Linha de status customizada :)                          |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim)                     | Navegação entre arquivos                                |
| [Harpoon 2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)                | Navegação entre arquivos guardados                      |
| [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                  | Sintaxe                                                 |
| [VimBeGood](https://github.com/ThePrimeagen/vim-be-good)                          | Treino para Vim Motions                                 |
| [Telescope UI Select](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Coisas core do nvim utilizando a interface do Telescope |
| [Nvim Lspconfig](https://github.com/neovim/nvim-lspconfig)                        | LSP                                                     |
| [Mason](https://github.com/williamboman/mason.nvim)                               | LSP, DAP, Linter and Formatter Installer                |
| [Mason LSP Config](https://github.com/williamboman/mason-lspconfig.nvim)          | LSP                                                     |
| [None LS / Null LS](https://github.com/nvimtools/none-ls.nvim)                    | Linter and Formatter                                    |
| [Nvim Cmp](https://github.com/hrsh7th/nvim-cmp)                                   | Autocompletion                                          |
| [L3MON4AD3 LuaSnip](https://github.com/L3MON4D3/LuaSnip)                          | Snippets                                                |
| [saadparwaiz1 LuaSnip](https://github.com/saadparwaiz1/cmp_luasnip)               | Snippets                                                |
| [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)              | Snippets                                                |
| [Vim-Fugitive](https://github.com/tpope/vim-fugitive)                             | Git commands dentro do Vim                              |
| [Git Signs](https://github.com/lewis6991/gitsigns.nvim)                           | Git bar signs                                           |
| [Undotree](https://github.com/mbbill/undotree)                                    | Uma undotree que mostra um histórico de alterações      |

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

