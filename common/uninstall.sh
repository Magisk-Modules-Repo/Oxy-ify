if [ -f $BFOLDER$BZIP ]; then
  ui_print "   Removing $BFOLDER$BZIP"
  rm -rf /data/adb/magisk_simple/system 2>/dev/null
fi
