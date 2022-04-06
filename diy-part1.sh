sed -i 's/192.168.1.1/192.168.222.1/g' package/base-files/files/bin/config_generate;
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh;
sed -i 's/ssid=OpenWrt/ssid=NBplus/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh;
sed -i 's/encryption=none/encryption=psk2+ccmp\n                        set wireless.default_radio${devidx}.key=rZuek4xp6xN1tmUUssxc/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh;
sed -i '1c root:$1$aS8uqI7w$HiE5HtDj99NqkC06Afpft1:18897:0:99999:7:::' package/base-files/files/etc/shadow;


# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' >>feeds.conf.default
echo 'src-git Edge https://github.com/kiddin9/luci-theme-edge.git' >>feeds.conf.default


