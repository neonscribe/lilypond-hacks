%% -*- Mode: LilyPond -*-

\include "I Remember You - Ly Core - G.ly"

rememberTransitionLyrics =
\lyricmode {
  tell them I re -- mem -- ber
}

%%% 3-6-2-5 in G
rememberBeforeTransitionChords = \chordmode {
  b2:m7 e2:m7 a2:m7 d2:7
}

%%% 3-6-2-5 in Ab
rememberAfterTransitionChords = \chordmode {
  c2:m7 f2:m7 bf2:m7 ef2:7
}

rememberBeforeTransitionMelody = \relative f' {
  \time 4/4
  \key g \major
  \clef \whatClef

  \mark \markup{ "Coda" }
  
  fs4 g4 d4 e4 | g2 a2 |
}


rememberAfterTransitionMelody = \relative f' {
  \key af \major

  g4 af4 ef4 f4 | af2 bf2 |
  
  \bar "||"
  \break
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose g \whatKey {
       \rememberBeforeTransitionChords
	}
     \transpose af \whatKeyAll {
       \rememberAfterTransitionChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose g \whatKey {
	  \rememberBeforeTransitionMelody
	  }
	\noDoubleAccidentalMusic \transpose af \whatKeyAll {
	  \rememberAfterTransitionMelody
	  }
	\pageBreak
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \rememberTransitionLyrics
      \rememberTransitionLyrics
    }
  >>
  \layout { ragged-right = ##f
	    ragged-bottom = ##f }
}

whatKey = \whatKeyAll

\include "All the Things You Are - Refrain - Ly Core - Ab.ly"
