#!/bin/bash
if [ -d "/etc/httpd" ] || [ -d "/etc/apache2" ] && [ -f /etc/php.ini ] || [ -f /etc/php5/cli/php.ini ] || [ -f /etc/php5/apache2/php.ini ] || [ -f /etc/php5/cli/php.ini ] || [ -f /etc/php5/apache2/php.ini ] ; then
#if [ -d "/etc/zpanel" ] ; then
#zpaneldomaine=$(setso --show zpanel_domain)
#echo "We detected that your server is using ZPanel"
#echo "we recommend using Zantasticot X to install phpbb"
#red -e -p "want to install X Zantasticot now (y/n)?" zantasticotx
#case $zantasticotx in
# [Yy]* ) break;;
# [Nn]* ) exit;
# esac
#done
#if [ -d /etc/zpanel/panel/modules/zantasticox ] ; then
#echo "Zantastico X already installed on your server"
#echo "for finish install of phpbb plesase use Zantasticot X"
#echo "on url http://$zpaneldomaine/?module=zantasticox"
#exit
#fi
#zppy repo add modules.zpanelcp.com/repo
#zppy update
#zppy install zantasticox
#read -e -p "Please enter your root password MySQL for finish install of Zantasticot X" mysql
#mysql -u root -p$mysql -e "UPDATE zpanel_core.x_modules SET mo_enabled_en = 'true' WHERE mo_folder_vc = 'zantasticox'";
#echo "for finish install of phpbb plesase use Zantasticot X"
#echo "on url http://$zpaneldomaine/?module=zantasticox"
#exit
#fi

read -e -p "enter the full directory to install phpbb " directory
rm -rf $directory
mkdir -p $directory
cd $directory
wget https://www.phpbb.com/files/release/phpBB-3.0.12.zip
unzip phpBB-3.0.12.zip
rm -f phpBB-3.0.12.zip
cp -R phpBB3/* ./
rm -rf phpBB3/
while true; do
read -e -p "want to install additional language (y/n)? " lang
case $lang in
                [Yy]* ) break;;
                [Nn]* ) exit;
        esac
done


read -e -p "want to install additional American (English) language (y/n)? " American
if [ "$American" = "y" ] || [ "$American" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91116
unzip id_91116
rm -f id_91116
cp -R american_english_1_3_0/* ./
rm -rf american_english_1_3_0
fi


read -e -p "want to install additional French (Français) language (y/n)? " French
if [ "$French" = "y" ] || [ "$French" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91611
unzip -u id_91611
rm -f id_91611
cp -R french_1_4_1/* ./
rm -rf french_1_4_1
fi

read -e -p "want to install additional Arabic (العربية) language (y/n)? " Arabic
if [ "$Arabic" = "y" ] || [ "$Arabic" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92651
unzip -u id_92651
rm -f id_92651
cp -R arabic_1_6_0_3/* ./
rm -rf arabic_1_6_0_3
fi

read -e -p "want to install additional Argentinian Spanish (Español Argentino) language (y/n)? " Argentinian
if [ "$Argentinian" = "y" ] || [ "$Argentinian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91866
unzip -u id_91866
rm -f id_91866
cp -R argentinian_spanish_formal_honorifics_1_0_2/argentinian_spanish_1_0_2/* ./
rm -rf argentinian_spanish_formal_honorifics_1_0_2
fi

read -e -p "want to install additional Basque (Español Argentino) language (y/n)? " Basque
if [ "$Basque" = "y" ] || [ "$Basque" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84782
unzip -u id_84782
rm -f id_84782
cp -R basque_1_1_2/* ./
rm -rf basque_1_1_2
fi

read -e -p "want to install additional Belarusian (Беларуская) language (y/n)? " Belarusian
if [ "$Belarusian" = "y" ] || [ "$Belarusian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_85375
unzip -u id_85375
rm -f id_85375
cp -R belarusian_3_0_11/* ./
rm -rf belarusian_3_0_11
fi

read -e -p "want to install additional Brazilian Portuguese (Беларуская) language (y/n)? " Brazilian
if [ "$Brazilian" = "y" ] || [ "$Brazilian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91801
unzip -u id_91801
rm -f id_91801
cp -R brazilian_portuguese_1_0_7/* ./
rm -rf brazilian_portuguese_1_0_7
fi

read -e -p "want to install additional Bulgarian (Беларуская) language (y/n)? " Bulgarian
if [ "$Bulgarian" = "y" ] || [ "$Bulgarian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_85730
unzip -u id_85730
rm -f id_85730
cp -R bulgarian_1_0_5/* ./
rm -rf bulgarian_1_0_5
fi

read -e -p "want to install additional Catalan (Català) language (y/n)? " Catalan
if [ "$Catalan" = "y" ] || [ "$Catalan" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91531
unzip -u id_91531
rm -f id_91531
cp -R catalan_1_0_6/* ./
rm -rf catalan_1_0_6
fi

read -e -p "want to install additional Croatian (Català) language (y/n)? " Croatian
if [ "$Croatian" = "y" ] || [ "$Croatian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_85022
unzip -u id_85022
rm -f id_85022
cp -R croatian_1_0_5/* ./
rm -rf croatian_1_0_5
fi

read -e -p "want to install additional Czech (Čeština) language (y/n)? " Czech
if [ "$Czech" = "y" ] || [ "$Czech" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_85593
unzip -u id_85593
rm -f id_85593
cp -R czech_1_7/* ./
rm -rf czech_1_7
fi

read -e -p "want to install additional Danish (Dansk) language (y/n)? " Danish
if [ "$Danish" = "y" ] || [ "$Danish" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91386
unzip -u id_91386
rm -f id_91386
cp -R danish_1_0_26/* ./
rm -rf danish_1_0_26
fi

read -e -p "want to install additional Dutch Casual Honorifics (Nederlands Informeel) language (y/n)? " Dutch_Casual
if [ "$Dutch_Casual" = "y" ] || [ "$Dutch_Casual" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91751
unzip -u id_91751
rm -f id_91751
cp -R dutch_casual_honorifics_1_0_13_1/dutch_*/* ./
rm -rf dutch_casual_honorifics_1_0_13_1
fi


