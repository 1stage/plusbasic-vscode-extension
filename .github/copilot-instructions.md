# GitHub Copilot Instructions for plusBASIC VS Code Extension

## Critical Project Context

### Primary Language Reference: AquariusPlus/plusBasic/ ⭐

**THE MOST IMPORTANT FOLDER IN THIS PROJECT:**

```
AquariusPlus/plusBasic/
```

This submodule folder contains the **authoritative specification** for the plusBASIC language. Before making ANY changes to syntax highlighting, keywords, or language features, you MUST reference this folder.

#### Key Reference Files (in priority order):

1. **`AquariusPlus/plusBasic/quickref.md`** - Complete command/keyword quick reference
2. **`AquariusPlus/plusBasic/README.md`** - Main language documentation
3. **`AquariusPlus/plusBasic/releases.md`** - Version history and new features  
4. **`AquariusPlus/plusBasic/revisions.md`** - Detailed revision notes

### Updating Language Reference

To get the latest plusBASIC specification:
```bash
git submodule update --remote AquariusPlus
```

## Extension Architecture

### File to Edit for Syntax Highlighting

**`extensions/plusbasic-language/syntaxes/plusbasic.tmLanguage.json`**

This TextMate grammar file controls ALL syntax highlighting. Structure:
- `patterns` array: Top-level matching rules
- `repository`: Named pattern definitions
- Scopes follow format: `keyword.control.plusbasic`, `entity.name.function.plusbasic`, etc.

### Important Scope Patterns

- `constant.numeric.line-number.plusbasic` - Line numbers at start of lines (dark cyan #007070)
- `constant.numeric.line-reference.plusbasic` - Line refs after GOTO/GOSUB (medium cyan #00a3a3)
- `entity.name.label.plusbasic` - Labels starting with `_` (medium cyan)
- `keyword.control.plusbasic` - Keywords like IF, THEN, GOTO (bright blue #5596ff, bold)
- `entity.name.function.plusbasic` - Built-in functions ending with `$`

### Adding New Keywords

1. **Verify in reference first**: Check `AquariusPlus/plusBasic/quickref.md`
2. **Find the correct pattern group** in `plusbasic.tmLanguage.json`
3. **Update the regex** (keywords are `\b(?i:keyword1|keyword2)\b`)
4. **Test thoroughly** with sample `.bas` files from `AquariusPlus/plusBasic/` examples
5. **Update version** in `package.json` (semantic versioning)
6. **Document in** `CHANGELOG.md`

## Build Process

- **Build command**: `Ctrl+Shift+B` or run task "Package plusBASIC extension"
- **Build script**: `extensions/plusbasic-language/package.ps1`
- **Output**: `extensions/plusbasic-language/plusbasic-language.vsix`
- **Note**: `.vsix` files are gitignored (binary artifacts, not source)

## Testing Checklist

After making changes:
1. Build the extension (`Ctrl+Shift+B`)
2. Install via "Extensions: Install from VSIX..."
3. Test with `.bas` files (check `AquariusPlus/plusBasic/` for examples)
4. Verify:
   - Keywords highlighted correctly
   - Line numbers show proper colors
   - Comments work (REM and ')
   - No console errors
   - Functions with `$` recognized as keywords, not variables

## File Organization

```
plusBASIC-VSCode-Extension/
├── .github/
│   └── copilot-instructions.md    # This file
├── extensions/
│   └── plusbasic-language/
│       ├── syntaxes/
│       │   └── plusbasic.tmLanguage.json  # ← EDIT THIS for syntax
│       ├── language-configuration.json    # Comments, brackets, etc.
│       ├── package.json                   # Extension manifest
│       ├── package.ps1                    # Build script
│       └── README.md                      # User documentation
├── AquariusPlus/                 # Git submodule
│   └── plusBasic/                # ⭐ LANGUAGE REFERENCE ⭐
│       ├── quickref.md           # ← CHECK THIS FIRST
│       ├── README.md
│       └── releases.md
├── CONTRIBUTING.md               # Developer guide
└── README.md                     # Project overview
```

## Version Control Notes

- `.vscode/` folder is gitignored (local workspace settings)
- `.gitignore` itself is gitignored (local only)
- `.vsix` files excluded (build artifacts)
- `AquariusPlus/` is a git submodule - use `git submodule update --remote` to update

## Common Tasks

### Add a new plusBASIC keyword
1. Confirm it exists in `AquariusPlus/plusBasic/quickref.md`
2. Open `extensions/plusbasic-language/syntaxes/plusbasic.tmLanguage.json`
3. Find the appropriate keyword pattern (e.g., `keyword.control.flow.plusbasic`)
4. Add keyword to the regex: `\b(?i:existing|newkeyword)\b`
5. Build and test

### Update language reference from upstream
```bash
cd AquariusPlus
git pull origin main
cd ..
git add AquariusPlus
git commit -m "Update AquariusPlus submodule to latest"
```

### Create a release
1. Update version in `package.json`
2. Update `CHANGELOG.md`
3. Build: `Ctrl+Shift+B`
4. Create GitHub release
5. Attach the `.vsix` file

## Important Rules

1. **NEVER modify syntax without checking `AquariusPlus/plusBasic/` reference**
2. **ALL keywords must be case-insensitive** (use `(?i:...)` in regex)
3. **Functions ending with `$`** are built-in functions, NOT user variables
4. **Line numbers** have special highlighting rules (start of line vs. after GOTO/GOSUB)
5. **Always test** with real `.bas` files before committing

## Resources

- [VS Code Language Extension Guide](https://code.visualstudio.com/api/language-extensions/overview)
- [TextMate Grammar Documentation](https://macromates.com/manual/en/language_grammars)
- [VS Code Syntax Highlighting Guide](https://code.visualstudio.com/api/language-extensions/syntax-highlight-guide)
- [plusBASIC Official Reference](AquariusPlus/plusBasic/) - Local submodule
