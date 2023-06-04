%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
	\refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\refrainLyricsOne
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
	>>
	}
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
