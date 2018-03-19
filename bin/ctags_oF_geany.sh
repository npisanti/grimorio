#!/bin/bash

if [ -d "/home/$USER/oF" ]; then

    cd /home/$USER/oF/addons
    find -type f -name "*.h" -print0 | xargs -0 geany -gP ofx.cpp.tags
    sleep 1
    mv ofx.cpp.tags /home/$USER/.config/geany/tags

    cd /home/$USER/oF/libs/openFrameworks
    find -type f -name "*.h" -print0 | xargs -0 geany -gP of.cpp.tags
    sleep 1
    mv of.cpp.tags /home/$USER/.config/geany/tags

    echo "oF ctags setted"

fi

exit
