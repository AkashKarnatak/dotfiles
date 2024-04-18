PICTURE=`find $HOME/nordic-wallpapers/wallpapers | shuf -n 1`
gsettings set org.gnome.desktop.background picture-uri $PICTURE
gsettings set org.gnome.desktop.background picture-uri-dark $PICTURE
