#!/bin/sh
# Name: Flip My Landscape
# Author: Pranish Pradhan

# Query the Kindle window manager for the active reading orientation
CURRENT_ORIENT=$(lipc-get-prop com.lab126.winmgr orientationLock)

# If the book is open in standard Landscape (L), spin it to Reverse Landscape (R).
# If it is in Reverse Landscape, spin it back to standard Landscape.
if [ "$CURRENT_ORIENT" = "L" ]; then
    lipc-set-prop com.lab126.winmgr orientationLock R
else
    lipc-set-prop com.lab126.winmgr orientationLock L
fi
