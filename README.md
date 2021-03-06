# VolumeControl

## Compilation Instructions

1. Install [AutoHotKey](https://www.autohotkey.com/)
1. Find your `mixer ID`.
    1. I set the input volume for my microphone to something easily identifiable ie. 69
    1. Double Click/Run the `getDeviceId.ahk` script.
    1. Once the list shows up, look for the volume level.
    1. Copy the mixer ID.
1. Set `DeviceID` on line 17 of `VolumeControl.ahk` with your mixer ID found in step 2.3:
    ```
    # VolumeControl.ahk
    ...
    DeviceID = <MIXER_ID> ; Use the getDeviceId.ahk to find out the Mixer ID.
    ...
    ```
1. Compile the Script
    1. You can either "Right-Click" and Compile; This will compile it into an .exe file.
    1. Or you can run the script directly by double clicking.

#### _(Optional) Running on Windows startup with Administrator Privileges
1. Create a shortcut within your Windows start menu.
1. Set the target: `C:\Windows\System32\schtasks.exe /run /tn "Volume Control"`
1. Type `shell:startup`
1. Move the shortcut for the VolumeControl.ahk(or .exe) in this directory.

## Usage

* Volume Up = WIN + MouseWheel
* Volume Down = WIN + MouseWheel
* Volume Mute = WIN + MouseWheel Button
* Microphone Mute = Pause/Break
