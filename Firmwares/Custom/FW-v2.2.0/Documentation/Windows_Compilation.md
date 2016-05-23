# Development on Windows
## Configurating the Enviroment

Before attempting to compile the software, be sure you have installed the following tools.

### Make (GnuWin32 - Make)
Make is a utility that automatically builds executable programs and libraries from source code. It controls the generation of executables and other non-source files of a program from the program's source files.

The software uses this tool to know how to compile and how to flash the binary.

Make is a Unix tool, so a port of this utility for Windows must be installed.

##### How to install it?
1. Download the [Make](http://sourceforge.net/projects/gnuwin32/files/make/3.81/make-3.81.exe/download) executable.

2. Execute it and follow the assistant.
Make must be installed on the following path:

```
C:\Program Files (x86)\GnuWin32
```

### Arduino 1.6.5
The compilation and flash processes use the AVR toolchain. The easy way to get these tools is to install the Arduino SDK (version 1.6.5).

The Arduino files should be installed on the root folder of your sistem (C:\Arduino)

##### How to install it?
1. Download the [installer](https://www.arduino.cc/download_handler.php?f=/arduino-1.6.7-windows.exe) from Arduino web page.

2. Execute it and follow the assistant. Arduino must be installed on the following path:

  ```
  C:\Arduino
  ```

On Windows, the building and flashing processes have been automatized on a batch file.

1. Open a new Command Prompt. Press "WinKey + R" and type "cmd" on the recently open window.

2. Browse to your root project folder.

  ```
  cd C:\your_folder_path\witbox-fw
  ```

3. Connect your computer to the printer and identify the COM port assigned.

3. Launch the script.

  ```
  make.cmd
  ```

4. Follow the wizard's instructions to select your device configuration and the COM port used by the printer.

5. Wait until the script finish.
