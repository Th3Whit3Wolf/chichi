build:
    sassc chichi.sass css/chichi.css  
    sassc chichi.sass -t compressed css/chichi.min.css                        
    sassc chichi.sass -m css/chichi.css  
    sudo rm -dR scss
    cp -r sass scss
    sass-convert -R scss -F sass -T scss  
    fd -e sass --search-path=scss -x rm -rf {}
