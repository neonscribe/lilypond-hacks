%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "How Long Has This Been Going On?"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1927 Chappell & Co., Inc."
}

refrainLyrics = \lyricmode {
I could cry sal -- ty tears;
Where have I been all these years?
Lit -- tle wow, tell me now,
How long has this been go -- ing on?
There were chills up my spine,
And some thrills I can't de -- fine.
Lis -- ten sweet, I re -- peat:
How long has this been go -- ing on?
Oh, I feel that I could melt;
in -- to Hea -- ven I'm hurled.
I know how Co -- lum -- bus felt,
Find -- ing an -- oth -- er world.
Kiss me once, then once more.
What a dunce I was be -- fore.
What a break! For Hea -- ven's sake!
How long has this been go -- ing on?
}

refrainChords = \chordmode {
  a2:m9 gs2:dim7 d2:sus7 d2:9 d2:m7 g2:7 c2:7 f2:9
  g2/b bf2:dim7 a4.:m7 d4.:7 g4:7 c2:7 ef4:7 d4:7 g1:maj7

  a2:m9 gs2:dim7 d2:sus7 d2:9 d2:m7 g2:7 c2:7 f2:9
  g2/b bf2:dim7 a4.:m7 d4.:7 g4:7 c2:7 ef4:7 d4:7 g2:6 g2:7

  c2:maj7 f2:7 c2:maj7 f2:7 c2:maj7 f2:7 c2:maj7 cs4:m7.5- fs4:7
  b2:m e2:m6 b2:m cs4:m7.5- fs4:7 b2:m e2:m6 b2:m7 bf2:7

  a2:m9 gs2:dim7 d2:sus7 d2:9 d2:m7 g2:7 c2:7 f2:9
  g2/b bf2:dim7 a4.:m7 d4.:7 g4:7 c2:7 ef4:7 d4:7 g2:6
  
  \chordInsideParens{ g2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium"

  \mark \markup{ \box "A1" }

  d'8 e4 e8~ e2 | e8 d4 d8~ d2 | d4 e4 e4 d4 | a8 g4 g8~ g2 |
  g8 a4 a8~ a2 | e8 d4 d2 d8 | e8 g8 a8 g8 bf8 a4 b8~ | b1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  d8 e4 e8~ e2 | e8 d4 d8~ d2 | d4 e4 e4 d4 | a8 g4 g8~ g2 |
  g8 a4 a8~ a2 | e8 d4 d2 d8 | e8 g8 a8 g8 bf8 a4 g8~ | g2. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  b2 a8 c4 a8 | b4 g8 a8~ a2 | b4 b4 a8 c4 a8 | b2. r4 |
  d2 cs8 e4 cs8 | d4 b8 cs8~ cs2 | d4 d4 cs8 e4 cs8 | d1 |

  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d8 e4 e8~ e2 | e8 d4 d8~ d2 | d4 e4 e4 d4 | a8 g4 g8~ g2 |
  g8 a4 a8~ a4. e8 | e8 d4 d2 d8 | e8 g8 a8 g8 bf8 a4 g8~ | g2 r2 |

  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "refrain.ily"

\pageBreak

\markup {
  \vspace #2
  \column {
    \line { \large { I could cry, salty tears, where have I been all these years? } }
    \line { \large { Listen you, tell me do, How long has this been going on? } }
    \line { \large { What a kick! How I buzz! Boy, you click as no one does! } }
    \line { \large { Hear me sweet, I repeat: How long has this been going on? } }
    \line { \large { Dear, when in your arms I creep, that divine rendezvous, } }
    \line { \large { Don't wake me, if I'm asleep, let me dream that it's true. } }
    \line { \large { Kiss me twice, then once more, that makes thrice, let's make it four! } }
    \line { \large { What a break, for Heaven's sake! How long has this been going on? } }
  }
}
