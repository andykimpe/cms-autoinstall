#!/bin/bash
if [ -d "/etc/httpd" ] || [ -d "/etc/apache2" ] && [ -f /etc/php.ini ] || [ -f /etc/php5/cli/php.ini ] || [ -f /etc/php5/apache2/php.ini ] || [ -f /etc/php5/cli/php.ini ] || [ -f /etc/php5/apache2/php.ini ] ; then
if [ -d "/etc/zpanel" ] ; then
zpaneldomaine=$(setso --show zpanel_domain)
echo "We detected that your server is using ZPanel"
echo "we recommend using Zantasticot X to install MyBB"
red -e -p "want to install X Zantasticot now (y/n)?" zantasticotx
case $zantasticotx in
                [Yy]* ) break;;
                [Nn]* ) exit;
        esac
done
if [ -d /etc/zpanel/panel/modules/zantasticox ] ; then
echo "Zantastico X already installed on your server"
echo "for finish install of mybb plesase use Zantasticot X"
echo "on url http://$zpaneldomaine/?module=zantasticox"
exit
fi
zppy repo add modules.zpanelcp.com/repo
zppy update
zppy install zantasticox
read -e -p "Please enter your root password MySQL for finish install of Zantasticot X" mysql
mysql -u root -p$mysql -e "UPDATE zpanel_core.x_modules SET mo_enabled_en = 'true' WHERE mo_folder_vc = 'zantasticox'";
echo "for finish install of mybb plesase use Zantasticot X"
echo "on url http://$zpaneldomaine/?module=zantasticox"
exit
fi

read -e -p "enter the full directory to install mybb " directory
rm -rf $directory
mkdir -p $directory
cd $directory
wget http://www.mybb.com/download/latest
unzip *.zip
rm -f *.zip
cp -R Upload/* ./
rm -rf Upload/
while true; do
read -e -p "want to install additional language (y/n)? " lang
case $lang in
                [Yy]* ) break;;
                [Nn]* ) exit;
        esac
done

read -e -p "want to install additional French (Français) language (y/n)? " French
if [ "$French" = "y" ] || [ "$French" = "Y" ] ; then
wget http://upload.mybb.fr/French_language_pack.1.6.11.zip
unzip -u French_language_pack.1.6.11.zip
rm -f French_language_pack.1.6.11.zip
fi


read -e -p "want to install additional German (Deutsch) (Informal - Deutsch Du) language (y/n)? " Informal
if [ "$Informal" = "y" ] || [ "$Informal" = "Y" ] ; then
wget http://files.mybb-forum.de/downloads/lang_deutsch_du_1611.zip
unzip -u lang_deutsch_du_1611.zip
rm -f lang_deutsch_du_1611.zip
cp -R -n Buttons/* images
rm -rf Buttons
rm -rf "Installation & Upgrade"
cp -R -n Sprachdateien/* inc/languages
rm -rf Sprachdateien
fi

read -e -p "want to install additional German (Deutsch) (Formal - Deutsch Sie) language (y/n)? " Formal
if [ "$Formal" = "y" ] || [ "$Formal" = "Y" ] ; then
wget http://files.mybb-forum.de/downloads/lang_deutsch_sie_1611.zip
unzip -u lang_deutsch_sie_1611.zip
rm -f lang_deutsch_sie_1611.zip
cp -R -n Buttons/* images
rm -rf Buttons
rm -rf "Installation & Upgrade"
cp -R -n Sprachdateien/* inc/languages
rm -rf Sprachdateien
fi

read -e -p "want to install additional Persian (فارسی) language (y/n)? " Persian
if [ "$Persian" = "y" ] || [ "$Persian" = "Y" ] ; then
wget "http://community.mybb.com/attachment.php?aid=30300"
unzip -u "attachment.php?aid=30300"
rm -f "attachment.php?aid=30300"
fi

read -e -p "want to install additional Portuguese (Portugal) language (y/n)? " Portuguese
if [ "$Portuguese" = "y" ] || [ "$Portuguese" = "Y" ] ; then
wget "http://community.mybb.com/attachment.php?aid=30423"
unzip -u "attachment.php?aid=30423"
rm -f "attachment.php?aid=30423"
cp -R -n Upload/* ./
rm -rf Upload
fi

read -e -p "want to install additional Romanian language (y/n)? " Romanian
if [ "$Romanian" = "y" ] || [ "$Romanian" = "Y" ] ; then
wget "http://community.mybb.com/attachment.php?aid=30318"
unzip -u "attachment.php?aid=30318"
rm -f "attachment.php?aid=30318"
cp -R -n MyBB_1611/Upload/* ./
rm -rf MyBB_1611
fi

read -e -p "want to install additional Spanish (Español) language (y/n)? " Spanish
if [ "$Spanish" = "y" ] || [ "$Spanish" = "Y" ] ; then
wget "http://community.mybb.com/attachment.php?aid=30427"
unzip -u "attachment.php?aid=30427"
rm -f "attachment.php?aid=30427"
fi

read -e -p "want to install additional Serbian language (y/n)? " Serbian
if [ "$Serbian" = "y" ] || [ "$Serbian" = "Y" ] ; then
wget "http://community.mybb.com/attachment.php?aid=30301"
unzip -u "attachment.php?aid=30301"
rm -f "attachment.php?aid=30301"
fi

read -e -p "want to install additional Swedish language (y/n)? " Swedish
if [ "$Swedish" = "y" ] || [ "$Swedish" = "Y" ] ; then
wget "http://mybboard.se/attachment.php?aid=12"
unrar -y e "attachment.php?aid=12"
rm -f "attachment.php?aid=12"
fi

else
echo "apache and php is not installed on your server thank you to install and restart the script"
exit
fi
exit
