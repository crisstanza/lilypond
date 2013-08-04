\version "2.16.2"

\header {
	title = "Sons"
	subsubtitle = "Demonstração de alguns timbres"
	instrument = " "
	composer = " "
	arranger = " "
	tagline = ##f
}

\book { \bookOutputName "chipo" \score { \drums { { r hh r } } \midi {} } }
\book { \bookOutputName "bumbo" \score { \drums { { r bd r } } \midi {} } }
\book { \bookOutputName "caixa" \score { \drums { { r sn r } } \midi {} } }
\book { \bookOutputName "baqueta" \score { \drums { { r ss r } } \midi {} } }
\book { \bookOutputName "prato" \score { \drums { { r cymc r } } \midi {} } }

\score { \drums { { hh } } \header { piece = "Hihat (chipô):" } \layout {} }
\score { \drums { { bd } } \header { piece = "Bass drum (bumbo):" } \layout {} }
\score { \drums { { sn } } \header { piece = "Snare (caixa):" } \layout {} }
\score { \drums { { cb } } \header { piece = "Stick stroke (baqueta):" } \layout {} }
\score { \drums { { cymc } } \header { piece = "Cymbal (prato):" } \layout {} }
