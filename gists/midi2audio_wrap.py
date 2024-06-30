from midi2audio import FluidSynth
import os, sys, string
from pathlib import Path

def main():
	PROGRAM_NAME = "midi2audio_wrap"
	if len(sys.argv) < 3: #-1

		print("USAGE: python "+PROGRAM_NAME+".py <file.mid(i)>  <target_format>")
		print("For example: python "+PROGRAM_NAME+".py 1270.mid FLAC")

	else:
		# get midi name
		input = str(sys.argv[1])
		target = str(sys.argv[2]).lower().split(".")[-1]
		file = Path(input)

		fs = FluidSynth()
		# Path of file for object copy (ambiguous behaviour in Python pathlib)
		#print(file.resolve())
		#print(Path(file).with_suffix("."+target).resolve())

		fs.midi_to_audio(file.resolve(), (Path(file).with_suffix("."+target).resolve()))

if __name__ == '__main__':
	main()