# BSPWM dotfiles

***

-   **WM** : [bspwm](https://github.com/baskerville/bspwm)
-   **Shell** : bash
-   **Terminal** : [alacritty](https://github.com/alacritty/alacritty)
	- Font: [nerd fonts](https://github.com/ryanoasis/nerd-fonts)
	- Color Scheme: [nightfly](https://github.com/bluz71/vim-nightfly-guicolors)
-   **Panel** : [polybar](https://github.com/polybar/polybar)
-   **Compositor** : [picom-ibhagwan](https://github.com/ibhagwan/picom-ibhagwan-git)
-   **Application Launcher** : [Rofi](https://github.com/davatorium/rofi)
	- Icon themes: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
-   **Text Editor** : [vim](https://github.com/vim/vim)


## Preview

***

![Photo 1](https://github.com/andreleblanc11/dotfiles/blob/master/Preview/Rice_Screenshot1.jpg)
![Photo 2](https://github.com/andreleblanc11/dotfiles/blob/master/Preview/Rice_Screenshot2.jpg)
![Photo 3](https://github.com/andreleblanc11/dotfiles/blob/master/Preview/Rice_Screenshot3.jpg)

## Notes

***

### Git Hooks
- Git hooks have been added in the local repository accompanied with a script titled `pull_latest_changes.sh` which:
    - Pulls the latest changes in the local machines' file structure and auto-adds them inside the repository as needed.
- One git hook auto-runs this scrcipt as a `pre-commit`
- Another script executes `pacman -Q > Packages` as a `post-commit` to get the list of the latest packages installed.


### Directories

- `etc` directory corresponds to the contents inside the `/etc` directory locally.
- `bin` directory correspondes to `$HOME/bin`
- `.configs` directory correspondes to `$HOME/.config`


### Next Steps

- I will try to integrate [PyWal](https://github.com/dylanaraps/pywal) later on.


## Download and installation

- My set up is configured for three monitors. If you only use one monitor, use you can modify the **bspwmrc** accordingly.

``` shell
bspc monitor eDP-1 -d  1 2 3 4 5 6
```

and removing the following lines

```shell
#
# Dual monitor setup
#
if [ -x $HOME/bin/DualMonitorSetUp.sh ];then
        exec DualMonitorSetUp.sh
fi
```

***

- TODO: Update with smarter auto-install script.
- Execute the following commands to have a basis of the configuration files for installation. 

```shell
mkdir -p ~/.config && git clone https://github.com/andreleblanc11/BSPWM-dotfiles.git

cd BSPWM-dotfiles && cp -r configs/* ~/.config/

mkdir -p ~/Pictures/Wallpapers && cp -r Wallpapers/* ~/Pictures/Wallpapers/

mkdir ~/bin && cp -r bin/* ~/bin

cp xinitrc ~/.xinitrc
```

## Inspirations

***

[Dots with PyWal - MarsuPial-King](https://github.com/marsupial-king/my-arch-dots)

[Application Launcher and config files - JanLeigh](https://github.com/janleigh/dotfiles)

[BSPWM layout and config files -  n1elsen](https://github.com/n1els3n/bspwm-dotfiles)