read -e -p "want to install additional Dutch Formal Honorifics (Nederlands Formeel) language (y/n)? " Dutch_Formal
if [ "$Dutch_Formal" = "y" ] || [ "$Dutch_Formal" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91666
unzip -u id_91666
rm -f id_91666
cp -R dutch_formal_honorifics_1_0_5/dutch_*/* ./
rm -rf dutch_formal_honorifics_1_0_5
fi

read -e -p "want to install additional Estonian (Eesti keel) language (y/n)? " Estonian
if [ "$Estonian" = "y" ] || [ "$Estonian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_82848
unzip -u id_82848
rm -f id_82848
cp -R estonian_3_0_10/* ./
rm -rf estonian_3_0_10
fi

read -e -p "want to install additional Finnish (Suomi) language (y/n)? " Finnish
if [ "$Finnish" = "y" ] || [ "$Finnish" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92961
unzip -u id_92961
rm -f id_92961
cp -R finnish_3_0_12_2/* ./
rm -rf finnish_3_0_12_2
fi

read -e -p "want to install additional Galician (Suomi) language (y/n)? " Galician
if [ "$Galician" = "y" ] || [ "$Galician" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84646-sid_2754c1a7b6fdf695730ebb00edeb08b7
unzip -u id_84646-sid_2754c1a7b6fdf695730ebb00edeb08b7
rm -f id_84646-sid_2754c1a7b6fdf695730ebb00edeb08b7
cp -R galician_1_3_0/* ./
rm -rf galician_1_3_0
fi

read -e -p "want to install additional German Casual Honorifics (Deutsch Du) language (y/n)? " German_Casual
if [ "$German_Casual" = "y" ] || [ "$German_Casual" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91416-sid_087ec79dd9c721bb96cbcb5b8a45e076
unzip -u id_91416-sid_087ec79dd9c721bb96cbcb5b8a45e076
rm -f id_91416-sid_087ec79dd9c721bb96cbcb5b8a45e076
cp -R german_casual_honorifics_3_0_12/german_*/* ./
rm -rf german_casual_honorifics_3_0_12
fi

read -e -p "want to install additional German Formal Honorifics (Deutsch Sie) language (y/n)? " German_Formal
if [ "$German_Formal" = "y" ] || [ "$German_Formal" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91421-sid_0fc5aa71d66e7b0a956a92d0ef7b0bb6
unzip -u id_91421-sid_0fc5aa71d66e7b0a956a92d0ef7b0bb6
rm -f id_91421-sid_0fc5aa71d66e7b0a956a92d0ef7b0bb6
cp -R german_formal_honorifics_3_0_12/german_*/* ./
rm -rf german_formal_honorifics_3_0_12
fi

read -e -p "want to install additional Greek (Deutsch Sie) language (y/n)? " Greek
if [ "$Greek" = "y" ] || [ "$Greek" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_82608-sid_efa1f03bfd4f422559d76a3fe3d418fd
unzip -u id_82608-sid_efa1f03bfd4f422559d76a3fe3d418fd
rm -f id_82608-sid_efa1f03bfd4f422559d76a3fe3d418fd
cp -R greek_3_0_10/* ./
rm -rf greek_3_0_10
fi

read -e -p "want to install additional Hebrew (עברית) language (y/n)? " Hebrew
if [ "$Hebrew" = "y" ] || [ "$Hebrew" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_93006-sid_2eb01c61bf64f5e4798ae1912fb7fa2f
unzip -u id_93006-sid_2eb01c61bf64f5e4798ae1912fb7fa2f
rm -f id_93006-sid_2eb01c61bf64f5e4798ae1912fb7fa2f
cp -R hebrew_3_0_12/* ./
rm -rf hebrew_3_0_12
fi

read -e -p "want to install additional Hungarian (Magyar) language (y/n)? " Hungarian
if [ "$Hungarian" = "y" ] || [ "$Hungarian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_82916-sid_e52a72d233d0bbd7e78521c288b702d0
unzip -u id_82916-sid_e52a72d233d0bbd7e78521c288b702d0
rm -f id_82916-sid_e52a72d233d0bbd7e78521c288b702d0
cp -R hungarian_233/* ./
rm -rf hungarian_233
fi

read -e -p "want to install additional Indonesian (Bahasa Indonesia) language (y/n)? " Indonesian
if [ "$Indonesian" = "y" ] || [ "$Indonesian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_81607-sid_d2186b087731f1eaa1406bf534181643
unzip -u id_81607-sid_d2186b087731f1eaa1406bf534181643
rm -f id_81607-sid_d2186b087731f1eaa1406bf534181643
cp -R indonesian_1_0_1/* ./
rm -rf indonesian_1_0_1
fi

read -e -p "want to install additional Italian (Italiano) language (y/n)? " Italian
if [ "$Italian" = "y" ] || [ "$Italian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91861-sid_89f63e5c30e659b42f810054b6886a62
unzip -u id_91861-sid_89f63e5c30e659b42f810054b6886a62
rm -f id_91861-sid_89f63e5c30e659b42f810054b6886a62
cp -R italian_1_2_2/* ./
rm -rf italian_1_2_2
fi

read -e -p "want to install additional Japanese (日本語) language (y/n)? " Japanese
if [ "$Japanese" = "y" ] || [ "$Japanese" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92251-sid_92d17f55e0b3661ed520877ada517b21
unzip -u id_92251-sid_92d17f55e0b3661ed520877ada517b21
rm -f id_92251-sid_92d17f55e0b3661ed520877ada517b21
cp -R japanese_1_0_5/* ./
rm -rf japanese_1_0_5
fi

read -e -p "want to install additional Kurdish (کوردی) language (y/n)? " Kurdish
if [ "$Kurdish" = "y" ] || [ "$Kurdish" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84789
unzip -u id_84789
rm -f id_84789
cp -R kurdish_1_0_5/* ./
rm -rf kurdish_1_0_5
fi

read -e -p "want to install additional Lithuanian (Lietuvių) language (y/n)? " Lithuanian
if [ "$Lithuanian" = "y" ] || [ "$Lithuanian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_94446
unzip -u id_94446
rm -f id_94446
cp -R lithuanian_2013_10_20/* ./
rm -rf lithuanian_2013_10_20
fi


read -e -p "want to install additional Macedonian (македонски јазик) language (y/n)? " Macedonian
if [ "$Macedonian" = "y" ] || [ "$Macedonian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_83006
unzip -u id_83006
rm -f id_83006
cp -R macedonian_1_0_1/* ./
rm -rf macedonian_1_0_1
fi

read -e -p "want to install additional Mandarin Chinese Simplified (简体中文) language (y/n)? " Mandarin_Chinese_Simplified
if [ "$Mandarin_Chinese_Simplified" = "y" ] || [ "$Mandarin_Chinese_Simplified" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91456
unzip -u id_91456
rm -f id_91456
cp -R mandarin_chinese_simplified_script_1_0_3/mandarin_chinese*/* ./
rm -rf mandarin_chinese_simplified_script_1_0_3
fi



read -e -p "want to install additional Mandarin Chinese Traditional (正體中文) language (y/n)? " Mandarin_Chinese_Traditional
if [ "$Mandarin_Chinese_Traditional" = "y" ] || [ "$Mandarin_Chinese_Traditional" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91411
unzip -u id_91411
rm -f id_91411
cp -R mandarin_chinese_traditional_script_1_0_5/mandarin_chinese*/* ./
rm -rf mandarin_chinese_traditional_script_1_0_5
fi

read -e -p "want to install additional Mexican Spanish (Español Mexicano) language (y/n)? " Mexican_Spanish
if [ "$Mexican_Spanish" = "y" ] || [ "$Mexican_Spanish" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92146
unzip -u id_92146
rm -f id_92146
cp -R mexican_spanish_casual_honorifics_1_0_5/mexican_spanish_1_0_5/* ./
rm -rf mexican_spanish_casual_honorifics_1_0_5
fi

read -e -p "want to install additional Persian (فارسی) language (y/n)? " Persian
if [ "$Persian" = "y" ] || [ "$Persian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84784
unzip -u id_84784
rm -f id_84784
cp -R persian_1_5_1/* ./
rm -rf persian_1_5_1
fi

read -e -p "want to install additional Polish (Polski) language (y/n)? " Polish
if [ "$Polish" = "y" ] || [ "$Polish" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84758
unzip -u id_84758
rm -f id_84758
cp -R polish_r210/* ./
rm -rf polish_r210
fi

read -e -p "want to install additional Portuguese (Português) language (y/n)? " Portuguese
if [ "$Portuguese" = "y" ] || [ "$Portuguese" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91501-sid_fa44101f2b16ccf1e77b33415cdf1501
unzip -u id_91501-sid_fa44101f2b16ccf1e77b33415cdf1501
rm -f id_91501-sid_fa44101f2b16ccf1e77b33415cdf1501
cp -R portuguese_1_0_6/* ./
rm -rf portuguese_1_0_6
fi

read -e -p "want to install additional Romanian (Română) language (y/n)? " Romanian
if [ "$Romanian" = "y" ] || [ "$Romanian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84641-sid_49a52b2c944ade82a404f0e3f02cfc38
unzip -u id_84641-sid_49a52b2c944ade82a404f0e3f02cfc38
rm -f id_84641-sid_49a52b2c944ade82a404f0e3f02cfc38
cp -R romanian_1_0_5/* ./
rm -rf romanian_1_0_5
fi

read -e -p "want to install additional Russian (Русский) language (y/n)? " Russian
if [ "$Russian" = "y" ] || [ "$Russian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91291-sid_2f1105bcdc80fe1235ffece076b9edd2
unzip -u id_91291-sid_2f1105bcdc80fe1235ffece076b9edd2
rm -f id_91291-sid_2f1105bcdc80fe1235ffece076b9edd2
cp -R russian_1_0_11/* ./
rm -rf russian_1_0_11
fi

read -e -p "want to install additional Serbian Cyrillic (Српски) language (y/n)? " Serbian_Cyrillic
if [ "$Serbian_Cyrillic" = "y" ] || [ "$Serbian_Cyrillic" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92921-sid_e74a8dc46463d7f3fafeb1ade076fec0
unzip -u id_92921-sid_e74a8dc46463d7f3fafeb1ade076fec0
rm -f id_92921-sid_e74a8dc46463d7f3fafeb1ade076fec0
cp -R serbian_cyrillic_script_3_0_12/serbian_*/* ./
rm -rf serbian_cyrillic_script_3_0_12
fi

read -e -p "want to install additional Serbian Latin (Srpski Latinica) language (y/n)? " Serbian_Latin
if [ "$Serbian_Latin" = "y" ] || [ "$Serbian_Latin" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_84606-sid_073df919f91add3e6881720d784f424d
unzip -u id_84606-sid_073df919f91add3e6881720d784f424d
rm -f id_84606-sid_073df919f91add3e6881720d784f424d
cp -R serbian_latin_script_3_0_11/* ./
rm -rf serbian_latin_script_3_0_11
fi

read -e -p "want to install additional Slovak (Slovenčina) language (y/n)? " Slovak
if [ "$Slovak" = "y" ] || [ "$Slovak" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_93561
unzip -u id_93561
rm -f id_93561
cp -R slovak_3_0_12_2/* ./
rm -rf slovak_3_0_12_2
fi

read -e -p "want to install additional Slovenian (Slovenščina) language (y/n)? " Slovenian
if [ "$Slovenian" = "y" ] || [ "$Slovenian" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_91736-sid_3ba16b2eab910ee3911daa093e204fe5
unzip -u id_91736-sid_3ba16b2eab910ee3911daa093e204fe5
rm -f id_91736-sid_3ba16b2eab910ee3911daa093e204fe5
cp -R slovenian_1_3_0/* ./
rm -rf slovenian_1_3_0
fi

read -e -p "want to install additional Spanish Casual Honorifics (Español Tú) language (y/n)? " Spanish_Casual
if [ "$Spanish_Casual" = "y" ] || [ "$Spanish_Casual" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92696-sid_a3b2a72f9b2800d65cbddf442649a0e3
unzip -u id_92696-sid_a3b2a72f9b2800d65cbddf442649a0e3
rm -f id_92696-sid_a3b2a72f9b2800d65cbddf442649a0e3
cp -R spanish_casual_honorifics_1_0_6/spanish_*/* ./
rm -rf spanish_casual_honorifics_1_0_6
fi

read -e -p "want to install additional Spanish Formal Honorifics (Español Usted) language (y/n)? " Spanish_Formal
if [ "$Spanish_Formal" = "y" ] || [ "$Spanish_Formal" = "Y" ] ; then
wget https://www.phpbb.com/customise/db/download/id_92601-sid_94c4839135d8d8cb4e1a9e6df904f29c
unzip -u id_92601-sid_94c4839135d8d8cb4e1a9e6df904f29c
rm -f id_92601-sid_94c4839135d8d8cb4e1a9e6df904f29c
cp -R spanish_formal_honorifics_1_0_6/spanish_*/* ./
rm -rf spanish_formal_honorifics_1_0_6
fi










else
echo "apache and php is not installed on your server thank you to install and restart the script"
exit
fi
exit
