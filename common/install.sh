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
    rm -rf $MODPATH/system/priv-app
  fi
fi

if [ -d $ORIGDIR/product ]||[ -d $ORIGDIR/system/product ]; then
  mkdir $MODPATH/system/product
  mv -f $MODPATH/system/fonts $MODPATH/system/media $MODPATH/system/priv-app $MODPATH/system/product/
fi
