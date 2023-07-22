apk="$MODPATH/HTTPCanary.apk"

ui_print "- 开始安装 HTTPCanary 应用..."

if reason=$(pm install "$apk" 2>&1); then
  ui_print "- 安装完成"
else
  abort "- 安装失败
$reason"
fi

rm "$apk" && ui_print "- 安装包已删除"
