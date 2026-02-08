# Quote Widget

A bash script that fetches and displays random quotes from an API.

## 📝 Description

This widget fetches inspirational quotes from an API and displays them in the terminal with formatted text (bold quote, italic author).

## 📦 Files

- `quote_widget.sh` - Main quote fetching script

## ⚙️ Setup

### 1. Create `.env` file

Create a `.env` file in the same directory with your API credentials:

```bash
URL=https://api.api-ninjas.com/v1/quotes
CATEGORIES=inspirational
API_KEY=your_api_key_here
```

### 2. Get API Key

Sign up at [API Ninjas](https://api-ninjas.com/) to get your free API key.

### 3. Make executable

```bash
chmod +x quote_widget.sh
```

## 🚀 Usage

```bash
./quote_widget.sh
```

## 💡 Features

- Connection check before API call
- Formatted output with ANSI colors
- Environment variable support via `.env`
- Customizable quote categories

## ⚠️ Requirements

- `curl` - For API requests
- `jq` - For JSON parsing
- Internet connection
- API key from API Ninjas

## 📦 Install Dependencies

```bash
# Debian/Ubuntu
sudo apt install curl jq

# Arch Linux
sudo pacman -S curl jq
```

## 🎯 Example Output

```
The only way to do great work is to love what you do.
Steve Jobs
```

## 🔧 Customization

Modify the `CATEGORIES` variable in your `.env` file to change quote types:
- `inspirational`
- `motivational`
- `success`
- `happiness`
- etc.