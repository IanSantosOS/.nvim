# NeoVim Config

Repositório Neovim -> <https://github.com/neovim/neovim>

## Things I have to do

- mudar a minha configuração inteira para inglês
- adicionar um comentário em cada um dos keymaps criados, todo comentário deve
  começar com \[P\] para eu saber que o comentário foi feito por mim e não pelo
  neovim ou por algum plugin
- atualizar a lista de plugins
- verificar as boas práticas de plugin na [documentação developer](https://lazy.folke.io/developers)

- fazer 4 tipos de configs:
  - minimal -> Apenas as configurações e plugins que julgo necessários
  - notepad -> Configurações para utilizar nvim como o meu notepad
  - no-plugin -> Mesma configuração do meu VIM porém em lua

## Pacotes

### Pacotes para dar uma olhada depois

- plugins do [Tpope](https://github.com/tpope)
- neotest -> testes dentro do neovim
- folke/trouble.nvim -> ferramenta para erros no código
- folke/zen-mode.nvim -> codar no nvim sem distração
- m4xshen/hardtime.nvim -> desabilita certas funções para tirar seus mals habitos no neovim
- tris203/precognition.nvim -> mostra dicas de navegação
- inc-rename.nvim
- refactoring.nvim
- vim-surround
- nvim-notify
- nvim-autopairs
- MeanderingProgrammer/harpoon-core.nvim
- folke/noice.nvim

## Setup

Windows:

```cmd
git clone https://github.com/IanSantosOS/.nvim.git $HOME\AppData\Local\nvim
```

Linux:

```sh
git clone https://github.com/IanSantosOS/.nvim.git $HOME/.config/nvim
```

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
- [linkarzu](https://github.com/linkarzu/dotfiles-latest/tree/main/neovim/neobean)
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
- [Playlist | Advent of Neovim](https://www.youtube.com/playlist?list=PLep05UYkc6wTyBe7kPjQFWVXTlhKeQejM)

#### Theprimeagen

- [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE)
- [Revamp Neovim RC | Part 1 - Lazy Vim](https://www.youtube.com/watch?v=ZWWxwwUsPNw)
- [Revamp Neovim RC | Part 2 - Awesome Remaps and Restructuring Lazy Vim](https://www.youtube.com/watch?v=c0Xmd4PGino)
- [Revamp Neovim RC | Part 3 - LSP](https://www.youtube.com/watch?v=MuUrCcvE-Yw)
