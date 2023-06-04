%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose bf \whatKey {
       \codaChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose bf \whatKey {
	  \codaMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \codaLyrics
    }
    #(if showBassLine #{
    \new Staff {
      \context Voice = "voiceMelody" { 
	  \codaBassLine
	}
    }
      #} )
  >>
  \layout { ragged-bottom = ##t }
}
