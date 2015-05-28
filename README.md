DDC monitor controls for OSX command line
----
Adjust your external monitors' built-in controls from the OSX shell.  
You can adjust brightness, contrast, input source, speaker volumes (if built-in), and potentially other settings.

Directly adapted from [DDC Panel](http://www.tonymacx86.com/graphics/90077-controlling-your-monitor-osx-ddc-panel.html#post554171) and [DDC-CI-Tools-for-OS-X](http://github.com/jontaylor/DDC-CI-Tools-for-OS-X)
Also see [BrightnessMenulet](https://github.com/superduper/BrightnessMenulet), a nice StatusBar slider.
https://github.com/Kalvin126/BrightnessMenulet
https://github.com/Eun/DisableMonitor
http://apple.stackexchange.com/questions/61045/does-apple-support-ddc-ci-for-3rd-party-displays-via-apples-thunderbolt-to-dvi?lq=1

Read the code if you want to implement more controls. Its ultimately making blocking I2C comms with the kernel, so be careful.

Install
----
```bash
make
make install
```

Usage
----
Run `ddcctl -h` for some options.  
```ddcctl.sh``` is an included script I use to control two PC monitors hooked into a Mac Mini.  
You can point Alfred, ControlPlane, or Karabiner at it to quickly switch presets.  

Caveats
----
VGA cables seem to wreak havoc with DDC comms. Use DVI or DisplayPort if you can.  
I do not have Thunderbolt hardware to test with yet.  