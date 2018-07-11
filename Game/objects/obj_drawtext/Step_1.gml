

if tick > string_length(text) {
	textcomplete = 1
	//drawing = 0
}

if tock = 0 {
	drawtext = drawtext + string_char_at(text,tick)
	tick = tick + 1
	tock = textspeed }
else tock = tock -1


