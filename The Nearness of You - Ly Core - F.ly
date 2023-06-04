%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

refrainLyricsPre = \lyricmode {
It's not the
}

refrainLyricsOne = \lyricmode {
pale moon that ex -- cites me,
that thrills and de -- lights me.
Oh no, __ it's just the near -- ness of
}

refrainLyricsOneRep = \lyricmode {
you.
It is -- n't
}

refrainLyricsTwo = \lyricmode {
your sweet con -- ver -- sa -- tion
That brings this sen -- sa -- tion.
Oh no, __ it's just the near -- ness of
}

refrainLyricsTwoRep = \lyricmode {
you.
When you're in my
}

refrainLyricsBridge = \lyricmode {
arms __
and I feel you so close to me, __
all my wild -- est dreams come true. __
I need no
}


refrainLyricsThree = \lyricmode {
soft lights to en -- chant me
if you'll on -- ly grant me
the right __ to hold you ev -- er so tight, __
and to feel in the night
The near -- ness of you. __
}

refrainChords = \chordmode {
  s4.
  
  f1:maj7 c2:m7 f2:7 bf1:maj7 bf1:dim7
  a2:m7 af2:7 g2:m7 c2:7
  
  a2:m7 d2:7 g2:m7 c2:7
  
  f2:6 bf2:maj7 f2/a af2:7
  
  g1:m7 c1:7
  f2:maj7 f2:7 c2:m7 f2:7 bf1:maj7 a2:m7.5- d2:7
  g2:m7 ef2:7 c1:7
  
  f1:maj7 c2:m7 f2:7 bf1:maj7 bf1:dim7
  a2:m7 af2:7 g2:m7 c2:7

  a1:m7.5- d1:7 g1:m7 c1:7
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
  \tempo "Medium"
  
  \partial 4. c8 f8 g8 |

  \mark \markup{ \box "A" }
  
  \repeat volta 2 {
  a2 c4 bf8 a8 | g4 bf2 a4 | f2 a4 g4 | e4 g2 f4 |
  c1~ | c8 d8 e8 f8 \tuplet 3/2 { g4 f4 e4 } |
  } \alternative { {
  c'1~ | c2~ c8 c,8 f8 g8 |
  \break
  } {
  f1~ | f2 c8 d8 e8 f8 |
  } }

  \bar "||"

  \mark \markup{ \box "B" }
  
  g1~ | g4 e8 f8 g8 f4 e8 |
  \break
  a4. e8 ef2~ | ef2~ ef8 f4 f8 | d'2. d4 | c2. bf4 |
  g1~ | g2~ g8 c,8 f8 g8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  a2 c4 bf8 a8 | g4 bf2 a4 | f2 a4 g4 | e4 g2 f4 |
  \break
  c1~ | c8 d8 e8 f8 \tuplet 3/2 { g4 f4 e4 } |
  c'1~ | c4 a8 bf8 \tuplet 3/2 { c4 bf4 a4 } |
  \break
  d2. d,4 | e4 f2 g4 | f1 | r1 |

  \bar "|."
}

\include "paper.ily"

\header {
  title = "The Nearness of You"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "Hoagy Carmichael"
  copyright = "© 1937 Famous Music Corp."
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
      \refrainLyricsPre
    <<
      { \refrainLyricsOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsTwo }
    >>
    \refrainLyricsOneRep
    \refrainLyricsTwoRep
    \refrainLyricsBridge
    \refrainLyricsThree
    }
  >>
  \layout { }
}
