# Discord Update Script

A bash script to automatically update Discord on Linux systems.

## 📝 Description

This script downloads the latest Discord version from the official source and installs it to `/usr/share/discord`, updating the desktop entry and binary symlink.

## 📦 Files

- `updateDiscord` - Main update script

## 🚀 Usage

```bash
./updateDiscord
```

## ⚙️ What it does

1. Downloads the latest Discord tarball from discord.com
2. Extracts the archive to `/tmp`
3. Removes old Discord installation from `/usr/share/discord`
4. Moves new Discord files to `/usr/share/discord`
5. Updates desktop entry to `~/.local/share/applications`
6. Updates the `/bin/discord` symlink

## ⚠️ Requirements

- `wget` installed
- `sudo` privileges
- Internet connection

## 🔐 Permissions

Make the script executable:

```bash
chmod +x updateDiscord
```

## 📍 Installation Locations

- Binary: `/usr/share/discord/discord`
- Desktop Entry: `~/.local/share/applications/discord.desktop`
- Symlink: `/bin/discord`