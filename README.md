# Dotfiles

This repository contains my main dotfiles used on Arch/Hyprland!

## Contents

1. [Requirements](#requirements)
1. [Usage](#usage)
    1. [Using GNU's Stow](#using-gnu-stow)
    1. [Using ln -s](#using-ln-s)

## Requirements

There are no major requirements to use these dotfiles! You only must have Arch and Hyprland installed on your pc!

Each folder contains a `.config` directory entry to a given service, for example:

```bash
.
├── hyprland    # Hyprland and family config files
├── kitty       # Kitty terminal config files
├── nvim        # Neovim config files
├── openrgb     # OpenRGB config files
├── starship    # Starship prompt toml file
├── waybar      # Waybar config and style
└── wofi        # Wofi config and style
```

If you don't have any of the services listed on the repository (might be different than the list above), make sure to install them via `pacman` or the AUR managers (`yay` or `paru`).

### Recommended

I strongly recommend the usage of GNU's `stow` for the creation of the symlinks on each of the config files, however, it's entirely possible use Linux's native `ln -s` command to create them. Both possibilities are listed on the [usage](#usage) section.

To install it, just run:

```bash
sudo pacman -S stow
```

## Usage

Below are a few different ways to symlink (read about it [here](https://www.man7.org/linux/man-pages/man2/symlink.2.html)) these config files and folders directly into your `.config` folder.

Before running any of the methods below, make sure the config file/folder doesn't already exist in the `~/.config` folder. Otherwise it will return an error and fail it's run. I suggest moving it to a `.bak` folder, and deleting it later if you want to:

```bash
mv ~/.config/<service_config> ~/.config/<service_config>.bak
```

After this step has been done, you can proceed with your preferred method.

### Using GNU Stow

For symlinking using GNU's `stow`, just simply run:

```bash
stow -t ~ <folder>
```

This will automatically create a symlink in your `~/.config` folder containing the configuration files present here!

### Using `ln -s`

For manual symlinking using `ln -s`, first find where this dotfiles repo is located using `pwd`:

```bash
pwd
```

After that, you must get the **whole** folder structure of the service you want, before symlinking. Supposing this repository is located in your home dir, it would look something like this:

```bash
ln -s ~/dotfiles/<service_here>/.config/<service_folder> ~/.config/<service_folder>
```

This will create the symlink on your `~/.config` containing the configuration folder/file presente in this repository.

---

[top](#contents)
