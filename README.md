<p align="center">
  <img src="https://raw.githubusercontent.com/Hope-IT-Works/WinRep/main/resources/logo/WinRep-Logo_2048x2048.png" alt="WinRep Logo" style="width: 10%"/>
</p>
<h1 align="center">WinRep</h1>
<h3 align="center">portable executable for repairing windows with windows sfc</h3>
<hr>

## About
WinRep repairs Windows-Systems with the system integrated cli-tool ```sfc```. This fixed a series of issues in the past:
- Issues related to windows updates (e.g. downloading and applying windows updates)
- Slow bootup times
- Bluescreens

WinRep is written in PowerShell and was converted to an executable using [PS2EXE-GUI](https://github.com/Hope-IT-Works/PS2EXE-GUI).

## Building
1. Clone this repository
2. Execute [```.\build\build-winrep.bat```](./build/build-winrep.bat)
3. Enter version number
4. Done 🎉

## Compatibility
- Windows 10 64bit
- Windows 11 64bit
- *maybe more... (not tested)*
