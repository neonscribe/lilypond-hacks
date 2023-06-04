%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

refrainLyrics = \lyricmode {
Let's get lost, __
lost in each oth -- er's arms,
Let's get lost, __
Let them send out a -- larms.
And though they'll think us rath -- er rude, __
let's tell the world we're in that cra -- zy mood.
Let's de -- frost, __ in a rom -- an -- tic mist,
Let's get crossed __ off ev -- 'ry -- bod -- y's list.
To cel -- e -- brate this night we've found each oth -- er,
mm, __ let's __ get lost. __
}

refrainRealJazzChords = \chordmode {
  ef1:maj7 a1:m7.5- ef1:maj7 a2:m7.5- d2:7
  g1:m7.5- c1:7 g1:m7.5- c1:7
  f1:m7 bf1:7 ef1:maj7 a2:m7.5- d2:7
  g1:m7 c1:7 f1:7 f2:m7 bf2:7

  ef1:maj7 a1:m7.5- ef1:maj7 a2:m7.5- d2:7
  g1:m7.5- c1:7 g1:m7.5- c1:7
  f1:m7 bf1:7 ef2:maj7 af2:7 g2:7 c2:7.5+
  f1:m7 bf1:7 ef1:6
  \set chordNameFunction = #begin-parenthesis-ignatzek-chord-names
  bf2:sus7
  \set chordNameFunction = #end-parenthesis-ignatzek-chord-names
  bf2:7.9-
  \unset chordNameFunction
}

refrainChords = \chordmode {
  \refrainRealJazzChords
}

refrainMelody = \relative f' {
  \time 4/4
  \key ef \major
  \clef \whatClef
  \tempo "Medium"

  \mark \markup{ \box "A1" }
  
  d2 c4 ef4~ | ef1 | \tuplet 3/2 { d4 d4 d4 } d4 c4 | ef1 |
  \break
  bf2 af4 c4~ | c1 | \tuplet 3/2 { bf4 bf bf4 } bf4 af4 | c1 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }

  r4 af4 c4 af4 | g4 f4 ef4 d4 | bf'1~ | bf2 r2 |
  \break
  r4 bf4 d4 bf4 | a4 g4 a4 bf4 | d2 d2 | c1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  d2 c4 ef4~ | ef1 | \tuplet 3/2 { d4 d4 d4 } d4 c4 | ef1 |
  \break
  bf2 af4 c4~ | c1 | \tuplet 3/2 { bf4 bf bf4 } bf4 af4 | c1 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }

  r4 af4 c4 af4 | g4 f4 ef4 d4 | bf'2 c2 | d2 ef2 |
  \break
  ef2( ef,4) g4~ | g2 g2 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "paper.ily"

\header {
  title = "Let's Get Lost"
  subtitle = \instrument
  poet = "Frank Loesser"
  composer = "Jimmy McHugh"
  copyright = "© 1943 Paramount Music Corporation"
}

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
      \set chordChanges = ##f
     \transpose ef \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose ef \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
  >>
  \layout { }
}
