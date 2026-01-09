# plusBASIC Language Support

Syntax highlighting and language support for plusBASIC - a BASIC variant for the Aquarius+ computer system.

## Installation

### From GitHub Releases (Recommended)

1. Download the latest `.vsix` file from the [Releases page](https://github.com/1stage/plusBASIC-VSCode-Extension/releases)
2. Open Visual Studio Code
3. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac) to open the Command Palette
4. Type **"Extensions: Install from VSIX..."** and select it
5. Browse to and select the downloaded `.vsix` file
6. Restart VS Code when prompted

### Manual Installation from Source

1. Clone this repository
2. Open the project in VS Code
3. Press `Ctrl+Shift+B` to build the extension
4. Install the generated `.vsix` file using the steps above

### Updates

When a new version is released, simply download and install the new `.vsix` file following the same installation steps. VS Code will automatically replace the old version.

## Features

- **Comprehensive syntax highlighting** for all plusBASIC keywords, functions, and commands
- **Smart color differentiation**:
  - Line numbers at start of lines: dark cyan (#007070)
  - Line references after GOTO/GOSUB/THEN: medium cyan (#00a3a3)
  - Labels (identifiers starting with `_`): medium cyan (#00a3a3)
  - Keywords: bright blue (#5596ff, bold)
  - Built-in functions with `$` suffix properly recognized as keywords (not variables)
- **Comment support** (REM and ')
- **Auto-closing brackets and quotes**
- **Bracket matching**
- **Theme-agnostic colors** - works with any VS Code theme
- **Build automation** - Press Ctrl+Shift+B to package the extension
- **Full support for graphics, sound, sprite, tile, and file operations**
- **Input/output and mouse/joystick functions**

## Supported File Extensions

- `.bas` - plusBASIC source files (plain text ASCII)
- `.baq` - Tokenized plusBASIC files (viewed as binary, but recognized)

## Language Features

This extension recognizes comprehensive plusBASIC syntax including:

### Control Flow Keywords
- `IF`, `THEN`, `ELSE`, `ELSEIF`, `END IF`, `FOR`, `TO`, `STEP`, `NEXT`
- `WHILE`, `WEND`, `DO`, `LOOP`
- `GOTO`, `GOSUB`, `RETURN`, `CONT`
- `ON ERROR`, `RESUME`, `ERROR`
- `SELECT`, `CASE`, `END SELECT`

### I/O Operations
- `INPUT`, `LINE INPUT`, `PRINT`, `LPRINT`
- `OPEN`, `CLOSE`, `GET`, `PUT`, `WRITE`, `READ`
- `LOCATE`, `CLS`, `COLOR`, `SCREEN`
- `LOAD`, `SAVE`, `LOAD DIR`, `DIR`, `APPEND`, `CLOAD`, `CSAVE`

### Graphics & Display
- **Bitmap**: `LOAD BITMAP`, `SAVE BITMAP`, `CLEAR BITMAP`, `FILL BITMAP`
- **Tilemap**: `LOAD TILEMAP`, `SAVE TILEMAP`, `SET TILEMAP`, `GET TILEMAP`, `PUT TILEMAP`, `FILL TILEMAP`
- **Sprites**: `SET SPRITE`, `RESET SPRITE`, `GETSPRITE`, `GETSPRITE$`, `GETSPRITEX`, `GETSPRITEY`
- **Tiles**: `LOAD TILESET`, `SET TILE`, `GETTILE$`, `TILEOFFSET`
- **Colors**: `PALETTE`, `LOAD PALETTE`, `SAVE PALETTE`, `SET PALETTE`
- **Character Sets**: `LOAD CHRSET`, `USE CHRSET`, `SET CHRDEF`, `RESET CHRDEF`, `GETCHRDEF$`
- **Screen**: `FILL SCREEN`, `GET SCREEN`, `PUT SCREEN`, `STASH SCREEN`, `SWAP SCREEN`
- **Colormap**: `LOAD COLORMAP`, `SAVE COLORMAP`, `FILL COLORMAP`
- **Scrolling**: `SET SCROLL`, `SCROLL SCREEN`, `SET TILEMAP OFFSET`

### Sound & Music
- `SOUND` - Generate tones
- `PLAY SAMPLE` - Play digital samples
- `PLAY TRACK`, `STOP TRACK`, `PAUSE TRACK`, `RESUME TRACK`, `LOOP TRACK` - Tracker playback
- `SET TRACK` - Configure tracker playback
- `PSG` - Direct PSG register access

### File Operations
- File I/O: `LOAD`, `SAVE`, `APPEND`, `COPY`, `COPY FILE`
- Directory: `DIR`, `LOAD DIR`, `CD`, `CD$`, `MKDIR`, `MKDIR`, `RENAME`, `DEL`
- File info: `FILELEN`, `FILEPOS`, `FILEDATETIME$`, `FILEATTR`, `FILEDIR$`, `FILEEXT$`, `FILESTATUS$`

### Input Devices
- Keyboard: `INKEY`, `INKEY$`, `UPRKEY`, `UPRKEY$`, `LWRKEY`, `LWRKEY$`, `KEY`
- Game Controllers: `JOY`, `JOY$`
- Mouse: `MOUSEX`, `MOUSEY`, `MOUSEB`, `MOUSEW`
- Settings: `SET KEY`, `SET KEY REPEAT`, `GET ARGS`, `ENDKEY`

### System & Configuration
- `SET FNKEY` - Define function key auto-type strings
- `SET BORDER`, `GETBORDERCHR`, `GETBORDERCHR$`, `GETBORDERCOLOR`, `GETBORDERCOLOR$`
- `SET CURSOR`, `SET BREAK`, `SET FAST`, `SET SPEED`, `SET SAVE`, `SET SOUND`, `SET USRINT`
- `GETSPEED`, `GETCOLOR`, `GETCURSOR`, `GETKEYREPEAT`, `GETSOUNDFAST`
- `CALL` - Execute machine language routines
- `USR` - Call user-defined functions
- `RUN` - Execute programs
- `ED`, `EDIT`, `TRON`, `TROFF` - Debugging
- `DUMP VARS` - System diagnostics

### String Functions
- Case conversion: `LWR`, `LWR$`, `UPR`, `UPR$`
- Trimming: `TRIM$`, `TRIML$`, `TRIMR$`
- Parsing: `SPLIT`, `JOIN`, `PAD$`
- Conversion: `HEX$`, `BIN$`, `DEC`, `STR$`, `VAL`, `CHR$`, `ASC`, `ASC$`
- Substring: `LEFT$`, `RIGHT$`, `MID$`, `INSTR`
- File path: `TRIMDIR$`, `TRIMEXT$`
- System: `ARGS$`, `ERR$`, `DATE$`, `TIME$`, `DATETIME$`, `LIST$`

**Note**: All built-in functions ending with `$` are properly recognized as keywords (bright blue, bold) and not treated as user-defined string variables.

### Mathematical Functions
- `ABS`, `INT`, `SQR`, `SIN`, `COS`, `TAN`, `ATN`, `EXP`, `LOG`, `RND`, `SGN`
- Type conversion: `FLOAT`, `FLOAT$`, `LONG`, `LONG$`, `WORD`, `WORD$`, `BYTE`

### Memory & Pointers
- `PEEK`, `PEEK$`, `POKE`, `DEEK`, `DOKE`
- `POKE COLOR`, `POKE SCREEN`
- `PEEKCOLOR`, `PEEKCOLOR$`, `PEEKSCREEN`, `PEEKSCREEN$`
- `VARDEF`, `VARPTR`, `STRPTR`
- Memory utilities: `IN`, `IN$`, `OUT`, `WAIT`

### Color & Palette
- `ATTR`, `ATTR$` - Build color attributes
- `RGB`, `RGB$` - RGB value functions
- `RGBDEC$`, `RGBHEX$` - RGB conversion

## Reference

For complete documentation, see the official plusBASIC reference:
- [Quick Reference Guide](https://github.com/RevCurtisP/AquariusPlus/blob/main/plusBasic/quickref.md)
- [Full Documentation](https://github.com/RevCurtisP/AquariusPlus/tree/main/plusBasic)

This project includes the AquariusPlus repository as a submodule for easy reference.
- Graphics: `SPRITE`, `PALETTE`, `TILE`, `SCROLL`, `VRAM`, `VPEEK`, `VPOKE`
- Input: `MOUSE`, `JOY`, `TRIGGER`

## Installation

1. Copy the `plusbasic-language` folder to your VS Code extensions directory:
   - Windows: `%USERPROFILE%\.vscode\extensions\`
   - macOS/Linux: `~/.vscode/extensions/`

2. Reload VS Code

3. Open any `.bas` file to see syntax highlighting

## Development

To modify the syntax highlighting:

1. Edit `syntaxes/plusbasic.tmLanguage.json`
2. Reload VS Code (Press F1, type "Reload Window", press Enter)

## Build / Package (create a VSIX)

1. Install Node.js (LTS) if not already installed.
2. Run the packaging script from the extension folder:
   - PowerShell: `powershell -ExecutionPolicy Bypass -File package.ps1`
   - Optionally set output name: `powershell -ExecutionPolicy Bypass -File package.ps1 -OutFile plusbasic-language.vsix`
3. Install the generated `.vsix` in VS Code:
   - Extensions view → `...` menu → `Install from VSIX...` → choose the file.
4. Reload VS Code.

## License

MIT
