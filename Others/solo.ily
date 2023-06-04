%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \soloKey \whatKey {
       \soloChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \soloKey \whatKey {
	  \soloMelody
	  }
	}
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
