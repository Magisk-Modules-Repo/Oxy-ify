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
  rm -rf "$INSTALLER/system/media/bootanimation.zip"
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
  rm -rf "$INSTALLER"/system/fonts
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
else
  ui_print " "
  ui_print "   Disabling custom media sounds..."
  rm -rf "$INSTALLER"/system/media/audio
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
    rm -rf "$INSTALLER"/system/priv-app/OPGallery
  fi
else
  rm -rf "$INSTALLER"/system/priv-app/OPGallery
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
    rm -rf "$INSTALLER"/system/priv-app/OPCamera
  fi
else
  rm -rf "$INSTALLER"/system/priv-app/OPCamera
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
    rm -rf "$INSTALLER"/system/priv-app/OPRecorder
  fi
else
  rm -rf "$INSTALLER"/system/priv-app/OPRecorder
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
    rm -rf "$INSTALLER"/system/priv-app/OPWeather
    rm -rf "$INSTALLER"/system/priv-app/OPWidget
  fi
else
  rm -rf "$INSTALLER"/system/priv-app/OPWeather
  rm -rf "$INSTALLER"/system/priv-app/OPWidget

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
    rm -rf "$INSTALLER"/system/priv-app/OPLauncher
  fi
else
  rm -rf "$INSTALLER"/system/priv-app/OPLauncher
fi
