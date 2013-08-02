\version "2.16.2"

\header {
	title = "Exercício 1"
	subsubtitle = "Batida nos tempos 1, 2, 3 e 4"
	instrument = " "
	composer = " "
	arranger = " "
	tagline = ##f
}

\score {
	\drums {
		\repeat unfold 4 { hh bd bd bd }
		\repeat unfold 4 { bd hh bd bd }
		\repeat unfold 4 { bd bd hh bd }
		\repeat unfold 4 { bd bd bd hh }
	}
	\midi {}
}

\score { { \clef bass \repeat unfold 4 { e, r  r  r  } } \header { piece = "Tempo 1:" } \layout {} }
\score { { \clef bass \repeat unfold 4 { r  e, r  r  } } \header { piece = "Tempo 2:" } \layout {} }
\score { { \clef bass \repeat unfold 4 { r  r  e, r  } } \header { piece = "Tempo 3:" } \layout {} }
\score { { \clef bass \repeat unfold 4 { r  r  r  e, } } \header { piece = "Tempo 4:" } \layout {} }
