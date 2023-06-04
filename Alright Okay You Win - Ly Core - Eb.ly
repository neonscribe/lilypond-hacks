%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "Alright, Okay, You Win"
  subtitle = \instrument
  poet = ""
  composer = "Sid Wyche and Mayme Watts"
  copyright = "© 1955 Cherio Corp."
}

refrainLyrics = \lyricmode {
  Well, al -- right, __ o -- kay, __ you win, __
  I'm in love with you. __
  Well, al -- right, __ o -- kay, __ you win, __
  Ba -- by, what can I do? __
  I'll __ do an -- y -- thing you say, __
  it's just got -- ta be that way. __
}

refrainChords = \chordmode {
  s4.
  
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 af1:7 ef1:7 ef2:7 c2:7
  f1:m7 bf1:7 ef2:7 af2:7
  
  ef2:7 bf2:7
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 140
  
  \mark \markup{ "Verse 1" }

  \partial 4. bf8 c8 ef8~ |
  \bar "||"

  ef4 r4 r4 gf8 ef8~ | ef4 r4 r4 fs8 g8~ | g4 r4 r8 bf,8 c4 |
  \bar "|"
  ef4 f8 gf8~ gf8 b,8 c8 ef8~ |
  \break
  ef4 r4 r4 f8 ef8~ | ef4 r4 r4 c'8 bf8~ | bf4 r4 r8 g4 fs8 | g8 ef8 c8 bf8~ bf4 r8 af'8~ |
  \break
  af8 g8 \tuplet 3/2 { af8 g8 af8~ } af4 a8 bf8~ |
  bf4 r4 r4 r8 ef,8 | bf'4 af8 bf8 gf4 ef8 ef8~ |    
  ef4 r4 r2 |
  
  \bar "|."
}

bridgeLyrics = \lyricmode {
  All that __ I am ask -- in',
  All I want from you, __
  Just love me like I love __ you
  an' it won't be hard to do! __
}

bridgeChords = \chordmode {
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 af1:7 ef4:7 r2. bf1:7
}

bridgeKey = ef

bridgeMelody = \relative f''' {
  \time 4/4
  \key \bridgeKey \major
  \clef \whatClef

  \mark \markup{ "Bridge" }
  
  r8 c4 bf8~ bf8 g8 c,8 ef8~ | ef8 gf8 r4 r2 | r8 c8 bf8 gf8~ gf4 ef8 ef8~ | ef4 r4 r2 |
  \break
  r8 c'4 bf8~ bf8 gf8 ef4 | r8 c'4 bf8~ bf8 ef,8 ef8 ef8 | gf4 ef4 ef4 ef8 f8~ | f4 r4 r2 |
  
  \bar "|."
}

codaLyrics = \lyricmode {
  Well, al -- right, __ o -- kay, __ you win. __
}

codaChords = \chordmode {
  s4.
  
  ef1:7 ef1:7 ef1:7 ef1:7
}

codaKey = ef

codaMelody = \relative f''' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef
  
  \mark \markup{ "Coda" }

  \partial 4. ef8 ef8 ef8~ |
  \bar "||"

  ef4 r4 r4 ef8 ef8~ | ef4 r4 r4 ef8 ef8~ | ef1 | r1 |
  \bar "|."
}

\include "paper.ily"

\include "refrain.ily"


\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 2 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Well alright, okay, you win, I'm in love with you. } }
   \line { \large { Well alright, okay, you win, baby, what can I do? } }
   \line { \large { Anything you say, I'll do, as long as it's me and you. } }
   \vspace #1
   }
}

\include "bridge.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 3 } }
    \vspace #3
   \line { \large { Solos over verse form } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Well alright, okay, you win, I'm in love with you. } }
   \line { \large { Well alright, okay, you win, baby, what can I do? } }
   \line { \large { I'll do anything you say, it's just gotta be that way. } }
   }
}

\pageBreak

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Bridge } }
   \vspace #2
   \line { \large { Verse 4 } }
   \vspace #3
   \line { \large { Verse 5 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { All that I am asking, all I want from you, } }
   \line { \large { Just love me like I love you and it won't be hard to do. } }
   \vspace #1
   \line { \large { Well alright, okay, you win, I'm in love with you. } }
   \line { \large { Well alright, okay, you win, baby, one thing more: } }
   \line { \large { If you're gonna be my man, sweet baby take me by the hand. } }
   \vspace #1
   \line { \large { Well alright, okay, you win, I'm in love with you. } }
   \line { \large { Well alright, okay, you win, baby, one thing more: } }
   \line { \large { If you're gonna be my man, sweet baby take me by the hand. } }
   \vspace #1
   }
}

\include "coda.ily"
