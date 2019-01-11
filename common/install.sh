keytest() {
  ui_print " - Vol Key Test -"
  ui_print "   Press Vol Up:"
  (/system/bin/getevent -lc 1 2>&1 | /system/bin/grep VOLUME | /system/bin/grep " DOWN" > $INSTALLER/events) || return 1
  return 0
}

choose() {
  # Note from chainfire @xda-developers: getevent behaves weird when piped, and busybox grep likes that even less than toolbox/toybox grep
  while true; do
    /system/bin/getevent -lc 1 2>&1 | /system/bin/grep VOLUME | /system/bin/grep " DOWN" > $INSTALLER/events
    if (`cat $INSTALLER/events 2>/dev/null | /system/bin/grep VOLUME >/dev/null`); then
      break
    fi
  done
  if (`cat $INSTALLER/events 2>/dev/null | /system/bin/grep VOLUMEUP >/dev/null`); then
    return 0
  else
    return 1
  fi
}

chooseold() {
  # Calling it first time detects previous input. Calling it second time will do what we want
  keycheck
  keycheck
  SEL=$?
  if [ "$1" == "UP" ]; then
    UP=$SEL
  elif [ "$1" == "DOWN" ]; then
    DOWN=$SEL
  elif [ $SEL -eq $UP ]; then
    return 0
  elif [ $SEL -eq $DOWN ]; then
    return 1
  else
    ui_print "   Vol key not detected!"
    abort "   Use name change method in TWRP"
  fi
}

if keytest; then
  FUNCTION=choose
else
  FUNCTION=chooseold
  ui_print "   ! Legacy device detected! Using old keycheck method"
  ui_print " "
  ui_print " - Vol Key Programming -"
  ui_print "   Press Vol Up:"
  $FUNCTION "UP"
  ui_print "   Press Vol Down:"
  $FUNCTION "DOWN"
fi

if [ "$OOS" ]; then
  ui_print " "
  ui_print "   Oxy-ify is only for non-OOS devices!"
  ui_print "   DO YOU WANT TO IGNORE OUR WARNINGS AND RISK A BOOTLOOP?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $FUNCTION; then
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
if $FUNCTION; then
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
if $FUNCTION; then
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
if $FUNCTION; then
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
if $FUNCTION; then
  ui_print " "
  ui_print "   Enabling custom apps..."
else
  ui_print " "
  ui_print "   Disabling custom apps..."
  rm -rf $INSTALLER/system/priv-app/
fi
