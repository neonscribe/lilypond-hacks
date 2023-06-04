%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "Another Bridge to Burn"
  subtitle = \instrument
  %% poet = ""
  composer = "Harlan Howard"
  copyright = "© 1963 Pamper Music, Inc."
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s2.

  c1 g1:7 c1 c2.
}

introKey = af

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Western Swing" 4 = 160

  \mark \markup{ "Intro" }

  \partial 2. g4 a4 c4 |
  \bar "||"
  
  ds8 e4 c8~ c4. g8 | bf8 bf8 a4 g4 e4 | c2. b'4 | c2.
}

refrainLyrics = \lyricmode {
  I've had to burn most ev -- 'ry bridge I've crossed
  It seems like ev -- 'ry time I've loved I've lost
  When I met you I thought the tide would turn
  But now you're just an -- o -- ther bridge to burn

  I'll soon light the match and move on
  I've al -- read -- y wait -- ed much too long
  Now I'm so hurt and you're so un -- con -- cerned
  And our love's just an -- o -- ther bridge to burn

  Some -- times one must love e -- nough for two
  And that's how it's been with me and you
  Now I'm so hurt and you're so un -- con -- cerned
  And our love's just an -- o -- ther bridge to burn
}

refrainChords = \chordmode {
  s4
  c1 c1:7 f1 f1
  c1 c1 g1:7 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1:7
  
  f1 f1 c1 c1
  f1 f1 c1 g1:7
  
  c1 c1:7 f1 f1
  c1 g1:7 c1 c1
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \partial 4 g4 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  g2 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r1 |
  r4 e'4 c4 g4 | c4. bf8~ bf4 af4 | g2 r2 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  r4 g4 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r1 |
  r4 e'4 c4 g4 | b2 a4 b4 | c1 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r4 f,4 a4 c4 | ef2 d4 c4 | a4 g2. | r1 |
  r4 f4 a4 c4 | ef2. c4 | g4. g4 a8 as4 | b2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  r4 g4 a4 g4 | bf2 c4 c4 | a4. f8~ f2 | r2 r4 ds'4 |
  e2 c4 g4 | b2 a4 b4 | c1 | r1 |

  \bar "|."
}

soloChords = \chordmode {
  c1 c1:7 f1 f1
  c1 c1 g1:7 g1:7

  c1 c1:7 f1 f1
  c1 g1:7 c1 c1:7
  
  f1 f1 c1 c1
  f1 f1 c1 g1:7
  
  c1 c1:7 f1 f1
  c1 g1:7 c1 c1
}

soloKey = af

soloMelody = \relative f' {
  \time 4/4
  \key \soloKey \major

  \mark \markup{ "Solos" }
  \set Score.currentBarNumber = #1
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "|."
}

\include "paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "intro.ily"
\include "refrain.ily"
\include "solo.ily"

\markup {
  \column {
    \line { \large { Well, I've just been thinkin' things over. } }
    \line { \large { My heart is flowin' with tears. } }
    \line { \large { My life just don't seem worth livin'. } }
    \line { \large { And it's been this way for years. } }
  }
  \column {
    \hspace #10
  }
  \column {
    \line { \large { Don't ask me why I am cryin'. } }
    \line { \large { Cause I have lost, about all I can lose. } }
    \line { \large { Well, there's just no use in tryin' } }
    \line { \large { Well, I'm just knee deep in the blues. } }
  }
}
