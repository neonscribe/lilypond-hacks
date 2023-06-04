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
 d1 d1 g1 g1 d1 a1 d2 g2
 a1 d2 g2 a1
 a1 d2 g2 d1

 a1:7 a1:7 d1 d1 e1:m e1:m a1 a1

 d1 d1 g1 g1 d1 a1 d2 g2 a1 d2 g2 
 d1
 
 d4 a4 d2
}

refrainMelody = \relative f' {
  \time 4/4
  \key d \major
  \clef \whatClef
  \tempo "Moderately bright" 4 = 190

  \mark \markup{ \box "A1" }
  
  \repeat volta 2 {

    r4 a,4 d8 e8 fs8 g8~ | g4 fs4 e8 d4. |
    r4 d4 g8 a8 b8 c8~ | c4 b4 a8 g4. |
    
    \break

    r4 a,4 d8 e8 fs8 g8~ | g4 fs4 e8 d4. |
    r4 cs8 a8 b8 cs4 a8 | d4 cs4 b8 cs4. |

    \break

    \mark \markup{ \box "A2" }
  
    r4 a4 d8 e8 fs8 g8~ | g4 fs4 e8 d4. |
    r4 d4 g8 a8 b8 c8~ | c4 b4 a8 g4. |

     \break

   r4 d8 e8 fs8 g8 fs8 e8 | r4 cs8 a8 b8 cs4. |
    d2 b2 |
  }
  \alternative {
    %% \volta 1
    {  cs1 | d2 b2 | cs4 a4 b4 cs4 }
    %% \volta 2,3
    {  cs4 cs8 a8 b8 cs4. | d2 b2 | d4 d4 cs4 b4 }
  }

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r4 cs8 a8 b8 cs8 b8 a8 | d4 cs4 b8 cs4. |
  r4 a4 d8 e8 fs8 g8~ | g4 fs4 e8 d4. |
  
    \break

  r4 e4 g4 b4 | e4 b4 g4 e4 |
  r4 cs8 a8 b8 cs8 b8 a8 | d4 cs4 b8 cs4. |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

    r4 a4 d8 e8 fs8 g8~ | g4 fs4 e8 d4. |
    r4 d4 g8 a8 b8 c8~ | c4 b4 a8 g4. |

     \break

   r4 d8 e8 fs8 g8 fs8 e8 | r4 cs8 a8 b8 cs4. |
    d2 b2 | cs4 cs8 a8 b8 cs4. |
  
    \break

    d2 b2 \textToCoda | d4 r4 r2 \daCapo |

  \bar "||"

  
  
  d4 \textCoda cs4 d2

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
