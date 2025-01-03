# NeoVim Config

Repositório Neovim -> <https://github.com/neovim/neovim>

## TODO

- arrumar os keymaps
- adicionar um comentário em cada um dos keymaps criados
- mudar o tipo de dropdown do telescope no current_buff

- fazer 3 tipos de configs:
  - Padrão -> a configuração que utilizo na minha máquina pessoal
  - Minimal -> apenas as configurações que julgo necessárias
  - VimLike -> Mesma configuração do meu VIM porém em lua

## Pacotes

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
- nvim-tmux-navigation -> nvim + tmux
- folke/trouble.nvim -> ferramenta para erros no código
- folke/zen-mode.nvim -> codar no nvim sem distração
- m4xshen/hardtime.nvim -> desabilita certas funções para tirar seus mals habitos no neovim
- tris203/precognition.nvim -> mostra dicas de navegação
- oil.nvim
- mini.hipatterns
- inc-rename.nvim
- refactoring.nvim
- whichkey
- vim-surround
- nvim-notify
- nvim-autopairs
- folke/noice.nvim

## Setup

### Comando

    git clone https://github.com/IanSantosOS/neovim-config.git nvim

### Diretório

Windows:

    ~/AppData/Local/nvim/

Linux:

    ~/.config/nvim/

## Referências

### Websites

- [How to disable builtin plugins](https://neovim.discourse.group/t/how-to-disable-builtin-plugins/787/6)
- [Split windows in neovim](https://vimcasts.org/blog/2013/01/oil-and-vinegar-split-windows-and-project-drawer/)

### Repositórios

- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
- [Nvim Starter Kit](https://github.com/bcampolo/nvim-starter-kit)
- [Shock9616](https://github.com/Shock9616/nvim-config)
- [Typecraft](https://github.com/cpow/neovim-for-newbs)
- [TJ DeVries](https://github.com/tjdevries/config.nvim)
- [ThePrimeagen](https://github.com/ThePrimeagen/init.lua)
- [Linux Dabler](https://gitlab.com/linuxdabbler/dotfiles/-/blob/main/.config/nvim/init.lua)

### Vídeos

#### Nerd Signals

- [Fix Your BAD Vim Habits - Neovim Plugin Spotlight - Hardtime + Precognition](https://www.youtube.com/watch?v=7hQZhHve4HI)

#### Linux Dabbler

- [Pluginless Neovim](https://www.youtube.com/watch?v=I5kT2c2XX38)

#### Typecraft

- [Playlist | Neovim for Newbs. FREE NEOVIM COURSE](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn)
- [Neovim and Git: SOLVED](https://www.youtube.com/watch?v=zOQMwWqdp9w)
- [My Forever Dev Workflow | Neovim + Tmux](https://www.youtube.com/watch?v=_YaI2vDbk0o)

#### TJ DeVries

- [The Only Video You Need to Get Started with Neovim](https://www.youtube.com/watch?v=m8C0Cq9Uv9o)
- [My neovim autocomplete setup: explained](https://www.youtube.com/watch?v=22mrSjknDHI)
- [I Rewrote My Entire Neovim Config...](https://www.youtube.com/watch?v=kJVqxFnhIuw)

#### Theprimeagen

- [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE)
- [Revamp Neovim RC | Part 1 - Lazy Vim](https://www.youtube.com/watch?v=ZWWxwwUsPNw)
- [Revamp Neovim RC | Part 2 - Awesome Remaps and Restructuring Lazy Vim](https://www.youtube.com/watch?v=c0Xmd4PGino)
- [Revamp Neovim RC | Part 3 - LSP](https://www.youtube.com/watch?v=MuUrCcvE-Yw)
