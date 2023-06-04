%% -*- Mode: LilyPond -*-

\version "2.22"
\include "lead-sheets.ily"

\header {
  title = "Hot Cha"
  subtitle = "Transcription of John Harrison's bass line on Roy Buchanan's 1975 album Live Stock"
  composer = "Willie Woods"
  copyright = "© 1964 Jobete Music Company"
}

whatKey = bf

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1 bf1 g1:m7 g1:m7
  bf1 bf1 g1:m7 g1:m7
  bf1 d1:7 ef1 e1:dim7
  bf2 g2:m7 c2:m7 f2:7 bf2 ef4. bf8 bf8 f2..:7
  bf2 ef2 bf1
  }

refrainKey = bf

refrainMelody = \relative g, {
  \time 4/4
  \key \refrainKey \major
  \clef bass
  \tempo 4 = 116
  
  \bar ".|:"
  \repeat volta 2 {
  bf4. bf8 f'8 f4 a,8
  bf4. bf8 f'8 f8 d8 f8
  g4. g8 d8 d4 f8
  g4. g8 f8 g8 f8 d8
  \break
  bf4. bf8 f'8 f4 a,8
  bf4. bf8 f'8 f8 d8 f8
  g4. g8 d8 d4 f8
  g4. g8 f8 g8 f8 d8
  \break
  bf4. bf8 f'8 f8 bf,8 c8
  d4. d8 fs8 fs8 d4
  ef4. ef8 g8 g8 ef4
  bf4 df4 e4 g8 df8
  \break
  bf4 d8 f8 g4. d8
  c8 c8 d8 ef8 f8 f8 g8 f8
  \textToCoda
  bf,4 d8 f8 ef8 ef4 bf8~
  bf8 f'8 f8 f8 f8 f8 g8 f8
  }
  \break
  \textCoda
  bf,4 d8 f8 ef8 ef4.
  bf1\fermata
  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
