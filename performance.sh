#!/bin/bash
# CAUTION: THIS IS VERY EXPERIMENTAL AND SOUNDS...INTERESTING
echo "Launching Performance RNN melody model for Magenta-Pure Data Interface"
IN_PORT="magenta_in"
OUT_PORT="magenta_out"
echo "MIDI IN: $IN_PORT"
echo "MIDI OUT: $OUT_PORT"
BUNDLE_PATHS="./magenta/performance.mag"

magenta_midi \
	 --input_ports=${IN_PORT} \
   --output_ports=${OUT_PORT} \
	 --bundle_files=${BUNDLE_PATHS} \
	 --metronome_channel=0 \
	 --allow-overlap=1 \
	 --tempo_control_number=2

