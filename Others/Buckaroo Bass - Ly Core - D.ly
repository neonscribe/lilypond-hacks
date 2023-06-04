%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "Buckaroo"
  subtitle = \instrument
  composer = "Bob Morris"
  copyright = "© 1965 Tree Publishing Co., Inc."
}

refrainChords = \chordmode {
 d1 d1 g1 g1 d1 d1 a1 a1

 d1 d1 g1 g1 d1 a1
 d2 g2 a1
 d2 g2 a1

 d1 d1 g1 g1 d1 d1 a1 a1

 d1 d1 g1 g1 d1 a1
 d2 g2 a1
 d2 g2 d1

 a1:7 a1:7 d1 d1 e1:m e1:m a1 a1

 d1 d1 g1 g1 d1 a1
 d2 g2 a1
 d2 g2 d1

 d1 d1 g1 g1 d1 d1 a1 a1

 d1 d1 g1 g1 d1 a1
 d2 g2 a1
 d2 g2 d1

 a1:7 a1:7 d1 d1 e1:m e1:m a1 a1

 d1 d1 g1 g1 d1 a1
 d2 g2 a1
 d2 g2 d1
}

refrainMelody = \relative f' {
  \time 4/4
  \key d \major
  \clef \whatClef
  \tempo "Moderately bright" 4 = 190

  \mark \markup{ \box "A1/1" }
  
  d2 r2 | r1 | g2 r2 | r1 |
  d2 r2 | r1 | a2 r2 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2/1" }
  
  d2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | a,2 e'2 | d2 g2 | a2 a2 |
  d,2 g2 | a2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A1/2" }
  
  d,2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | d,2 d2 | a2 e'2 | a4 g4 fs4 e4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2/2" }
  
  d2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | a,2 e'2 | d2 g2 | a2 a2 |
  d,2 g2 | d2 cs4 b4 |

  \bar "||"
  \break

  \mark \markup{ \box "B/1" }
  
  a2 e'2 | a2 e2 | d2 a'2 | d,2 d2 |
  e2 r2 | r1 | r1 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3/1" }
  
  d2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | a,2 b4 cs4 | d2 g2 | a2 a2 |
  d,2 g2 | a2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A1/3"  "Pedal Steel Solo" }

  d,2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | d,2 cs4 b4 | a2 e'2 | a4 g4 fs4 e4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2/3"  "Pedal Steel Solo" }
  
  d2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | a,2 e'2 | d2 g2 | a2 a2 |
  d,2 g2 | d4 d4 cs4 b4 |

  \bar "||"
  \break

  \mark \markup{ \box "B/2" }
  
  a2 e'2 | a2 e2 | d2 a'2 | d,2 a'2 |
  e2 r2 | r1 | r1 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3/2" }
  
  d2 a'2 | d,2 a'2 | g2 d2 | g2 g2 |
  d2 a'2 | a,2 e'2 | d2 g2 | a2 a2 |
  d,2 g2 | d4 a4 d2 |
  
  \bar "|."
}

\include "paper.ily"

\markup {
  \column {
    \line { \large { Recording is 1/2 step lower, tune Eb-Ab-Db-Gb to match. } }
  }
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose d \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose d \whatKey {
	  \refrainMelody
	  }
	}
    }
  >>
  \layout { }
}
