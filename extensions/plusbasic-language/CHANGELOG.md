# Change Log

## [0.2.3] - 2026-01-09

### Fixed
- SET, LOAD, and SAVE multi-word commands now highlight correctly as keywords
- Reordered keyword pattern evaluation to ensure longer multi-word patterns match before single-word variants
- Commands like SET FNKEY, LOAD COLORMAP, and SAVE SCREEN now highlight completely blue

## [0.2.2] - 2026-01-09

### Changed
- String literals are now restricted to single lines; unclosed quotes no longer span into subsequent lines
- Prevents malformed strings in unit test scripts from affecting syntax highlighting of following lines

## [0.2.1] - 2026-01-09

### Added
- List token keywords: ATTRLIST, PALETTELIST, RGBLIST, TILELIST for use with DEF and APPEND statements
- Joystick helper functions: JOYD, JOYJ, JOYK, JOYL, JOYP, JOYR, JOYU
- Extended Bluetooth controller functions: JOYBA, JOYBB, JOYBG, JOYBL, JOYBM, JOYBR, JOYBS, JOYBT, JOYBU, JOYBV, JOYBX, JOYBY, JOYDD, JOYDL, JOYDR, JOYDU, JOYLT, JOYLX, JOYLY, JOYRT, JOYRX, JOYRY

## [0.0.4] - 2026-01-07

### Fixed
- String functions ending with `$` (like `MID$`, `ARGS$`, `ERR$`, `LEFT$`, `RIGHT$`, `HEX$`, `BIN$`, `CHR$`, `STR$`, `DATE$`, `TIME$`, etc.) are now properly recognized as built-in functions instead of being treated as user-defined string variables
- All built-in string functions now receive proper keyword highlighting with bright blue color

### Changed
- Reorganized and alphabetized function patterns for better maintainability
- Added comprehensive coverage of all plusBASIC string functions from official documentation

## [0.0.3] - 2026-01-07

### Changed
- Enhanced keyword visibility with bright blue color (#5596ff) and bold font style
- All core keywords (PRINT, SET, CLEAR, DIM, INPUT, etc.) now use brighter, more visible blue highlighting

## [0.0.2] - 2026-01-07

### Changed
- Switched from standalone theme to `configurationDefaults` for theme-agnostic color injection
- Colors now work universally with any user theme, not just the dedicated plusBASIC theme

### Added
- Line reference highlighting in medium cyan (#00a3a3) after GOTO, GOSUB, and THEN keywords
- Label recognition for identifiers beginning with underscore (e.g., `_MAINLOOP`)
- Cyan color differentiation: dark cyan (#007070) for line numbers, medium cyan (#00a3a3) for references and labels

## [0.0.1] - 2026-01-07

### Added
- Initial release
- Syntax highlighting for plusBASIC with 100+ keywords organized by category
- Support for standard BASIC keywords and plusBASIC-specific commands
- Line number recognition at beginning of lines (dark cyan color)
- Comment support (REM and ')
- Auto-closing brackets and quotes
- Build automation with Ctrl+Shift+B
- Non-interactive packaging script with Node.js PATH auto-detection
