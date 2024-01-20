#!/bin/bash
# Set correct audio drivers on startup
# 
# 

check_drivers=$(pacmd list-sources | grep alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__Speaker__sink)

if [[ $check_drivers ]]; then
	pacmd set-default-sink alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__Speaker__sink
fi
