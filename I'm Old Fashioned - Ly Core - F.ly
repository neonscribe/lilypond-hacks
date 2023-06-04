%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

refrainLyrics = \lyricmode {
  I'm old fash -- ioned, I love the moon -- light
  I love the old fash -- ioned things: __
  The sound of rain up -- on a win -- dow pane,
  the star -- ry song that A -- pril sings. __
  This year's fan -- cies are pass -- ing fan -- cies,
  but sigh -- ing sighs, hold -- ing hands,
  These my heart un -- der -- stands.
  I'm old fash -- ioned but I don't mind it,
  That's how I want to be,
  As long as you a -- gree
  To stay old fash -- ioned with me.
}

refrainChords = \chordmode {
  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  bf1:6/f f1:maj7 e1:m7.5- a1:7
  d1:m7 g1:3.5.13 d1:m7 g1:3.5.13
  g1:m7 g2:m7 af2:dim7 g1:m7 c1:7
  
  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 b2:m7 e2:7
  a2:maj7 b2:m7 cs2:m7 d2:7 e2:7 fs2:dim7 g2:m7 c2:7
  
  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  c2:m7 f2:7 bf2:maj7 ef2:9.11+ a2:m7 d4:m7 d4:m7/c b2:m7.5- bf2:m6
  a2:m7 d2:m7 g2:m7 c2:7

  f2:6
  \set chordNameFunction = #begin-parenthesis-ignatzek-chord-names 
  d2:m7
  \unset chordNameFunction
  g2:m7
  \set chordNameFunction = #end-parenthesis-ignatzek-chord-names 
  c2:7
  \unset chordNameFunction  
}

refrainMelody = \relative f' {
  \time 4/4
  \key f \major
  \clef \whatClef
  \tempo "Medium Swing"

  \mark \markup{ \box "A" }
  
  f2. c4 | c4 c2 c4 | a'2. c,4 | c4 c2 c4 |
  \break
  bf'2. a4 | c,4 c2 a'4 | g1~ | g2. e4 |
  \break
  g2. f4 | e2. d4 | g4 a4 g4 f4 | e2. d4 |
  \break
  bf'4 c4 bf4 a4 | g2 f2 | c'1~ | c1 |
  
  \bar "||"
  \break
  \mark \markup{ \box "B" }

  d2. f,4 | f4 f2 e4 | a2. e4 | e4 e2 d4 |
  \break
  cs4 a4 d2 | e4 cs4 fs2 | gs4 e4 a2 | bf4 g4 c2 |

  \bar "||"
  \break
  \mark \markup{ \box "C" }

  f,2. c4 | c4 c2 c4 | a'2. c,4 | c4 c2 c4 |
  \break
  c'4 d4 c4 f,4 | a2. g4 | c4 d4 c4 f,4 | a2. g4 |
  \break
  c2. c,4 | c4 c2 c4 | f1 | r1 |

  \bar "|."
}

\include "paper.ily"

\header {
  title = "I'm Old Fashioned"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Jerome Kern"
  copyright = "© 1942 T.B. Harms Co."
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
      \refrainLyrics
    }
  >>
  \layout { }
}
