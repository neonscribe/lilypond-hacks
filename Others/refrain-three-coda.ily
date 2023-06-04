%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
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
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsPre
      <<
      {
      \refrainLyricsOne
      \refrainLyricsRepOne
      \refrainLyricsRest
      \refrainLyricsCoda
      }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsThree }
    >>
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
