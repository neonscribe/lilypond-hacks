%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

%%% SRB (alternate chords, also found in 557 Standards, based on Miles Davis-Gil Evans)

\header {
  title = "Summertime"
  subtitle = \instrument
  poet = "Du Bose Heyward"
  composer = "George Gershwin"
  copyright = "© 1935 Gershwin Publishing Corp."
}

refrainLyrics = \lyricmode {
  Sum -- mer time __ and the liv -- in' is eas -- y __
  Fish are jump -- in' __ and the cot -- ton is high. __
  Oh, your dad -- dy's rich, __ and your ma is good look -- in'. __
  So hush, lit -- tle ba -- by, don't you cry. __
  One of these morn -- in's
  You're goin' to rise __ up sing -- in, __
  Then you'll spread your wings __ and you'll take __ the sky. __
  But till that morn -- in' __ there's a no -- thin' can harm you __
  With Dad -- dy and Mam -- my stand -- in' by. __
}

refrainChords = \chordmode {
  s2
  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 a2:7
  d2:m7 g2:7 c2:9 f2:9 e2:9 b2:7.5+ e2:9 e2:7.9-

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 d2:m9 g2:7.9-
  c2:maj7 f2:9 b2:m7.5- e2:7.5+ a2:m7 d2:9 a2:m7 d2:9

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 a2:7
  d2:m7 g2:7 c2:9 f2:9 e2:9 b2:7.5+ e2:9 e2:7.9-
  
  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9
  c2:maj7 f2:9 b2:m7.5- e2:7.5+ a2:m7 d2:9 a2:m7 d2:9
}

refrainKey = a

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 110
  
  \partial 2 e4 c4 |

  \bar "||"
  \mark \markup{ \box "A1" }
  
  e1~ | e4 d8 c8 d8 e8 c4 | a2 e2~ | e4 r4 e'4 c4 |
  d8 d4.~ d2 | r4 c8 a8 c8 a8 c4 | b1~ | b2 r8 e4 c8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B1" }
  
  e8 e4 e8~ e2 | r4 d8 c8 d8 e8 c4 | a2 e2~ | e2 r4 e4 |
  g4 e8 g8 a4 c4 | e8( d4.) c2 | a1~ | a4 r4 \tuplet 3/2 { e'4 e4 c4 } |

  \bar "||"
  \mark \markup{ \box "A2" }
  
  e4 e2. | r8 e8 d8 c8 d8( e8) c4 | a2 e2~ | e4 r4 e'4 c4 |
  d8 d4 d8~ d2 | r4 c8 a8 c8( a8) c4 | b1~ | b2 r8 e8 e8 c8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B2" }
  
  e8 e4.~ e2 | r4 d8 c8 d8 e8 c4 | a2 e2~ | e2 r4 e4 |
  g4 e8 g8 a4 c4 | e8( d4.) c2 | a1~ | a2 r2 |
  
  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
