# Arch Linux i3wm Dotfiles

My personal i3 window manager configuration for Arch Linux.

## What's Included

- **i3wm** - Tiling window manager configuration
- **Polybar** - Status bar
- **Rofi** - Application launcher and power menu
- **Git** - Git configuration
- **Maim** - Screenshot tool configuration

## Screenshot Keybindings

- `Print` - Full screen screenshot → `~/Pictures/ScreenShots/`
- `Super+Print` - Active window screenshot → `~/Pictures/ScreenShots/`
- `Shift+Print` - Selection mode (drag to select) → `~/Pictures/ScreenShots/`
- `Ctrl+Print` - Full screen to clipboard

## Clipboard Manager

- `Super+C` - Toggle CopyQ clipboard history

## Quick Setup

### 1. Install Required Packages

```bash
# Install base packages
sudo pacman -S i3-wm i3status polybar rofi maim xclip copyq xdotool

# Install AUR helper if needed
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
```

### 2. Clone This Repository

```bash
# Backup existing config
mv ~/.config ~/.config.backup

# Clone dotfiles
git clone git@github.com:UjjavalParmar/dotfiles.git ~/.config
```

### 3. Install Optional Dependencies

```bash
# Terminal
sudo pacman -S gnome-terminal

# Browser (if using Brave)
yay -S brave-bin

# Fonts
sudo pacman -S ttf-dejavu ttf-font-awesome

# Network manager applet
sudo pacman -S network-manager-applet

# Screen locker
sudo pacman -S i3lock
```

### 4. Set Up i3 as Default

Add to `~/.xinitrc`:
```bash
exec i3
```

Or if using a display manager, select i3 from the session menu.

### 5. Reload Configuration

```bash
# Reload i3 config
i3-msg reload

# Or restart i3
i3-msg restart
```

## Directory Structure

```
.config/
├── i3/                      # i3 window manager
│   ├── config              # Main i3 configuration
│   └── i3status.conf       # i3status bar config
├── polybar/                 # Polybar status bar
│   ├── config.ini          # Polybar configuration
│   └── launch.sh           # Polybar launch script
├── rofi/                    # Rofi launcher & menus
│   ├── config.rasi         # Main rofi config
│   ├── colors/             # Color schemes
│   ├── images/             # Theme images
│   ├── launchers/type-5/   # Application launcher
│   ├── powermenu/type-2/   # Power menu
│   └── scripts/            # Launcher scripts
├── git/                     # Git configuration
│   └── ignore              # Global gitignore
└── mimeapps.list           # Default applications
```

## Key Bindings (i3)

### Basics
- `Super+Enter` - Open terminal
- `Super+T` - Open gnome-terminal
- `Super+B` - Open Brave browser
- `Super+Q` - Close window
- `Super+D` - Application launcher (Rofi)
- `Super+Y` - Power menu (Rofi)

### Window Management
- `Super+H` - Split horizontal
- `Super+V` - Split vertical
- `Super+F` - Fullscreen toggle
- `Super+Space` - Toggle floating

### Workspaces
- `Super+1-9,0` - Switch to workspace
- `Super+Shift+1-9,0` - Move window to workspace

### System
- `Super+Shift+C` - Reload config
- `Super+Shift+R` - Restart i3
- `Super+Shift+E` - Exit i3

## Customization

### Change Rofi Theme

Edit `~/.config/rofi/config.rasi` to change colors and styles.

### Modify Polybar

Edit `~/.config/polybar/config.ini` for bar customization.

### Screenshots Directory

Screenshots are saved to `~/Pictures/ScreenShots/` by default.  
To change, edit the screenshot keybindings in `~/.config/i3/config`.

## Troubleshooting

### Polybar not showing
```bash
~/.config/polybar/launch.sh
```

### Rofi launcher not working
```bash
# Test rofi
rofi -show drun
```

### Screenshots not working
```bash
# Verify maim is installed
which maim

# Create screenshots directory
mkdir -p ~/Pictures/ScreenShots
```

### CopyQ not starting
```bash
# Start manually
copyq &
```

## Repository

GitHub: https://github.com/UjjavalParmar/dotfiles

## License

Feel free to use and modify as needed.
