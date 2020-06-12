# Lenovo Yoga 530-14IKB Catalina Hackintosh

EFI partition with support for macOS Catalina 10.15.4 with Clover 5118

<img width="600" alt="Lenovo Yoga 530-14IKB Catalina Hackintosh" src="https://github.com/brunomsg/Yoga-530-14IKB-Catalina-Hackintosh/blob/master/system.png">

**This build is a Work In Progress**

### What Works
- Full TrackPad support (solved with Clover extrated F4 DSDT and a patch generated with GenI2C app)
- Keyboard
- USB 3.0
- Graphics acceleration
- 3,5mm jack & Microphone
- HDMI output ( with magenta color )
- Sleep
- Bluetooth
- Webcam
- Hotkeys (Audio controls, TrackPad On/Off)
- Battery indicator
- iMessage, FaceTime, AppStore, iCloud (need to use a unique Serial Number and the wifi network interface set as en0)
- Internal WiFi Card Intel 3165 AC (KEXT Uploaded here from a WIP in https://github.com/AppleIntelWifi/device-logs/issues/6)
    - Works only at 30 Mbits
    - The SSID and Password needs to be se inside the driver before load it and can't be changed after the driver was loaded
    
    ```
          Right click AppleIntelWiFi.kext and click on Show Package Contents
          Contents > info.plist
          Open info.plist
          Navigate to IOKitPersonalities > AppleIntelWiFi > NetWork Parameters > BSSID (your wifi name) > PWD (password of the wifi)
          Save
    ```
    
    Open terminal:
          
    ```
          sudo chown -R root:wheel AppleIntelWiFi.kext

          sudo chmod -R 744 AppleIntelWiFi.kext
    ```
          
    - Need to be loaded everytime manualy from terminal
    
    ```
          sudo kextload -v AppleIntelWiFi.kext/
    ```

### Untested
- USB C port
- Built-in card reader

### What DOESNT Work
- Touchscreen and active stylus
- Internal Speakers
- hibernation
- Brightness controls
- TouchID (probably never will)

### Work in progress
- Brightness controls expect F14 and F15 so must be set manually to F11 and F12
- Hotkeys (Refresh, Airplane mode, Lock, Webcam On/Off, Mic On/Off)
- Full TrackPad and Touchscreen support
