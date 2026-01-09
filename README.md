# plusBASIC VS Code Extension

A Visual Studio Code extension providing comprehensive syntax highlighting and language support for plusBASIC - a powerful BASIC variant for the Aquarius+ computer system.

## Quick Links

- **[Extension README](extensions/plusbasic-language/README.md)** - Features, installation, and usage
- **[Contributing Guide](CONTRIBUTING.md)** - How to contribute to this project
- **[Changelog](extensions/plusbasic-language/CHANGELOG.md)** - Version history

## About plusBASIC

plusBASIC is a modern BASIC language for the Aquarius+ retro computer. This extension provides full syntax highlighting and editing support for `.bas` files.

### Language Reference

The primary language reference is maintained in the **AquariusPlus** submodule:

📁 **`AquariusPlus/plusBasic/`** - The authoritative source for plusBASIC language documentation

Key reference files:
- [`AquariusPlus/plusBasic/README.md`](AquariusPlus/plusBasic/README.md) - plusBASIC overview and documentation
- [`AquariusPlus/plusBasic/quickref.md`](AquariusPlus/plusBasic/quickref.md) - Quick reference guide
- [`AquariusPlus/plusBasic/releases.md`](AquariusPlus/plusBasic/releases.md) - Version history and changes
- [`AquariusPlus/plusBasic/revisions.md`](AquariusPlus/plusBasic/revisions.md) - Detailed revision notes

**Important for Contributors:** When adding or updating language features in this extension, always reference the `AquariusPlus/plusBasic/` folder for accurate keyword definitions, syntax rules, and command documentation. This ensures the extension stays in sync with the official plusBASIC language specification.

## Project Structure

```
plusBASIC-VSCode-Extension/
├── extensions/
│   └── plusbasic-language/       # Main extension
│       ├── syntaxes/
│       │   └── plusbasic.tmLanguage.json  # Syntax grammar (UPDATE THIS)
│       ├── package.json          # Extension manifest
│       └── README.md             # User documentation
├── AquariusPlus/                 # Git submodule (LANGUAGE REFERENCE)
│   └── plusBasic/                # ⭐ PRIMARY LANGUAGE REFERENCE ⭐
│       ├── README.md             # Language documentation
│       ├── quickref.md           # Quick reference
│       └── ...                   # Additional language resources
├── CONTRIBUTING.md               # Development guide
└── README.md                     # This file
```

## Installation

See the [Extension README](extensions/plusbasic-language/README.md#installation) for installation instructions.

## For AI Agents and Future Reference

**🎯 Critical Information:**

When working on this extension, the **most important folder** is:

```
AquariusPlus/plusBasic/
```

This folder contains:
- Official plusBASIC language specification
- Command and keyword references
- Syntax documentation
- Version history and changes

**Before modifying syntax highlighting:**
1. Check `AquariusPlus/plusBasic/quickref.md` for current keywords
2. Review `AquariusPlus/plusBasic/README.md` for syntax rules
3. Reference `AquariusPlus/plusBasic/releases.md` for new features
4. Update `extensions/plusbasic-language/syntaxes/plusbasic.tmLanguage.json` accordingly

**To update the language reference:**
```bash
git submodule update --remote AquariusPlus
```

## Development

See [CONTRIBUTING.md](CONTRIBUTING.md) for complete development setup and guidelines.

Quick start:
1. Clone this repository with submodules
2. Press `Ctrl+Shift+B` to build
3. Install the generated `.vsix` file

## License

This extension is provided as-is for the Aquarius+ community.

The AquariusPlus submodule is maintained by [RevCurtisP](https://github.com/RevCurtisP/AquariusPlus).
