if [ -n "$OOS" ]; then
  ui_print " "
  ui_print "   Oxy-ify is only for non-OOS devices!"
  ui_print "   Why would you need this stuff if you are already in Oxygen OS?"
  ui_print "   DO YOU WANT TO IGNORE OUR WARNINGS AND RISK A BOOTLOOP?"
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
ui_print "   Do you want to enable Oxygen OS boot animation?"
ui_print "   (boot animation may not work for some devices)"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling boot animation..."
  mkdir -p "$MAGISK_SIMPLE""$BFOLDER"
  cp -f "$INSTALLER"/common/options/bootanimation.zip "$MAGISK_SIMPLE""$BFOLDER""$BZIP"
else
  ui_print " "
  ui_print "   Disabling boot animation..."
fi

ui_print " "
ui_print " - Font Option -"
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
ui_print " - Ringtone Option -"
ui_print "   Do you want Oxygen OS custom media sounds?"
ui_print "   They include ringtones, alarms, notifications and UI sounds"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom media sounds..."
else
  ui_print " "
  ui_print "   Disabling custom media sounds..."
  rm -rf "$INSTALLER"/system/media/audio
fi

if [ "$API" -ge 24 ]; then
  ui_print " "
  ui_print " - App Option -"
  ui_print "   Do you want OnePlus apps (Camera, Gallery and Weather)?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus apps..."
  else
    ui_print " "
    ui_print "   Disabling OnePlus apps..."
    rm -rf "$INSTALLER"/system/priv-app/
  fi
else
  rm -rf "$INSTALLER"/system/priv-app/
fi
