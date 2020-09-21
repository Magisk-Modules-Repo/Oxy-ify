# Oxy-ify

Oxy-ify is a fantastic Magisk Module that will turn your Android phone into a OnePlus device by adding:

- Oxygen OS media sounds;
- Oxygen OS apps (Camera, Gallery, Sound and Screen Recorder, Weather);
- OnePlus Widget;
- OnePlus Wallpapers;
- OnePlus Slate font.

Most of the apks of the apps are considered safe since directly come from OnePlus Roms or Play Store updates.
OnePlus Widget and Screen Recorder have modified by other devs and posted on XDA, so they are safe, as well.
Wallpaper picker is a custom app forked from EvolutionX wallpaper picker. You can find the source code [here](https://github.com/MarcAnt01/packages_apps_Papers).

# FAQ

Read this before asking anything, otherwise your question/request will be ignored:
1. *How to install?* This question sounds stupid to me, but unluckily it's not the same for every person. Open Magisk Manager, go to downloads section and look for it. I don't provide the zips anywhere, if you flash it outside of the repo, do it at your own risk.
2. *What Roms is it compatible with?* The module is supposed to work with most of custom and propietary Roms (even if it might not work for some Roms very different from AOSP)
3. *What Magisk version does it require?* Magisk 19.0 is the minimum version for modules based on the new template
4. *Why is the size of the Magisk module so huge?* The module includes the apps apk files, which happen to be very huge (OnePlus Gallery for example is 100MB)
5. *What Android versions does it support?* The module should work from Marshmallow, even if most apps require recent Android versions to be working.
6. *How to uninstall?* Reflash the module from recovery or uninstall through Magisk Manager
7. *Why is x-app not working?* The module is thought to have a collection of OnePlus apps, I don't personally fix then, I take the apk from OnePlus or from some modders that modify them. Crashes or something in particular not working won't be fixed.
8. *Where is screen recorder? I can't find it* Just go to quick settings and add it, you won't find it in your apps list.
9. *I just want font and calculator* During the installation you can choose what to install.
10. *Any ETA?* No-one pays me to work within a deadline.

# How to reach out to me
-   [![Thread XDA](https://img.shields.io/badge/XDA-Thread-orange.svg)](https://forum.xda-developers.com/apps/magisk/oxy-ify-magisk-module-add-oxygen-os-t3888094)
-   [![Telegram Group](https://img.shields.io/badge/Telegram-Group-blue.svg)](https://t.me/Oxyify)

# [Donation](https://www.paypal.me/filippofedeli)
If you wish to support my work, it'll be very appreciated.

# License agreement
All the components in this mod are protected under the [GPL-V2 license agreement](https://github.com/MarcAnt01/Oxy-ify/blob/master/LICENSE).
 OnePlus Widget is a modified app kindly provided by [erayrafet](https://forum.xda-developers.com/member.php?u=6901118) and OnePlus Screen Recorder by [rakeshb4r](https://forum.xda-developers.com/member.php?u=6520464). If you intend to include those in your own mod out of Oxy-ify, first, you must ask them for the permission.

# Changelog

### V. 5.3 (final version)
- Fixed OnePlus Gallery;
- Updated media sounds from OnePlus 8 line;
- update MMT-ex template to 1.6.

### V 5.2
- Added wallpaper picker;
- Updated calculator to 2.0;
- Updated MMT-Ex to 1.5;
- Bug fixes.

### V 5.1
- Updated modded Widget to 1.2;
- Fixed OnePlus Slate font;
- Temporary downgraded to OP Gallery 3.7.x to avoid force closes on some devices.

### V 5.0
- Android 10 support;
- Module rewritten from scratch, based on MMT-Ex by Zackptg5;
- No more support for SuperSU and rootless users;
- No more bootanimation (to work properly with Android 10 it needs some improvements);
- Updated OnePlus Gallery and Weather.


### V 4.5
- Added Screen Recorder;
- Temporarily block installation on Android 10.

### V 4.4
- Updated OP Gallery to 3.7;
- Removed OP Launcher

### V 4.3.1
- [Fixes for OP Gallery](https://github.com/Magisk-Modules-Repo/Oxy-ify/commit/b48d41b294160dd86801f05b0cce1b7cccce9246);
- Updated Unity to 4.4

### V 4.3
App updates (Gallery to 3.5 and Weather to 2.5)

### V 4.2.3
Bug fixes to the installer

### V 4.2.2
Further bug fixes

### V 4.2.1
Fix for default ringtone, alarm and notification sounds.

### V  4.2
- Updated Unity to 4.2 (same as module version lol);
- Tones of bug fixes.

### V 4.1
- Added default ringtone, notification sound and alarm;
- Fixed conflicts with Google Sounds;
- Blacklisted Samsung devices;

### V 4.0
- Updated to Unity 4-0 and new Magisk Module Installer Template;
- Blacklisted Google Pixel devices;
- OP Gallery bug fixes;
- Removed ui sounds.

### V 3.2
- Update Gallery to 3.1.x;
- Reverted old Camera (new one was giving problems to most users)

### V 3.1
- Added Calculator (press 1+ for the easter egg);
- Updated Camera to 3.x;
- Updated Weather app to 2.4.x

### V 3.0
- Now you can select what apps to install;
- Added modded OnePlus launcher;
- Now sound recorder supports Android Marshmallow.

### V 2.4
- Fixed OnePlus Weather crash;
- Updated Sound Recorder to 2.0;
- Removed xml.

### V 2.3
- Updated OnePlus Weather to 2.3.x;
- Updated modded OnePlus Widget to 1.1.x;
- Fixed boot animation applied with aborted option.

### This versions weren't distributed through Magisk Modules Repo

### V 2.2
Added modded OnePlus Widget and OnePlus Weather.

### V 2.1
- Fixed Gallery editor crash;
- Improvements to xml;
- Added app support for Arm32 devices;
- Added app support for devices with Android Nougat;
- Reverted boot animation changes;
- Improvements to xml file.

### V 2.0
- Unity installer implementation;
- Added some old custom sounds of Oxygen OS;
- Changed boot animation path;
- Boot animation now supports HTC devices;
- Apps can now be installed with devices with at least Android 8.1 Oreo and Arm64 architecture.

### V 1.1
- Added xml (should allow OnePlus Gallery to update via Play Store);
- Removed OnePlus launcher as led to issues.

### V 1.0
Initial release.



# Credits
- [Zackptg5](https://github.com/Zackptg5) for MMT-Ex (the base of this module) and for providing help;
- [JohnFawkes](https://github.com/JohnFawkes) for helping me to solve bugs.
- All the developers that helped me in the Telegram developers group (special mention to [Skittles9823](https://github.com/skittles9823), [LordVicky](https://github.com/LordVicky), [Shadowstep](https://github.com/nipunnarang))
- [thehappydinoa](https://github.com/thehappydinoa) for initial Unity implementation (old Oxy-ify versions)
- [erayrafet](https://forum.xda-developers.com/member.php?u=6901118) for modded OnePlus Widget and general help for implementing the wallpaper picker.
- [rakeshb4r](https://forum.xda-developers.com/member.php?u=6520464) for modded OnePlus Screen Recorder.
- [EvolutionX team working on wallpaper picker](https://github.com/Evolution-X-Legacy/packages_apps_Papers/graphs/contributors) for the base for wallpaper picker.
- [Santiago Pintos](https://github.com/SantiagoPintos) for OnePlus Slate font.
- [topjohnwu](https://github.com/topjohnwu) for Magisk.
- OnePlus for providing all the stuff included here.

# Donators
- wojtek;
- Colin P.
