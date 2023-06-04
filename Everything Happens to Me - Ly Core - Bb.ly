%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "Everything Happens to Me"
  subtitle = \instrument
  poet = "Tom Adair"
  composer = "Matt Dennis"
  copyright = "© 1941 Dorsey Bros. Music"
}

refrainLyricsPre = \lyricmode {
I
}

refrainLyricsOne = \lyricmode {
make a date for golf, and you can bet your life it rains.
I try to give a par -- ty, and the guy up -- stairs com -- plains.
I guess I'll go through life, just catch -- ing colds and miss -- ing trains, __
}

refrainLyricsRepOne = \lyricmode {
Ev  -- 'ry -- thing hap -- pens to me. __ I
}

refrainLyricsTwo = \lyricmode {
nev -- er miss a thing. I've had the meas -- les and the mumps.
And ev -- 'ry time I play an ace, my part -- ner al -- ways trumps.
I guess I'm just a fool who nev -- er looks be -- fore he jumps.
}

refrainLyricsRest = \lyricmode {
Ev  -- 'ry -- thing hap -- pens to me. __
At first my heart thought you could break this jinx for me,
That love would turn the trick to end des -- pair.
But now I just can't fool this head that thinks for me.
I've mort -- gaged all my cas -- tles in the air.
I've
}

refrainLyricsThree = \lyricmode {
tel -- e -- graphed and phoned and sent an Air -- mail Spe -- cial, too.
Your ans -- wer was good -- bye and there was e -- ven post -- age due.
I fell in love just once, and then it had to be with you.
}

refrainLyricsCoda = \lyricmode {
Ev -- 'ry -- thing hap -- pens to me. __
}

refrainChords = \chordmode {
  s8

  c2:m9 f2:7 d2:m7 cs2:dim7
  c2:m7 f4:7
  \chordInsideParens{ ef4:7 }
  d2:m7.5- g2:7 b2:dim7 c2:m7.5-
  d2:m7 g2:9 
  
  c2:m7 f2:7 bf1:maj7
  
  c2:m7 f2:7 bf1:6
  
  f2:m7.11 bf2:7.9+.5+ ef2:maj7
  \chordInsideParens{ c2:m7 }
  f2:m7.11 bf2:7.9+.5+ ef1:maj7
  e2:m7.11 a2:7.9+.5+ d2:maj7
  \chordInsideParens{ b2:m7 }
  g2:m7 c2:7 f2:sus9 f2:7
  
  c2:m7 f2:13 bf2:6

}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium"
  
  \mark \markup{ \box "A" }

  \partial 8 g8 |

  \segnoSign
  
  \repeat volta 2 {
  d'8 d8 d8 ef8 c8 c8 bf8 a8 | c8 c8 c8 d8 bf4. g8 | bf8 bf8 bf8 c8 a8 a8 g8 f8 |
  af8 af8 af8 bf8 g4 r8 d8 | f8 f8 f8 g8 ef8 fs8 a8 bf8 | c8 c8 \tuplet 3/2 { c8 c8 a8~ } 
  \textToCoda
  a2 |
  } \alternative { {
    g8 g8 g8 a4 a8 a8 f8~ | f2. r8 g8 |
  } {
    g8 g8 g8 a4 a8 a8 bf8~ |
  } }
    
  bf2. r8 bf8 |
  \bar "||"

  \mark \markup{ \box "B" }
  
  bf8 bf8 bf8 bf8 df8 df8 cf8 df8 | bf8 bf8 bf2 r8 bf8 | bf8 bf8 bf8 bf8 cf8 gf8 f8 ef8 |
  bf'2. r8 bf8 | a8 a8 a8 a8 c8 c8 bf8 c8 | a8 a8 a2 r8 a8 |
  bf8 bf8 bf8 bf8 bf8 g8 a8 bf8 | c2. r8
  \dalSegno
  g8 |
  
  \bar "||"
  \break

  \textCoda
  g8 g8 g8 d'4 d8 d8 bf8~ | bf1 |
  

  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain-three-coda.ily"
