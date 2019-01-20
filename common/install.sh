if [ "$OOS" ]; then
  ui_print " "
  ui_print "   Oxy-ify is only for non-OOS devices!"
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
ui_print "   Do you want to enable the bootanimation?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling boot animation..."
  mkdir -p $MAGISK_SIMPLE$BFOLDER
  cp -f $INSTALLER/common/options/bootanimation.zip $MAGISK_SIMPLE$BFOLDER$BZIP
else
  ui_print " "
  ui_print "   Disabling boot animation..."
fi

ui_print " "
ui_print " - Font Option -"
ui_print "   Do you want to enable the custom fonts?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom fonts..."
else
  ui_print " "
  ui_print "   Disabling custom fonts..."
  rm -rf $INSTALLER/system/fonts
fi

ui_print " "
ui_print " - Ringtone Option -"
ui_print "   Do you want to enable the custom ringtones?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom ringtones..."
else
  ui_print " "
  ui_print "   Disabling custom ringtones..."
  rm -rf $INSTALLER/system/media/audio
fi

ui_print " "
ui_print " - App Option -"
ui_print "   Do you want to enable the custom apps?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom apps..."
else
  ui_print " "
  ui_print "   Disabling custom apps..."
  rm -rf $INSTALLER/system/priv-app/
fi
