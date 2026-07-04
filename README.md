# dotfiles
____

## Usage

- Make sure you have Neovim (v0.12+) and the external `tree-sitter-cli` dependency installed on your system.
- Some major installation methods for treesitter-cli package listed below.
- Similarly you can install Neovim ,nodejs ,npm if not already installed 
```
sudo apt update && sudo apt install tree-sitter-cli # For debian based distros 
```

```
sudo pacman -S tree-sitter # For arch based distros
```

```
sudo dnf install tree-sitter-cli # For fedora
```

```
npm install -g tree-sitter-cli # Universal Node.js installtion method 
                               # This works on  Termux if node.js is installed 
```

- To use the nvim config for current user paste this in terminal.
```
git clone https://github.com/foxpupfr/dotfiles.git      # Clones the repo

mv ~/.config/nvim ~/.config/nvim.backup      # Backups old config

cp -r dotfiles/nvim ~/.config       # Installs the config in your .config
```
- To restore old nvim config 
```
rm -rf ~/.config/nvim 

mv ~/.config/nvim.backup ~/.config/nvim
```

- To use the kitty config for current user paste this in the terminal 
```
git clone https://github.com/foxpupfr/dotfiles.git      # Clones the repo

mv ~/.config/kitty ~/.config/kitty.backup      # Backups old config

cp -r dotfiles/kitty ~/.config      # Installs the config in your .config
```

- To restore old kitty config 
```
rm -rf ~/.config/kitty 

mv ~/.config/kitty.backup ~/.config/kitty
```

- You will have to install lsp server manually and add `vim.lsp.enable("<name-of-lsp-server>")` in your `~/.config/nvim/init.lua`

### Keybinds
- `<space>` has been assigned as the leaderkey

#### In normal mode
- For nvim-telescope-grep use  `<space> + fg`
- For nvim-telescope-fuzzyfind use `<space> + ff`
- For nvim-filetree-open use `<space> + fs + <enter>` to open filetree.
- For nvim-filetree-close use `<space> + fe + <enter>` to close filetree.
- For onesearch use `<space> + ss`
- For aborting onesearch use `<Esc>`

### Commands
- For installing treesitter parser for syntax highlighting while in Neovim normal mode paste this, then exit and reopen Neovim.
```:TSInstall <language-name>```
- Example

```:TSInstall python```
```:TSInstall rust```


## Remarks

### Neovim config 
- It uses lazy.nvim
- It has moderate number of plugins, all of them which I think are reasonable.
- Some of the small issues I had were solved with AI but its mostly done by me.

### Kitty config
- It is my just favorite Kitty config.


