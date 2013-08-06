\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Ritmo 1"
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
		\repeat unfold 16 { <cymr bd>16 cymr <cymr sn> cymr }
		\repeat unfold 4 { ss8 }
		{ cymc2 }
		{ r2 }
	}
	\midi {}
	\layout {}
}
