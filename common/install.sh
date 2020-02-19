ui_print " "
ui_print " - Font Option -"
ui_print " *******************************************"
ui_print "   Do you want OnePlus Slate font?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling font..."
  if [ -d "$MIRROR$P" ] || [ -d "$MIRROR$SP" ]; then
    cp_ch -r "$MODPATH/Oxy-ify$F" "$MODPATH$SP$F"
  else
    cp_ch -r "$MODPATH/Oxy-ify$F" "$MODPATH$S$F"
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
  prop_process "$MODPATH/common/propsoss.prop"
  ui_print "    Enabling custom media sounds... "
  if [ -d "$MIRROR$P" ] || [ -d "$MIRROR$SP" ]; then
    cp_ch -r "$MODPATH/Oxy-ify$A" "$MODPATH$SP$A"
  else
        cp_ch -r "$MODPATH/Oxy-ify$A" "$MODPATH$S$A"
  fi
else
  ui_print " "
  ui_print "    Disabling custom media sounds... "
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
      cp_ch -r "$MODPATH/Oxy-ify$G" "$MODPATH$SP$G"
    else
      cp_ch -r "$MODPATH/Oxy-ify$G" "$MODPATH$S$G"
    fi
 else
    ui_print " "
    ui_print "   Disabling OnePlus Gallery..."
  fi
fi
