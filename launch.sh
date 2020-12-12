#!/bin/bash
echo "Launching Magenta-Pure Data MIDI Control Interface"
IN_PORT="magenta_in"
OUT_PORT="magenta_out"
echo "IN: $IN_PORT"
echo "OUT: $OUT_PORT"
BUNDLE_PATHS="./basic_rnn.mag"

magenta_midi \
	 --input_ports=${IN_PORT} \
   --output_ports=${OUT_PORT} \
	 --bundle_files=${BUNDLE_PATHS} \
	 --metronome_channel=0 \
	 --allow-overlap=1 \
	 --tempo_control_number=2

