# Installs

## window manager
bspwm-rounded-corners

## audio visualizer
glava

## lock screen
i3lock-color
i3lock-fany-multimonitor 



# SETUP

## glava

glava is used as the audio visualizer
it is started with 

``` 
glava --desktop --force-mod radial
```

it has to be positioned according to the mod to use by altering the 

request setgeometry

calls in ~/.config/glava/rc.glsl


