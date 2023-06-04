%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \bridgeKey \whatKey {
       \bridgeChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \bridgeKey \whatKey {
	  \bridgeMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \bridgeLyrics
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
