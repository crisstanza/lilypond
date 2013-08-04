\version "2.16.2"

\header {
	title = "Ritmo 1"
	subsubtitle = "Um ritmo simples"
	instrument = "Bateria"
	composer = " "
	arranger = " "
	tagline = ##f
}

\score {
	\drums {
		{ r2 } \bar "|"
		\repeat unfold 4 { ss8 }
		\repeat unfold 4 { <hh bd> bd <sn hh bd> bd }
		\repeat unfold 4 { ss }
		{ cymc2 }
		{ r2 }
	}
	\midi {}
	\layout {}
}
