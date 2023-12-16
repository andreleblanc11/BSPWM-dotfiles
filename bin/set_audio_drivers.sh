#!/bin/bash
# Set correct audio drivers on startup
# 
# 

check_drivers=$(pacmd list-sources | grep alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__source)

if [[ $check_drivers ]]; then
	pacmd set-default-source alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__source
fi
