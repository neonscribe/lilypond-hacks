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
	\noDoubleAccidentalMusic \transpose c \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      <<
      {
      \refrainLyricsOne
      \refrainLyricsRepOne
      \refrainLyricsRepTwo
      \refrainLyricsBridge
      \refrainLyricsThree
      \refrainLyricsRepThree
      }
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsTwo }
      >>
    }
  >>
  \layout { ragged-bottom = ##t }
}
