\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Ritmo 3"
	subsubtitle = "Um ritmo com várias vozes"
	instrument = " "
	composer = " "
	tagline = ##f
}

\layout { indent = 0.0\cm }

trilha_I = \drums { hh4 hh hh hh }
trilha_II = \drums { bd4 r sn r }
trilha_III = \drums { r4 r r r8 sn16 sn16 }
trilha_IV = \drums { cymc4 r r r }
trilha_final = \drums { <hh cymc>1 }

\score {
	\times 1/2 {
		\drums {
			r4 ss ss ss ss
		} 
		\repeat unfold 4 <<
			\new DrumVoice { \trilha_I }
			\new DrumVoice { \trilha_II }
			\new DrumVoice { \trilha_III }
			\new DrumVoice { \trilha_IV }
		>>
		\trilha_final
		\drums {
			r4
		}
	}
	\midi {}
}

\score {
	{
		\bar "|:"
		<<
			\new DrumVoice { \trilha_I }
			\new DrumVoice { \trilha_II }
			\new DrumVoice { \trilha_III }
			\new DrumVoice { \trilha_IV }
		>>
		\bar ":|"
		\trilha_final
	}
	\layout {}
}
