if [ -n "$PIXEL" ]; then
  ui_print " "
  ui_print "   Oxy-ify doesn't support Google Pixel devices on stock Rom!"
  ui_print "   DO NOT ATTEMPT TO INSTALL ON STOCK ROM, YOU'LL HAVE A BOOTLOOP"
  ui_print "   If flashed on a Custom Rom you won't have problems"
  ui_print "   *******************************************"
  ui_print "   Are you using a Custom Rom and do you want to install it?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Ignoring warnings..."
  else
    ui_print " "
    ui_print "   Exiting..."
    abort
  fi
fi

if [ -n "$SAMSUNG" ]; then
  ui_print " "
  ui_print "   Oxy-ify doesn't support Samsung devices on stock Rom!"
  ui_print "   DO NOT ATTEMPT TO INSTALL ON STOCK ROM, YOU'LL HAVE A BOOTLOOP"
  ui_print "   If flashed on a Custom Rom you won't have problems"
  ui_print "   *******************************************"
  ui_print "   Are you using a Custom Rom and do you want to install it?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Ignoring warnings..."
  else
    ui_print " "
    ui_print "   Exiting..."
    abort
  fi
fi



ui_print " "
ui_print " - Boot Animation Option -"
ui_print " *******************************************"
ui_print "   Do you want to enable Oxygen OS boot animation?"
ui_print "   (boot animation may not work for some devices)"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling boot animation..."
else
  ui_print " "
  ui_print "   Disabling boot animation..."
  rm -rf "$TMPDIR/system/media/bootanimation.zip"
fi

ui_print " "
ui_print " - Font Option -"
ui_print " *******************************************"
ui_print "   Do you want OnePlus Slate font?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling font..."
else
  ui_print " "
  ui_print "   Disabling font..."
  rm -rf "$TMPDIR"/system/fonts
fi

ui_print " "
ui_print " - Media Option -"
ui_print " *******************************************"
ui_print "   Do you want Oxygen OS custom media sounds?"
ui_print "   They include ringtones, alarms, notifications"
ui_print "   and UI sounds"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom media sounds..."
  prop_process "$TMPDIR"/common/propsoss.prop
else
  ui_print " "
  ui_print "   Disabling custom media sounds..."
  rm -rf "$TMPDIR"/system/media/audio
fi

if [ "$API" -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Gallery?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Gallery..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus Gallery..."
    rm -rf "$TMPDIR"/system/priv-app/OPGallery
  fi
else
  rm -rf "$TMPDIR"/system/priv-app/OPGallery
fi

if [ "$API" -ge 24 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Camera?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Camera..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus Camera..."
    rm -rf "$TMPDIR"/system/priv-app/OPCamera
  fi
else
  rm -rf "$TMPDIR"/system/priv-app/OPCamera
fi

if [ "$API" -ge 23 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Sound Recorder?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Sound Recorder..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus Sound Recorder..."
    rm -rf "$TMPDIR"/system/priv-app/OPRecorder
  fi
else
  rm -rf "$TMPDIR"/system/priv-app/OPRecorder
fi

if [ "$API" -ge 25 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Weather and Widget?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Weather..."
    ui_print "   Enabling OnePlus Widget..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus Weather..."
    rm -rf "$TMPDIR"/system/priv-app/OPWeather
    rm -rf "$TMPDIR"/system/priv-app/OPWidget
  fi
else
  rm -rf "$TMPDIR"/system/priv-app/OPWeather
  rm -rf "$TMPDIR"/system/priv-app/OPWidget
fi

if [ "$API" -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Launcher?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Launcher..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus Launcher..."
    rm -rf "$TMPDIR"/system/priv-app/OPLauncher
  fi
else
  rm -rf "$TMPDIR"/system/priv-app/OPLauncher
fi

if [ "$API" -ge 23 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Calculator?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Calculator..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus Calculator..."
    rm -rf "$TMPDIR"/system/priv-app/OPCalculator
  fi
else
  rm -rf "$TMPDIR"/system/priv-app/OPCalculator
fi
