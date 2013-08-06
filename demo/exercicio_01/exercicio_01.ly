\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Exercício 1"
	subsubtitle = "Batida nos tempos 1, 2, 3 e 4"
	instrument = " "
	composer = " "
	tagline = ##f
}

tempo_I = \drums { \repeat unfold 4 { hh bd bd bd } }
tempo_II = \drums { \repeat unfold 4 { bd hh bd bd } }
tempo_III = \drums { \repeat unfold 4 { bd bd hh bd } }
tempo_IV = \drums { \repeat unfold 4 { bd bd bd hh } }

midiStaff = \drums {
	{ r2 } \repeat unfold 4 { ss4 }
	\tempo_I
	\tempo_II
	\tempo_III
	\tempo_IV
	{ r2 }	
}

midiStaff_I = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I { r2 } }
midiStaff_II = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_II { r2 } }
midiStaff_III = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_III { r2 } }
midiStaff_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_IV { r2 } }

\book { \bookOutputName "exercicio_01_1.0x" \score { \times 1/1 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_01_1.5x" \score { \times 2/3 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_01_2.0x" \score { \times 1/2 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_01_3.0x" \score { \times 1/3 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_01_4.0x" \score { \times 1/4 \midiStaff \midi {} } }

\book { \bookOutputName "exercicio_01_tempo_1" \score { \midiStaff_I \midi {} } }
\book { \bookOutputName "exercicio_01_tempo_2" \score { \midiStaff_II \midi {} } }
\book { \bookOutputName "exercicio_01_tempo_3" \score { \midiStaff_III \midi {} } }
\book { \bookOutputName "exercicio_01_tempo_4" \score { \midiStaff_IV \midi {} } }

\score { { \clef bass \repeat unfold 2 { e,4 r  r  r  } } \header { piece = "Tempo 1:" } \layout {} }
\score { { \clef bass \repeat unfold 2 { r  e, r  r  } } \header { piece = "Tempo 2:" } \layout {} }
\score { { \clef bass \repeat unfold 2 { r  r  e, r  } } \header { piece = "Tempo 3:" } \layout {} }
\score { { \clef bass \repeat unfold 2 { r  r  r  e, } } \header { piece = "Tempo 4:" } \layout {} }
