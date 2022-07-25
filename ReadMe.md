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
![alt text](https://github.com/andreleblanc11/dotfiles/blob/master/Preview/Rice_Screenshot1.png)
![alt text](https://github.com/andreleblanc11/dotfiles/blob/master/Preview/Rice_Screenshot2.png)

## Notes
***
- Application launcher still contains a bug. The background of each element is *white* at every odd number.
- I will try to integrate [PyWal](https://github.com/dylanaraps/pywal) later on.
- My set up is configured for two monitors. If you only use one monitor, use you can modify the **bspwmrc** accordingly.
```
bspc monitor eDP-1 -d  1 2 3 4 5 6
```
and removing the following lines
```
#
# Dual monitor setup
#
if [ -x $HOME/bin/DualMonitorSetUp.sh ];then
        exec DualMonitorSetUp.sh
fi
```

## Download and installation
***
- This is my first time doing dot files. These probably won't be perfect haha.

```
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

