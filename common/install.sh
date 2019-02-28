ui_print " "
ui_print " - Boot Animation Option -"
ui_print " *******************************************"
ui_print "   Do you want to enable Oxygen OS boot animation?"
ui_print "   (boot animation may not work for some devices)"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling boot animation..."
  pm uninstall -k <com.google.android.soundpicker>
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
ui_print " - Ringtone Option -"
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

if [ "$API" -ge 24 ]; then
  ui_print " "
  ui_print " - App Option -"
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus apps?"
  ui_print "   Included apps are Camera, Gallery, Sound Recorder,"
  ui_print "   Widget and Weather"
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
