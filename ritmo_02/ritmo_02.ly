\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Ritmo 2"
	subsubtitle = "Um ritmo simples"
	instrument = " "
	composer = " "
	tagline = ##f
}

\layout { indent = 0.0\cm }

\score {
	\drums {
		\override Score.BarNumber #'break-visibility = #all-visible
		\bar ""
		{ r2 } \bar "||"
		\repeat unfold 4 { ss8 }
		\repeat unfold 16 { <hh bd>16 hh <hh sn> hh }
		\repeat unfold 4 { ss8 }
		{ cymc2 }
		{ r2 }
	}
	\midi { \tempo 4 = 59 }
	\layout {}
}
