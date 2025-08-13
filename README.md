# Dotfiles

MacOs + Nvim

## 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Things included in this config

- Helpful niceties via lazyvim - popup windows etc.
- VSCode like language server support for javascript, typescript, ember etc.
- Interaction with databases via vim-datbod
- No file tree - use netrw instead
- Debugging capabilities with nvim-dap

## Window management + shortcuts for MacOS

- Use yabai for tiling window management
- Use skhd for shortcuts
- Use karabiner elements for remapping the hyper key

## Karabiner Elements

- To remap `caps_lock`-key to a special key-combo we use karabiner-elements.
  This is nice because no key-combination has been set for rcmd+rctrl. This
  makes window management with Yabai easy to shortcut.
- To get the `rcmd+rctrl`-key - you need to copy caps_lock_remap.json as a custom rule in complex modifications of karabiner-elements.
