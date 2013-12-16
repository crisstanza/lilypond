\version "2.14.2"

#(set-default-paper-size "a6")

\header {
	title = "Ritmo 4"
	subsubtitle = "Um ritmo com várias vozes"
	instrument = " "
	composer = " "
	tagline = ##f
}

\layout { indent = 0.0\cm }

trilhaI = \drums { <hh bd>4 hh <hh sn> hh }
trilhaII = \drums { r r r8 ss8 }
trilhaIII = \drums { tomh4 tommh tomml toml }
trilhafinal = \drums { cymc2 }

\score {
	\times 1/3 {
		\drums {
			ss
		} 
		\repeat unfold 8 <<
			\repeat unfold 2 <<
				\new DrumVoice { \trilhaI }
				\new DrumVoice { \trilhaII }
			>>
			\new DrumVoice { \trilhaIII }
		>>
		\trilhafinal
	}
	\midi {}
}

\score {
	{
		\bar "|:"
		\repeat unfold 1 <<
			\repeat unfold 2 <<
				\new DrumVoice { \trilhaI }
				\new DrumVoice { \trilhaII }
			>>
			\new DrumVoice { \trilhaIII }
		>>
		\bar ":|"
		\trilhafinal
	}
	\layout {}
}

