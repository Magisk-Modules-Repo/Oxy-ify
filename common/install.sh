ui_print " "
ui_print " - Font Option -"
ui_print " *******************************************"
ui_print "   Do you want OnePlus Slate font?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling font..."
  if [ -d "$MIRROR$P" ] || [ -d "$MIRROR$SP" ]; then
    cp_ch -r "$MODPATH/Oxy-ify/font" "$MODPATH$SP"
  else
    cp_ch -r "$MODPATH/Oxy-ify/font" "$MODPATH$S"
  fi
else
  ui_print "   Disabling font..."
fi

ui_print " "
ui_print " - Media Option -"
ui_print " *******************************************"
ui_print "   Do you want Oxygen OS custom media sounds?"
ui_print "   They include ringtones, alarms, notifications"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  prop_process $MODPATH/common/propsoss.prop
  ui_print "    Enabling custom media sounds... "
  if [ -d "$MIRROR$P" ] || [ -d "$MIRROR$SP" ]; then
    cp_ch -r "$MODPATH/Oxy-ify/media" "$MODPATH$SP"
  else
    cp_ch -r "$MODPATH/Oxy-ify/media" "$MODPATH$S"
  fi
else
  ui_print " "
  ui_print "    Enabling custom media sounds... "
fi

if [ $API -ge 27 ]; then
  ui_print " "
  ui_print " *******************************************"
  ui_print "   Do you want OnePlus Gallery?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Enabling OnePlus Gallery..."
    if [ -d "$MIRROR$P" ] || [ -d "$MIRROR$SP" ]; then
      cp_ch -r "$MODPATH/Oxy-ify/media" "$MODPATH$SP"
    else
      cp_ch -r "$MODPATH/Oxy-ify/media" "$MODPATH$S"
    fi
 else
    ui_print " "
    ui_print "   Disabling OnePlus Gallery..."
    rm -rf $MODPATH/system/priv-app/OPGallery
  fi
fi
