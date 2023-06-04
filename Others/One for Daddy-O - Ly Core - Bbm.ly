%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "One for Daddy-O"
  subtitle = \instrument
  poet = ""
  composer = "Nat Adderley"
  copyright = "© 1958 Upam Music Co."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2. bf1:m7 c2:m7.5- f2:7 bf1:m7 bf1:7.9+ ef1:7 ef1:7
  bf2:m7 f2:7 bf1:m7 c1:7.9+ f1:7 bf1:m7 c2:7.9+ f2:7
}

refrainKey = bf

refrainMelody = \relative f {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Swing"

  \partial 2. bf4 df8 f8 g4 |
  
  \bar ".|:"
  
  \repeat volta 2 {
  
  bf4
  \magnifyMusic 0.63 { bf,4 df8 f8 g4 } |
  \magnifyMusic 0.63 { bf4 } bf,4 df8 f8 g4 |

  \break

  bf4 af4 f8 ef8 r8 df8 |

  r4 bf4 df8 f8 g4 |
  bf4
  \magnifyMusic 0.63 { bf,4 df8 f8 g4 } |

  \break

  \magnifyMusic 0.63 { bf4 } bf,4 df8 f8 g4 |
  bf4 af4 f8 ef8 r8 df8 |

  r4 bf4 df8 f8 g4 |

  \break

  af8 f8 af8 f8~ f4 af8 f8 \textToCoda | af8 f4. af8 f8 a8 bf8 |
  r1 | r4 bf,4 df8 f8 g4
  }
}

codaLyrics = \lyricmode {
}

codaChords = \chordmode {
  f1:7 bf1:m11
}

codaKey = bf

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \minor
  \clef \whatClef

  \textCoda

  af8 f4. af8 f8 af8 c8~ | c1 |

  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"

\include "coda.ily"
