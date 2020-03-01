ui_print " "
ui_print " - Font Option -"
ui_print " *******************************************"
ui_print "   Do you want OnePlus Slate font?"
ui_print "   Vol Up = Yes, Vol Down = No"
ui_print " "
if $VKSEL; then
  ui_print "   Enabling font..."
else
  ui_print "   Disabling font..."
  rm -rf $MODPATH/system/fonts
fi

ui_print " "
ui_print " - Media Option -"
ui_print " *******************************************"
ui_print "   Do you want Oxygen OS custom media sounds?"
ui_print "   They include ringtones, alarms, notifications"
ui_print "   Vol Up = Yes, Vol Down = No"
ui_print " "
if $VKSEL; then
  ui_print "    Enabling custom media sounds... "
else
  ui_print "    Disabling custom media sounds... "
  rm -rf $MODPATH/system/media $MODPATH/system.prop
fi

if [ $API -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Gallery?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  ui_print " "
  if $VKSEL; then
    ui_print "   Enabling OnePlus Gallery..."
 else
    ui_print "   Disabling OnePlus Gallery..."
    rm -rf $MODPATH/system/app/OPGallery
  fi
fi

if [ $API -ge 24 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Screen Recorder?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print "   Enabling OnePlus Screen Recorder..."
  else
    ui_print "   Disabling OnePlus Screen Recorder..."
    rm -rf $MODPATH/system/app/OPScreenRecorder
  fi
else
  rm -rf $MODPATH/system/app/OPScreenRecorder
fi

if [ $API -ge 24 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Camera?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print "   Enabling OnePlus Camera..."
  else
    ui_print "   Disabling OnePlus Camera..."
    rm -rf $MODPATH/system/app/OPCamera
  fi
else
  rm -rf $MODPATH/system/app/OPCamera
fi

if [ $API -ge 23 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Sound Recorder?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print "   Enabling OnePlus Sound Recorder..."
  else
    ui_print "   Disabling OnePlus Sound Recorder..."
    rm -rf $MODPATH/system/app/OPSoundRecorder
  fi
else
  rm -rf $MODPATH/system/app/OPSoundRecorder
fi

if [ $API -ge 25 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Weather and Widget?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print "   Enabling OnePlus Weather..."
    ui_print "   Enabling OnePlus Widget..."
  else
    ui_print "   Disabling OnePlus Weather..."
    rm -rf $MODPATH/system/app/OPWeather
    rm -rf $MODPATH/system/app/OPWidget
  fi
else
  rm -rf $MODPATH/system/app/OPWeather
  rm -rf $MODPATH/system/app/OPWidget
fi

if [ $API -ge 23 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Calculator?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print "   Enabling OnePlus Calculator..."
  else
    ui_print "   Disabling OnePlus Calculator..."
    rm -rf $MODPATH/system/app/OPCalculator
  fi
else
  rm -rf $MODPATH/system/app/OPCalculator
fi


if [ -d $ORIGDIR/product ]||[ -d $ORIGDIR/system/product ]; then
  mkdir $MODPATH/system/product
  mv -f $MODPATH/system/fonts $MODPATH/system/media $MODPATH/system/app $MODPATH/system/product/
fi
