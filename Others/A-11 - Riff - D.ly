%% -*- Mode: LilyPond -*-

\version "2.22"

\include "lead-sheets.ily"

\header {
  title = "A-11"
  composer = "Hank Cochran"
  copyright = ""
}

whatKey = d

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \set chordChanges = ##f

  d8 df4. b8 bf4. a1
  
  }

refrainKey = d

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef treble
  \mark "Riff"

  d8 df8 r4 b8 bf8 r4 | a4 r2. |
  \bar "||"
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
