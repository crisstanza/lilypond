\version "2.16.2"

batidaTempo = \drums { \repeat unfold 60 { bd4 } }
chamada = \drums { r2 \repeat unfold 4 { ss4 } }

\book { \bookOutputName "metronomo_060_bpm" \score { \times 1/1 { \chamada \repeat unfold 1 \batidaTempo } \midi {} } }
\book { \bookOutputName "metronomo_120_bpm" \score { \times 1/2 { \chamada \repeat unfold 2 \batidaTempo } \midi {} } }
\book { \bookOutputName "metronomo_180_bpm" \score { \times 1/3 { \chamada \repeat unfold 3 \batidaTempo } \midi {} } }
\book { \bookOutputName "metronomo_240_bpm" \score { \times 1/4 { \chamada \repeat unfold 4 \batidaTempo } \midi {} } }
