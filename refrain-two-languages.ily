emphasize = {
  \override Lyrics.LyricText.font-shape = #'italic
}

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
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
    <<
      { \refrainLyricsLanguageOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\emphasize \refrainLyricsLanguageTwo }
    >>
    }
  >>
  \layout { ragged-bottom = ##t }
}
