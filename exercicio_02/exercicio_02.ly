\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Exercício 2"
	subsubtitle = "Batida em 2 dos tempos"
	instrument = " "
	composer = " "
	tagline = ##f
}

tempo_I_II = \drums { \repeat unfold 4 { hh hh bd bd } }
tempo_I_III = \drums { \repeat unfold 4 { hh bd hh bd } }
tempo_I_IV = \drums { \repeat unfold 4 { hh bd bd hh } }

tempo_II_III = \drums { \repeat unfold 4 { bd hh hh bd } }
tempo_II_IV = \drums { \repeat unfold 4 { bd hh bd hh } }

tempo_III_IV = \drums { \repeat unfold 4 { bd bd hh hh } }

midiStaff = \drums {
	{ r2 } \repeat unfold 4 { ss4 }
	\tempo_I_II
	\tempo_I_III
	\tempo_I_IV
	\tempo_II_III
	\tempo_II_IV
	\tempo_III_IV
	{ r2 }	
}

midiStaff_I_II = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I_II { r2 } }
midiStaff_I_III = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I_III { r2 } }
midiStaff_I_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_I_IV { r2 } }
midiStaff_II_III = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_II_III { r2 } }
midiStaff_II_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_II_IV { r2 } }
midiStaff_III_IV = \drums { { r2 } \repeat unfold 4 { ss4 } \tempo_III_IV { r2 } }

\book { \bookOutputName "exercicio_02_1.0x" \score { \times 1/1 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_02_1.5x" \score { \times 2/3 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_02_2.0x" \score { \times 1/2 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_02_3.0x" \score { \times 1/3 \midiStaff \midi {} } }
\book { \bookOutputName "exercicio_02_4.0x" \score { \times 1/4 \midiStaff \midi {} } }

\book { \bookOutputName "exercicio_02_tempos_1_2" \score { \midiStaff_I_II \midi {} } }
\book { \bookOutputName "exercicio_02_tempos_1_3" \score { \midiStaff_I_III \midi {} } }
\book { \bookOutputName "exercicio_02_tempos_1_4" \score { \midiStaff_I_IV \midi {} } }
\book { \bookOutputName "exercicio_02_tempos_2_3" \score { \midiStaff_II_III \midi {} } }
\book { \bookOutputName "exercicio_02_tempos_2_4" \score { \midiStaff_II_IV \midi {} } }
\book { \bookOutputName "exercicio_02_tempos_3_4" \score { \midiStaff_III_IV \midi {} } }

\score { { \clef bass \bar "|:" \repeat unfold 2 { e,4 e,  r   r  } \bar ":|" } \header { piece = "Tempos 1 e 2:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { e,  r   e,  r  } \bar ":|" } \header { piece = "Tempos 1 e 3:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { e,  r   r   e, } \bar ":|" } \header { piece = "Tempos 1 e 4:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { r   e,  e,  r  } \bar ":|" } \header { piece = "Tempos 2 e 3:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { r   e,  r   e, } \bar ":|" } \header { piece = "Tempos 2 e 4:" } \layout {} }
\score { { \clef bass \bar "|:" \repeat unfold 2 { r   r   e,  e, } \bar ":|" } \header { piece = "Tempos 3 e 4:" } \layout {} }
