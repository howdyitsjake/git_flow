# Universal Git Flow (gflow)

Simple Git workflow tool that works in **any** Git repository!

## 🎉 Installation Complete!

Git Flow is installed at: `~/git_flow/`

## 🚀 Usage

Navigate to **any** Git repository and use:

```bash
gflow -b    # Create branch
gflow -s    # Sync changes
gflow -m    # Merge to main
```

## 📖 Commands

### Create Branch
```bash
gflow -b
# or
gflow --branch
```

### Sync Changes
```bash
gflow -s
# or
gflow --sync
```

### Merge to Main
```bash
gflow -m
# or
gflow --merge
```

### Show Help
```bash
gflow
# or
gflow -h
# or
gflow --help
```

## 🌍 Works Anywhere!

```bash
# In project 1
cd ~/projects/website
gflow -b
# ✅ Works!

# In project 2
cd ~/code/api
gflow -s
# ✅ Works!

# In project 3
cd ~/apps/mobile
gflow -m
# ✅ Works!
```

## 🎯 Complete Example

```bash
# Navigate to any project
cd ~/projects/my-app

# Create feature branch
$ gflow -b
Enter: add-authentication
Choose: 1 (feature/)
✅ Created: feature/add-authentication

# Make changes, then sync
$ gflow -s
Message: Add login form
✅ Synced!

# Continue...
$ gflow -s
Message: Add authentication API
✅ Synced!

# Merge when done
$ gflow -m
Type 'yes': yes
✅ Merged to main!
```

## 🔧 Features

- ✅ **Universal** - Works in any Git repo
- ✅ **Super short** - Just `gflow` + flag
- ✅ **Color-coded** - Green/yellow/red output
- ✅ **Repo-aware** - Shows current repository name
- ✅ **Conflict prevention** - Always pulls latest main before branching
- ✅ **Uncommitted check** - Prompts to save changes before branching
- ✅ **Interactive** - Guides you through steps
- ✅ **Safe** - Requires "yes" for merge (not just "y")
- ✅ **Smart** - Auto-detects branch conflicts
- ✅ **Informative** - Shows summary before merge

## 📍 Installation Location

```
~/git_flow/
├── gflow          # Main executable
├── install.sh     # Installer script
└── README.md      # This file
```

## 🔄 Updating

If you need to update:

```bash
cd ~/git_flow
./install.sh
source ~/.zshrc
```

## 🆘 Troubleshooting

### "command not found: gflow"

**Solution:**
```bash
source ~/.zshrc
```

Or restart your terminal.

### "Not in a Git repository"

**Solution:** Navigate to a Git repo first:
```bash
cd /path/to/your/project
gflow -b
```

### Check if installed correctly

```bash
which gflow
# Should output: /Users/homebase/git_flow/gflow

gflow
# Should show help screen
```

## 🎓 Learning More

The tool is self-documenting. Run `gflow` in any repo to see:
- Current repository name
- Current branch
- Changed files count
- Available commands

## 💡 Pro Tips

1. **Use in any project** - CD to the repo first
2. **Sync frequently** - `gflow -s` after changes
3. **Good messages** - Descriptive commit messages
4. **Test before merge** - Make sure code works
5. **One feature per branch** - Keep changes focused

## 🎨 Shell Integration

Added to your shell config (`~/.zshrc`):
```bash
# Git Flow - Universal Git workflow tool
export PATH="$HOME/git_flow:$PATH"
```

## 📦 Uninstalling

To remove:
```bash
rm -rf ~/git_flow
```

Then remove these lines from `~/.zshrc`:
```bash
# Git Flow - Universal Git workflow tool
export PATH="$HOME/git_flow:$PATH"
```

---

**Enjoy simplified Git workflows across all your projects!** 🚀

Just three letters: `gflow` + flag. That's it!
