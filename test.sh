#!/bin/bash
echo "Launching Test MIDI Controller Interface"
IN_PORT="magenta_in"
OUT_PORT="magenta_out"
BUNDLE_PATHS="./attention_rnn.mag"

magenta_midi \
	 --input_ports=${IN_PORT} \
   --output_ports=${OUT_PORT} \
	 --bundle_files=${BUNDLE_PATHS}
