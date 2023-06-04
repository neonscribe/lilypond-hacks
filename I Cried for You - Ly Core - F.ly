%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "I Cried for You"
  subtitle = \instrument
  poet = "Arthur Freed"
  composer = "Gus Arnheim & Abe Lyman"
  copyright = "© 1923 Miller Music Inc"
}

refrainLyrics = \lyricmode {
I cried for you
Now it's your turn to cry o -- ver me.
Ev' -- ry road has a turn -- ing
That's one thing you're learn -- ing

I cried for you, what a fool I used to be
Now I found two eyes just a lit -- tle bit blu -- er
I found a heart just a lit -- tle bit tru -- er

I cried for you
Now it's your turn to cry o -- ver me
}

refrainChords = \chordmode {
  f1:6 a2:m7 d2:7 g2:7 d2:m7 g1:7
  g1:m7 c1:7 f1:6 c1:7
  f2:maj7 d2:m7 g2:m7 c2:7 g1:m7 c1:7
  g1:m7 c1:7 ef1:dim7 c1:7

  f1:6 a2:m7 d2:7 g2:7 d2:m7 g1:7
  g1:m7 c1:7 a1:7 a1:7
  a1:m7 d1:7 a1:m7 d1:7
  d1:m7 g1:7 d1:m7 g1:7
  f1:6 a2:m7 d2:7 g2:7 d2:m7 g1:7
  g2:m7 c2:7 g2:m7 c2:7
  
  f4
  \chordOpenParen{ af4:m6 }
  g4:m7 fs4:7 g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative c'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  a2 e'2~ | e2 d2 | d,1~ | d2 e4 f4 |
  \break
  c'2 a4 g4 | c4 a2 g4 | d1~ | d1 |
  \break
  e2 f2 | g2 a4 bf4 | c1 | e,1 |
  c2 e2 | g2 bf2 | d1 | c1 |
  \break
  a2 e'2~ | e2 d2 | d,1~ | d2 e4 f4 |
  \break
  c'2 c2 | c2 bf2 | a1~ | a2 gs4 a4 |
  \break
  d2 d2 | d2 d4 cs4 | d4 cs4 d4 d4~ | d4 a2 gs4 |
  \break
  a2 a2 | a2 a4 gs4 | a4 gs4 a4 a4~ | a4 d,2. |
  \break
  a'2 e'2~ | e2 d2 | d,1~ | d2 e4 f4 |
  \break
  c'2 a4 g4 | c4 a2 g4 | f1~ | f4 r4 r2 |
  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
