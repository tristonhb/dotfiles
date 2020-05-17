#! /bin/sh

fwid=$(bspc query -N -n focused.automatic)

if [ -n "$fwid" ] ; then
      wattr wh $fwid | {
          read width height
          if [ $width -gt $height ] ; then
              echo "split_dir=east"
          else
              echo "split_dir=south"
          fi
      }
fi      
