%% -*- Mode: LilyPond -*-

\version "2.22"
\include "lead-sheets.ily"

\header {
  title = "Flowers on the Wall"
  composer = "Lew DeWitt"
  copyright = ""
}

whatKey = fs

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \set chordChanges = ##f

  fs1:m
  
  }

refrainKey = fs

refrainMelody = \relative g, {
  \time 4/4
  \key fs \minor
  \clef bass
  \mark "Intro"

  fs8 fs8 fs8 fs16 fs8 fs16 fs8 fs8 fs8
  \bar "||"
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
