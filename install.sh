#!/usr/bin/env bash

printf "Light or Dark variant [dark]: "
read var

if [[ $var == "" ]]; then
    var="dark"
fi

if [[ -e "$HOME/.Xresources" ]]; then
    if [[ $var == "dark" ]]; then
        cat ./Xresources_dark >> ~/.Xresources
    else
        cat ./Xresources_light >> ~/.Xresources
    fi
else
    if [[ $var == "dark" ]]; then
        eval "cp ./Xresources_dark ~/.Xresources"
    else
        eval "cp ./Xresources_light ~/.Xresources"
    fi
fi
