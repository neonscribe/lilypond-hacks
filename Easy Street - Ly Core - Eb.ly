\include "lead-sheets.ily"

\header {
  title = "Easy Street"
  subtitle = \instrument
  composer = "Alan Rankin Jones"
  copyright = "© 1941 Beechwood Music Corp."
}

refrainLyrics = \lyricmode {
  Eas -- y Street, __ I'd love to live on Eas -- y Street, __
  no -- bod -- y works on Eas -- y Street, __
  just sit a -- round all day,
  just sit and play the hors -- es,
  
  Life is sweet __ for folks who live on Eas -- y Street, __
  no week -- ly pay -- ments you must meet __
  that make your hair turn grey! __
  
  When op -- por -- tun -- i -- ty comes knock -- in'
  you just keep on with your rock -- in',
  you know your for -- tune's been made. __
  Now, if the sun makes you per -- spi -- re
  there's a fel -- low you can hi -- re
  to plant trees so you can have shade on
  
  Eas -- y Street, __ I'm tell -- ing ev -- 'ry -- one I meet, __
  if I could live on Eas -- y Street __
  I would -- n't want no job to -- day, so please go 'way.
}

refrainChords = \chordmode {
  ef2:maj7 c2:7 f2:m7 g2:7.5+ c2:m7 bf4:m7 ef4:7 af2:m7 bf2:7
  g2:m7 c2:7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7

  ef2:maj7 c2:7 f2:m7 g2:7.5+ c2:m7 bf4:m7 ef4:7 af2:m7 bf2:7
  g2:m7 c2:7 f2:m7 bf2:7 ef1:maj7 bf2:m7 ef2:7

  af1:maj7 af2:m7 df2:7 ef1:maj7 bf2:m7 ef2:7 
  af1:maj7 af2:m7 df2:7 ef2:maj7 f2:7 f2:m7 bf2:7.5+

  ef2:maj7 c2:7 f2:m7 g2:7.5+ c2:m7 bf4:m7 ef4:7 af2:m7 bf2:7
  g2:m7 c2:7 b2:7 bf2:7.5+ ef2:6 af2:7 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \mark \markup{ \box "A1" }
  
  g8 d4 c8~ c2 | r8 c'8 bf8 af8 g8 f4. | ef'8 g,4 f8~ f2 | r8 cf'8 bf8 af8 gf8 f4. |
  bf8 d,4 c8~ c2 | r8 ef'8 d8 c8 bf4 g4 | f2. r8 g8 | g8 g8 fs8 g8 ef8 f4. |
  \bar "||"
  \break
  
  \mark \markup{ \box "A2" }

  g8 d4 c8~ c2 | r8 c'8 bf8 af8 g8 f4. | ef'8 g,4 f8~ f2 | r8 cf'8 bf8 af8 gf8 f4. |
  bf8 d,4 c8~ c2 | r8 ef'8 d8 c8 bf4 g4 | f1~ | f2~ f8 ef8 f8 g8 |
  \bar "||"
  \break
  
  \mark \markup{ \box "B" }
  
  bf8 bf8 bf8 bf8 bf8 af8 ef8 f8 | bf8 bf8 bf8 bf8 bf8 af8 ef8 f8 |
  g4 g4 g4 d8 f8~ | f2 r8 ef8 f8 g8 |
  bf8 bf8 bf8 bf8 bf8 af8 ef8 f8 | bf8 bf8 bf8 bf8 bf8 af8 ef8 f8 |
  g4 g8 ef'4 d8 c4 | f,2 fs2 |
  \bar "||"
  \break
  
  \mark \markup{ \box "A3" }

  g8 d4 c8~ c2 | r8 c'8 bf8 af8 g8 f4. | ef'8 g,4 f8~ f2 | r8 cf'8 bf8 af8 gf8 f4. |
  bf8 d,4 c8~ c4. ef'8 | ef8 ef8 df8 cf8 bf4 gf4 | ef4. f8 ef4. f8 | ef2. r4 |

  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"
