# Hyprland Configuration

Configuration files for the Hyprland dynamic tiling Wayland compositor.

## 📝 Files

- `hyprland.conf` - Main Hyprland configuration
- `hyprlock.conf` - Lock screen configuration
- `hyprpaper.conf` - Wallpaper configuration

## 💻 Monitor Setup

Configured for dual monitor setup:
- **eDP-1**: Laptop display (primary, positioned at 0x0)
- **HDMI-A-1**: External display (1920x1080, positioned at 1920x0)

## 🎯 Key Programs

- Terminal: `kitty`
- File Manager: `dolphin`
- Application Launcher: `wofi --show drun`

## 🎨 Theme

### Borders
- Active: Gradient from cyan to green (45°)
- Inactive: Gray
- Border size: 2px

### Gaps
- Inner gaps: 5px
- Outer gaps: 20px

### Effects
- Rounded corners: 10px
- Drop shadows enabled
- Blur enabled (3 passes)

## 🚀 Autostart

- `nm-applet` - Network Manager applet

## 🔒 Lock Screen

Custom lock screen labels for both monitors with blurred background.

## 🖼️ Wallpaper

Wallpaper loaded from `~/Downloads/background.jpg` (configured for HDMI-A-1)

## 📚 Resources

- [Hyprland Wiki](https://wiki.hyprland.org/)
- [Configuration Guide](https://wiki.hyprland.org/Configuring/Configuring-Hyprland/)

## 📦 Installation

```bash
mkdir -p ~/.config/hypr
cp hypr* ~/.config/hypr/
```