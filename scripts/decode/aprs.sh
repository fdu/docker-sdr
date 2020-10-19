#!/bin/sh

rtl_fm -M fm -f 144.800M -p 0 - | direwolf -t 0 -r 48000 -B 1200 -
