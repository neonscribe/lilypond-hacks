%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \verseKey \whatKey {
       \verseChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \verseKey \whatKey {
	  \verseMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \verseLyrics
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
