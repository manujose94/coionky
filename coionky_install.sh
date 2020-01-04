killall conky 2>/dev/null
sleep 1
theme="purple"
# if there is no hidden folder autostart then make one
[ -d $HOME"/.config/autostart" ] || mkdir -p $HOME"/.config/autostart"

# if there is no hidden folder conky then make one
[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
#
#   NEWTWORK
#
#Selecting network
echo "[1] Normally, you must check your network name " 
echo -n "[1] Put the name here (terminal *ifconfig*)[Enter to ignore]:"
read cobnnection_name 
if [ "$connection_name" != "" ] ;then #Delete all project and create structure folder(1)
  sed -i 's/enp4s0/'"$connection_name"'/g' .conkyrc 
	 echo "The name changed!!"
fi
#
#   THEME
#
#Choose theme green,blue,dark,purple
echo -n "[2] Dou you want change the current theme ($theme) (green,red,dark,purple,blue,daftpunk)[Enter to ignore]: " 
read colortheme 
if [ "$colortheme" == "" ] ;then
	echo "Color default theme $theme applied"
else
	theme=$colortheme
	case $theme in
      green)
        sed -i 's/color0 =.*/color0 = "20452e",/g' .conkyrc
        sed -i 's/color1 =.*/color1 = "32594a",/g' .conkyrc
        sed -i 's/color2 =.*/color2 = "3d7557",/g' .conkyrc
        sed -i 's/color3 =.*/color3 = "59995b",/g' .conkyrc

        sed -i 's/cpu0 =.*/cpu0 = 0x20452e/g' rings.lua
        sed -i 's/cpu1 =.*/cpu1 = 0x32594a/g' rings.lua 
        sed -i 's/cpu2 =.*/cpu2 = 0x3d7557/g' rings.lua
        sed -i 's/cpu3 =.*/cpu3 = 0x59995b/g' rings.lua
        sed -i 's/^\gpu =.*/gpu = 0x3d7557/g' rings.lua
        ;;
      purple)
        sed -i 's/color0 =.*/color0 = "5695b3",/g' .conkyrc
        sed -i 's/color1 =.*/color1 = "5b31b6",/g' .conkyrc
        sed -i 's/color2 =.*/color2 = "7b31b6",/g' .conkyrc
        sed -i 's/color3 =.*/color3 = "9b31b6",/g' .conkyrc

        sed -i 's/cpu0 =.*/cpu0 = 0x3b31b6/g' rings.lua
        sed -i 's/cpu1 =.*/cpu1 = 0x5b31b6/g' rings.lua 
        sed -i 's/cpu2 =.*/cpu2 = 0x7b31b6/g' rings.lua
        sed -i 's/cpu3 =.*/cpu3 = 0x9b31b6/g' rings.lua
        sed -i 's/^\gpu =.*/gpu = 0x9b31b6/g' rings.lua
      ;;
      dark)
        sed -i 's/color0 =.*/color0 = "171717",/g' .conkyrc 
        sed -i 's/color1 =.*/color1 = "2f2e2e",/g' .conkyrc
        sed -i 's/color2 =.*/color2 = "4f4d4d",/g' .conkyrc
        sed -i 's/color3 =.*/color3 = "ffffff",/g' .conkyrc

        sed -i 's/cpu0 =.*/cpu0 = 0x171717/g' rings.lua
        sed -i 's/cpu1 =.*/cpu1 = 0x2f2e2e/g' rings.lua 
        sed -i 's/cpu2 =.*/cpu2 = 0x4f4d4d/g' rings.lua
        sed -i 's/cpu3 =.*/cpu3 = 0xffffff/g' rings.lua
        sed -i 's/^\gpu =.*/gpu = 0x4f4d4d/g' rings.lua
      ;;
      red)
        sed -i 's/color0 =.*/color0 = "890017",/g' .conkyrc
        sed -i 's/color1 =.*/color1 = "ff002b",/g' .conkyrc
        sed -i 's/color2 =.*/color2 = "658085",/g' .conkyrc
        sed -i 's/color3 =.*/color3 = "ff0096",/g' .conkyrc

        sed -i 's/cpu0 =.*/cpu0 = 0x890017/g' rings.lua
        sed -i 's/cpu1 =.*/cpu1 = 0xff002b/g' rings.lua 
        sed -i 's/cpu2 =.*/cpu2 = 0xff0056/g' rings.lua
        sed -i 's/cpu3 =.*/cpu3 = 0xff0096/g' rings.lua
        sed -i 's/^\gpu =.*/gpu = 0xff0056/g' rings.lua
      ;;
	blue)
        sed -i 's/color0 =.*/color0 = "0c213f",/g' .conkyrc
        sed -i 's/color1 =.*/color1 = "1d3344",/g' .conkyrc
        sed -i 's/color2 =.*/color2 = "24415b",/g' .conkyrc
        sed -i 's/color3 =.*/color3 = "9cb8d7",/g' .conkyrc
	   sed -i 's/Ubuntu Mono/Ubuntu Mono Bold/g' .conkyrc


        sed -i 's/cpu0 =.*/cpu0 = 0x0c213f/g' rings.lua
        sed -i 's/cpu1 =.*/cpu1 = 0x1d3344/g' rings.lua 
        sed -i 's/cpu2 =.*/cpu2 = 0x24415b/g' rings.lua
        sed -i 's/cpu3 =.*/cpu3 = 0x9cb8d7/g' rings.lua
        sed -i 's/^\gpu =.*/gpu = 0x3f5c89/g' rings.lua
      ;;
	daftpunk)
        sed -i 's/color0 =.*/color0 = "ff9200",/g' .conkyrc
        sed -i 's/color1 =.*/color1 = "efa31d",/g' .conkyrc
        sed -i 's/color2 =.*/color2 = "883f94",/g' .conkyrc
        sed -i 's/color3 =.*/color3 = "dd9d8a",/g' .conkyrc
	   sed -i 's/Ubuntu Mono/Ubuntu Mono Bold/g' .conkyrc


        sed -i 's/cpu0 =.*/cpu0 = 0xff9200/g' rings.lua
        sed -i 's/cpu1 =.*/cpu1 = 0xefa31d/g' rings.lua 
        sed -i 's/cpu2 =.*/cpu2 = 0x883f94/g' rings.lua
        sed -i 's/cpu3 =.*/cpu3 = 0xdd9d8a/g' rings.lua
        sed -i 's/^\gpu =.*/gpu = 0x883f94/g' rings.lua
      ;;
      *)
        echo "don\'t there is this theme: $theme "
      ;;
	esac
	echo "Color theme: $theme applied"
fi



echo "The files have been copied to ~/.config/conky."
# the standard place conky looks for a config file
cp -r * ~/.config/conky/

cp .conkyrc ~/.conkyrc

echo "Making sure conky autostarts next boot."
# making sure conky is started at boot
cp conky.desktop ~/.config/autostart/conky.desktop

if ! location="$(type -p "conkey")" || [ -z "conkey" ]; then
  echo "installing conkey with lua for this script to work"
    sudo apt-get install conky-all
  else
    echo "conkey with lua is already installed. Proceeding..."
fi
if ! location="$(type -p "sensors")" || [ -z "sensors" ]; then
  echo "installing lm-sensors for this script to work"
    sudo apt-get install lm-sensors
  else
    echo "lm-sensors is already installed. Proceeding..."
fi
if ! location="$(type -p "jq")" || [ -z "jq" ]; then
	echo "installing jq this script to work"
  	sudo apt-get install jq
  else
  	echo "jq is already installed. Proceeding..."
fi
if ! location="$(type -p "curl")" || [ -z "curl" ]; then
	echo "installing curl this script to work"
  	sudo apt-get install curl
  else
  	echo "curl is already installed. Proceeding..."
fi
echo "running conky.."
conky -q ~/.config/conky/conky.conf &
