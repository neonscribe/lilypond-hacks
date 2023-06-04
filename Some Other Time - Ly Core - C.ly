%% -*- Mode: LilyPond -*-

\include "jazz-chords.ily"
\include "english.ly"
\version "2.24.0"

verseLyrics = \lyricmode {
Twenty four hours can go so fast
You look around, the day has passed
When you're in love, time is precious stuff
Even a lifetime isn't enough
}

verseChords = \chordmode {
}

verseMelody = \relative f' {
  \time 2/2
  \key c \major
  \clef \whatClef
  \tempo "Freely"

}

refrainLyrics = \lyricmode {
Where has the time all gone to?
Haven't done half the things I want to
Oh, well, we'll catch up some other time

This day was just a token
Too many words are still unspoken
Oh, well, we'll catch up some other time

Just when the fun is starting
Comes the time for parting
But let's be glad for what we had and what's to come

There's so much more embracing
Still to be had, but time is racing
Oh, well, we'll catch up some other time
}

refrainChords = \chordmode {
}

refrainMelody = \relative f' {
  \time 4/4
  \key c \major
  \clef \whatClef
  \tempo "Medium"

  \mark \markup{ \box "A1" }

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  \bar "|."
}

\include "paper.ily"

\header {
  title = "Some Other Time"
  subtitle = \instrument
  poet = "Betty Comden & Adolph Green"
  composer = "Leonard Bernstein"
  copyright = "© 1945 Warner Bros. Inc."
}

\markup {
  % Leave a gap after the header
  \vspace #1
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose c \whatKey {
       \verseChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose c \whatKey {
	  \verseMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \verseLyrics
    }
  >>
  \layout { }
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose c \whatKey {
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
      \refrainLyrics
    }
  >>
  \layout { }
}
