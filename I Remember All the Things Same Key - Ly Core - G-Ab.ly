\version "2.24.0"

\include "I Remember You - Ly Core - G.ly"

rememberTransitionLyrics =
\lyricmode {
  tell them I re -- mem -- ber,
  tell them I re -- mem -- ber,
  tell them I re -- mem -- ber
}

%%% 3-6-2-5 in G
rememberTransitionChords = \chordmode {
  b2:m7 e2:m7 a2:m7 d2:7
  b2:m7 e2:m7 a2:m7 d2:7
  b2:m7 e2:m7 a2:m7 d2:7
}

rememberTransitionMelody = \relative f' {
  \time 4/4
  \key g \major
  \clef \whatClef

  \mark \markup{ "Coda" }
  
  fs4 g4 d4 e4 | g2 a2 |
  fs4 g4 d4 e4 | g2 a2 |
  fs4 g4 d4 e4 | g2 a2 |
  \bar "||"
}


\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose g \whatKey {
       \rememberTransitionChords
	}
      }
    }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose g \whatKey {
	  \rememberTransitionMelody
	  }
	\pageBreak
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \rememberTransitionLyrics
    }
  >>
  \layout { ragged-right = ##f
	    ragged-bottom = ##f }
}

\include "All the Things You Are - Refrain - Ly Core - Ab.ly"
