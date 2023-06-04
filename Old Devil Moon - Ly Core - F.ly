%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "Old Devil Moon"
  subtitle = \instrument
  poet = "E. Y. Harburg"
  composer = "Burton Lane"
  copyright = "© 1946 Chappell & Co."
}

refrainLyricsAOne = \lyricmode {
  I look at you and sud -- den -- ly, some -- thing in your eyes I see
  soon be -- gins be -- witch -- ing me. __
  It's that
}

refrainLyricsBOne = \lyricmode {
  old de -- vil moon __ that you stole from the skies. __
  It's that old de -- vil moon __ in your eyes. __
  You and your glance __
}

refrainLyricsCOne = \lyricmode {
  make this ro -- mance __ too hot to han -- dle. __
  Stars in the night __ blaz -- ing their light __ can't hold a can -- dle __
  to your raz -- zle daz -- zle.
}

refrainLyricsATwo = \lyricmode {
  You've got me fly -- in' high and wide on a mag -- ic car -- pet ride
  full of but -- ter -- flies in -- side. __
  Wan -- na
}

refrainLyricsBTwo = \lyricmode {
  cry wan -- na croon, __ wan -- na laugh like a loon, __
  It's that old de -- vil moon __ in your eyes. __
}

refrainChords = \chordmode {
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f1:maj7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  
  af2:m7 df2:7 gf2:maj7 c2:7 f1:maj7 ef1:maj7
  
  f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 d1:maj7 d1:m7
  d1:m7 g1:7 g1:m7 c1:7
  
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f1:maj7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  
  af2:m7 df2:7 gf2:maj7 c2:7 f1:maj7 ef1:maj7
  }

refrainMelody = \relative f' {
  \time 4/4
  \key f \major
  \clef \whatClef
  \tempo "Medium Latin to Swing; Swing Only on solos" 4 = 130

  \mark \markup{ \box "A1" }
  
  f1^\markup { Latin; Swing on solos } | ef8 ef8 ef8 ef8 ef4 g4 | f1 | g8 g8 g8 g8 g4 bf4 |
  \break
  a1 | bf8 bf8 bf8 bf8 bf4 d4 | c1~ | c2 c4^\markup { Swing } c4 |
  \bar "||"
  \break

  \mark \markup{ \box "B1" }

  c2 bf8 a4 f 8~ | f2 a4 bf4 | c2 bf8 a4 f8~ | f2 a4 bf4 |
  \break

  df2 cf8 bf4 gf8~ | gf2 a8 g4 f8~ | f1^\markup { Latin } | r2 ef8 c8 ef8 f8~ |
  \bar "||"
  \break

  \mark \markup{ \box "C" }

  f2 ef8 c8 ef8 g8~ | g2 \tuplet 3/2 { ef4 c4 ef4 } | a2^\markup { Swing } a2~ | a2 f8 d8 f8 a8~ |
  \break
  a2 f8 d8 f8 b8~ | b2 \tuplet 3/2 { f4 d4 f4 } | c'2 c2~ | 
  c8^\markup { Stop (not on solos) } d4 af8 g8 f8 d8 c8 |
  \bar "||"

  \pageBreak

  \mark \markup{ \box "A2" \musicglyph #"scripts.segno"  }
  
  f1^\markup { Latin; Swing on solos } | ef8 ef8 ef8 ef8 ef4 g4 | f1 | g8 g8 g8 g8 g4 bf4 |
  \break
  a1 | bf8 bf8 bf8 bf8 bf4 d4 | c1~ | c2 c4^\markup { Swing } c4 |
  \bar "||"
  \break

  \mark \markup{ \box "B2" }

  c2 bf8 a4 f 8~ | f2 a4 bf4 | c2 bf8 a4 f8~ | f2 a4 bf4 |
  \break

  df2 cf8 bf4 gf8~ | gf2 a8 g4 f8~ | f1^\markup { Latin } |
  \textToCoda
  r1 |
  \bar "|."
}

codaLyrics = \lyricmode {
  Just when I think I'm free as a dove
  old dev -- il moon deep in your eyes blinds me with love. __
  old dev -- il moon deep in your eyes blinds me with love. __
}

codaChords = \chordmode {
  ef1:maj7
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7
  f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 f1:maj7 ef1:maj7
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7
  f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 f1:maj7 f1:maj7
}

codaKey = f

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCoda

  r2 ef8 c8 ef8 f8~ |
  f2 f2~ | f2 ef8 c8 ef4 | f1~ | f2 \tuplet 3/2 { ef'4 ef4 ef4 } |
  \break
  c2 \tuplet 3/2 { bf4 c4 bf4 } | a2 \tuplet 3/2 { f4 ef4 g4 } | c1~ | c2 r2 |
  \mark \markup{ "Vamp" }
  \repeat volta 2 {
    r1 | r1 |
  }
  r1 | 
  \mark \markup{ "Slow" }
  r2 \tuplet 3/2 { ef4 ef4 ef4 } |
  c2 \tuplet 3/2 { bf4 c4 bf4 } | a2 \tuplet 3/2 { f4 ef4 g4 } | c1~ | c2 r2 |

  \bar "|."
}

\include "paper.ily"

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
      \set chordChanges = ##t
     \transpose f \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose f \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsAOne
      \refrainLyricsBOne
      \refrainLyricsCOne
      \refrainLyricsATwo
      \refrainLyricsBTwo
    }
  >>
  \layout { }
}

\include "coda.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { 4 bars Latin drums, 4 bars instrumental vamp on I and bVII } }
    \line { \huge { vocal A1, B1, C, A2, B2, with Latin/Swing changes, stays Swing at the end into solo } }
    \line { \huge { accordion solo A1, B1, C, guitar solo A2, B2, all Swing, stays Swing at the end into vocal } }
    \line { \huge { vocal D.S. al coda (A2, B2, coda) all Swing } }
    \line { \huge { Back to Latin, scat over vamp on I and bVII } }
    \line { \huge { on cue repeat last line slow to end } }
  }
}

\include "notes.ily"
