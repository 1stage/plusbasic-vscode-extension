# Contributing to plusBASIC Language Support

Thank you for your interest in contributing to the plusBASIC VS Code Extension! This document provides guidelines and instructions for contributing.

## Development Setup

### Prerequisites

- [Visual Studio Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)
- PowerShell (Windows) or Bash (Linux/Mac)

### Getting Started

1. **Fork and clone the repository**
   ```bash
   git clone https://github.com/1stage/plusBASIC-VSCode-Extension.git
   cd plusBASIC-VSCode-Extension
   ```

2. **Initialize submodules**
   ```bash
   git submodule update --init --recursive
   ```
   This will clone the AquariusPlus reference repository.

3. **Open in VS Code**
   ```bash
   code .
   ```

4. **Build the extension**
   - Press `Ctrl+Shift+B` (or run the "Package plusBASIC extension" task)
   - This generates the `.vsix` file in `extensions/plusbasic-language/`

5. **Test your changes**
   - Install the generated `.vsix` file using "Extensions: Install from VSIX..."
   - Open a `.bas` file to test syntax highlighting
   - Verify all language features work as expected

## Project Structure

```
plusBASIC-VSCode-Extension/
├── extensions/
│   └── plusbasic-language/       # Main extension code
│       ├── syntaxes/
│       │   └── plusbasic.tmLanguage.json  # Syntax highlighting grammar
│       ├── language-configuration.json    # Language configuration
│       ├── package.json                   # Extension manifest
│       ├── package.ps1                    # Build script
│       └── README.md                      # Extension documentation
├── AquariusPlus/                 # Git submodule (reference)
└── .vscode/                      # VS Code workspace settings
```

## Making Changes

### Updating Syntax Highlighting

1. Edit `extensions/plusbasic-language/syntaxes/plusbasic.tmLanguage.json`
2. Test by building and installing the extension
3. Compare against sample `.bas` files from the AquariusPlus submodule

### Adding Keywords or Functions

When adding new plusBASIC keywords:

1. Update the appropriate pattern in `plusbasic.tmLanguage.json`
2. Document the feature in `README.md` under the relevant section
3. Update version in `package.json` (see Versioning below)
4. Add an entry to `CHANGELOG.md`

### Language Configuration

Edit `language-configuration.json` to modify:
- Comment tokens
- Bracket pairs
- Auto-closing pairs
- Indentation rules

## Testing

Before submitting changes:

1. **Build the extension** (`Ctrl+Shift+B`)
2. **Install and test** with various `.bas` files
3. **Verify**:
   - Keywords are highlighted correctly
   - Line numbers appear in the correct color
   - Comments work properly
   - Auto-closing brackets/quotes function
   - No syntax highlighting errors in the console

## Versioning

We use [Semantic Versioning](https://semver.org/):

- **MAJOR** (1.0.0): Breaking changes
- **MINOR** (0.1.0): New features, backward compatible
- **PATCH** (0.0.1): Bug fixes, backward compatible

Update the version in `package.json` when making changes.

## Submitting Changes

1. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes**
   - Follow existing code style
   - Update documentation
   - Test thoroughly

3. **Commit your changes**
   ```bash
   git add .
   git commit -m "Description of changes"
   ```
   
   Use clear, descriptive commit messages:
   - `Add support for new BITMAP commands`
   - `Fix line number highlighting in nested IF statements`
   - `Update README with installation instructions`

4. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request**
   - Go to the [original repository](https://github.com/1stage/plusBASIC-VSCode-Extension)
   - Click "New Pull Request"
   - Describe your changes clearly
   - Reference any related issues

## Code Review Process

- Maintainers will review your PR
- Address any feedback or requested changes
- Once approved, your PR will be merged
- Your contribution will be included in the next release!

## Reporting Issues

Found a bug or have a feature request?

1. Check [existing issues](https://github.com/1stage/plusBASIC-VSCode-Extension/issues)
2. If not found, create a new issue with:
   - Clear, descriptive title
   - Steps to reproduce (for bugs)
   - Expected vs. actual behavior
   - VS Code version
   - Sample code demonstrating the issue

## Resources

- [VS Code Extension API](https://code.visualstudio.com/api)
- [TextMate Grammar Guide](https://macromates.com/manual/en/language_grammars)
- [AquariusPlus Documentation](https://github.com/RevCurtisP/AquariusPlus)
- [plusBASIC Reference](https://github.com/RevCurtisP/AquariusPlus) (see submodule)

## Questions?

Feel free to open an issue for questions or reach out to the maintainers.

Thank you for contributing to plusBASIC! 🚀
