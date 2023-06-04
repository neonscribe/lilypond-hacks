%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "That's All"
  subtitle = \instrument
  composer = "Alan Brandt and Bob Haynes"
  copyright = "© 1952 Mixed Bag Music"
}

refrainLyrics = \lyricmode {
I can on -- ly give you love that lasts for -- ev -- er, __
and the prom -- ise to be near each time you call;
And the on -- ly heart I own,
For you and you a -- lone,
That's all, that's all.

I can on -- ly give you coun -- try walks in spring -- time, __
and a hand to hold when leaves be -- gin to fall;
And a love whose burn -- ing light
will warm the win -- ter night,
That's all, that's all.

There are those, I am sure, that have told you
they would give you the world for a toy.
All I have are these arms to en -- fold you
And a love time can nev -- er de -- stroy.

If you're won -- d'ring what I'm ask -- ing in re -- turn, dear, __
you'll be glad to know that my de -- mands are small;
Say it's me that you'll a -- dore
For now and ev -- er more,
That's all, that's all.
}

refrainChords = \chordmode {
  \set chordNameFunction = #begin-end-parenthesis-ignatzek-chord-names
  f4:7
  \unset chordNameFunction
  
  bf2:maj7 c2:m7 d2:m7 c4:m7 f4:7
  bf2:maj7 ef2:9 d2:m7 g4:7 g4:7/f e2:m7.5- ef2:m7
  bf2/d g2:7.5+.9+ c2:m7 f2:7
  d4:m7 g4:7 c4:m7 f4:7

  bf2:maj7 c2:m7 d2:m7 c4:m7 f4:7
  bf2:maj7 ef2:9 d2:m7 g4:7 g4:7/f e2:m7.5- ef2:m7
  bf2/d g2:7.5+.9+ c2:m7 f2:7
  bf1:6
  
  f2:m7 bf2:7 g2:m7 c2:m7 f2:m7 bf2:7 ef1:maj7
  g2:m7 c2:7 a2:m7 d2:m7 g2:m7 c2:7 f2:sus9 f4:7 r4
  
  bf2:maj7 c2:m7 d2:m7 c4:m7 f4:7
  bf2:maj7 ef2:9
  d2:m7 g4:7 g4:7/f e2:m7.5- ef2:m7
  bf2/d g2:7.5+.9+ c2:m7 f2:7
  bf2:6

  \set chordNameFunction = #begin-parenthesis-ignatzek-chord-names
  c4:m7
  \set chordNameFunction = #end-parenthesis-ignatzek-chord-names
  f4:7
  \unset chordNameFunction
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad"

  \partial 4 d8 ef8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  f8 a8 f8 d8 f8 a8 f8 d8 | f8 f8~ f2 d8 ef8 |
  f8 a8 f8 d8 f8 a8 f8 d8 | f2. g8 a8 | bf8 d8 bf8 g8 bf4. g8 |
  bf8 d8 bf8 g8 bf4. g8 | f2. d4 | c2. d8 ef8 |
  

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  f8 a8 f8 d8 f8 a8 f8 d8 | f8 f8~ f2 d8 ef8 |
  f8 a8 f8 d8 f8 a8 f8 d8 | f2. g8 a8 | bf8 d8 bf8 g8 bf4. g8 |
  bf8 d8 bf8 g8 bf4. g8 | f2. d4 | bf2. bf8 bf'8 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  g4 bf,8 bf'8 g4 bf,8 bf'8 | g4 g2 bf,8 bf'8 |
  g4 bf,8 bf'8 g4 bf,8 bf'8 | g2. c,8 c'8 |
  a4 c,8 c'8 a4 c,8 c'8 | a4 a2 c,8 c'8 |
  a4 c,8 c'8 a4 c,8 a'8 | f2. d8 ef8 |
  
  \bar "||"
  \pageBreak

  \mark \markup{ \box "A3" }

  f8 a8 f8 d8 f8 a8 f8 d8 | f8 f8~ f2 d8 ef8 | f8 a8 f8 d8 f8 a8 f8 d8
  | f2. g8 a8 | bf8 d8 bf8 g8 bf4. g8 | bf8 d8 bf8 g8 bf4. g8 | f2. d4
  | \textToCoda bf1 |
  
  \bar "|."
}

codaLyrics = \lyricmode {
all. Say it's me that you'll a -- dore
For now and ev -- er more,
That's all, that's all.
}

codaChords = \chordmode {
  d2:m7 g4:7 g4:7/f e2:m7.5- ef2:m7
  bf2/d g2:7.5+.9+ c2:m7 f2:7
  bf1:6
}

codaKey = bf

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCoda
  
  d2. g8 a8 | bf8 d8 bf8 g8 bf4. g8 |
  \break
  bf8 d8 bf8 g8 bf4. g8 | f2. d4 |  bf1 |

  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
\include "coda.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { 4 bars drum intro, singer joins at top, band joins at A2, bar 9 } }
  }
}

\include "notes.ily"
