\include "jazz-chords.ily"
\include "modern-codas.ily"
\include "english.ly"
\version "2.18.2"

instrument = "Concert Key with Bass Line"
whatKey = ef
whatClef = "treble"

refrainBassLine = \relative f {
  \time 4/4
  \key ef \major
  \clef bass
  \tempo 4 = 200
  
  \partial 2 r4 r4 |
  \bar ".|:"

  \repeat volta 2 {

  \mark \markup{ \box "A1" }
  
  af4 g4 af4 a4 | bf4 af4 f4 d4 | ef4 e4 f4 fs4 | g4 d4 c4 e4 |
  \break
  f4 g4 gs4 a4 | bf4 af4 f4 d4 | ef4 g4 af4 a4 | bf4 f4 ef4 bf'4 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  af4 g4 af4 a4 | bf4 af4 f4 d4 | ef4 e4 f4 fs4 | g4 d4 c4 e4 |
  \break
  f4 g4 gs4 a4 | bf4 af4 f4 d4 | ef4 g4 bf4 g4 | ef4 bf4 c4 cs4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }

  d4 e4 f4 fs4 | g4 f4 d4 b4 | c4 e4 g4 e4 | c4 g4 a4 b4 |
  \break
  c4 d4 ef4 e4 | f4 a,4 c4 cs4 | d4 e4 f4 fs4 | g4 d4 f4 g4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  af4 g4 af4 a4 | bf4 af4 f4 d4 | ef4 e4 f4 fs4 | g4 d4 c4 e4 \textToCoda |
  \break
  f4 g4 gs4 a4 | bf4 af4 f4 d4 | ef4 g4 af4 a4 | bf4 f4 ef4 bf'4 |


  }

  \bar ":|."
}

codaBassLine = \relative f, {
  \time 4/4
  \key ef \major
  \clef bass

  \textCoda

  \set Score.currentBarNumber = #29

  f'4 c4 ef4 f4 | fs4 c4 fs4 a4 | g4 g4 ef4 ef4 | fs4 c4 ef4 e4 |
  \break
  f4 c4 ef4 e4 | f4 af4 bf4 d,4 | g4 f4 d4 f4 | g4 f4 fs4 c4 |
  \break
  f4 c4 ef4 e4 | f4 af4 bf4 d,4 | ef1 | r1 |

  \bar "|."
}

showBassLine = ##t
bbreak = \break

\include "Almost Like Being in Love - Ly Core - Bb.ly"
