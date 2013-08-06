\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Exercício 3"
	subsubtitle = "Batida em 3 dos tempos"
	instrument = " "
	composer = " "
	tagline = ##f
}

tempo_I_II_III = \drums { \repeat unfold 4 { hh hh hh bd } }
tempo_I_II_IV = \drums { \repeat unfold 4 { hh hh bd hh } }
tempo_I_III_IV = \drums { \repeat unfold 4 { hh bd hh hh } }
tempo_II_III_IV = \drums { \repeat unfold 4 { bd hh hh hh } }

midiStaff = \drums {
	{ r2 } \repeat unfold 4 { ss4 }
	\tempo_I_II_III
	\tempo_I_II_IV
	\tempo_I_III_IV
	\tempo_II_III_IV
	{ r2 }	
}

midiStaff_I_II_III = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I_II_III { r2 } }
midiStaff_I_II_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I_II_IV { r2 } }
midiStaff_I_III_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I_III_IV { r2 } }
midiStaff_II_III_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_II_III_IV { r2 } }

\book { \bookOutputName "exercicio_03_1.0x" \score { \times 1/1 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_03_1.5x" \score { \times 2/3 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_03_2.0x" \score { \times 1/2 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_03_3.0x" \score { \times 1/3 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_03_4.0x" \score { \times 1/4 \midiStaff \midi {} } }

\book { \bookOutputName "exercicio_03_tempos_1_2_3" \score { \midiStaff_I_II_III \midi {} } }
\book { \bookOutputName "exercicio_03_tempos_1_2_4" \score { \midiStaff_I_II_IV \midi {} } }
\book { \bookOutputName "exercicio_03_tempos_1_3_4" \score { \midiStaff_I_III_IV \midi {} } }
\book { \bookOutputName "exercicio_03_tempos_2_3_4" \score { \midiStaff_II_III_IV \midi {} } }

\score { { \clef bass \bar "|:" \repeat unfold 2 { e,4 e,  r   r  } \bar ":|" } \header { piece = "Tempos 1, 2 e 3:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { e,  r   e,  r  } \bar ":|" } \header { piece = "Tempos 1, 2 e 4:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { e,  r   r   e, } \bar ":|" } \header { piece = "Tempos 1, 3 e 4:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { r   e,  e,  r  } \bar ":|" } \header { piece = "Tempos 2, 3 e 4:" } \layout {} }
