%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "lead-sheets.ily"

refrainLyricsPre = \lyricmode {
  I've got the
}

refrainLyricsOne = \lyricmode {
  world on a string,
  sit -- tin' on a rain -- bow,
  Got the string a -- round my fin -- ger,
  What a world, what a life, I'm in
}

refrainLyricsOneRep = \lyricmode {
  love.
  I've got a
}

refrainLyricsTwo = \lyricmode {
  song that I sing,
  I can make the rain go,
  an -- y time I move my fin -- ger,
  Luck -- y me, can't you see, I'm in
}

refrainLyricsTwoRep = \lyricmode {
  love.
  Life is a beau -- ti -- ful thing,
}

refrainLyricsBridge = \lyricmode {
  as long as I hold the string,
  I'd be a sil -- ly so -- and -- so
  if I should ev -- er let go.
  I've got the
}


refrainLyricsThree = \lyricmode {
  world on a string,
  sit -- tin' in a rain -- bow,
  Got the string a -- round my fin -- ger,
  What a world, what a life, I'm in love.
}

refrainChords = \chordmode {
  s4.
  
  f4:6 ef4:7 d4:7
  \chordInsideParens{ af4:7 }
  
  g2:m7 bf2:m6 f2:maj7 bf2:9.11+
  
  a4:m7 d4:9 af4:m7 df4:9
  
  g2:m7 c4:7 fs4:dim7
  
  g2:m7 c2:13
  
  a2:7.5+ d2:7.9+
  
  g2:m7 c2:7
  
  f2:6 bf4:6 b4:dim7
  f1:6

  e1:m7 a1:9 d1:13 d1:13 g1:9 g1:9 g1:m9 c1:13

  f4:6 ef4:7 d4:7
  \chordInsideParens{ af4:7 }
  
  g2:m7 bf2:m6 f2:maj7 bf2:9.11+
  
  a4:m7 d4:9 af4:m7 df4:9
  
  g2:m7 c4:7 fs4:dim7
  
  g2:m7 c2:13

  f2:6
  \chordOpenParen{ d2:7.9+ }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainMelody = \relative f' {
  \time 4/4
  \key f \major
  \clef \whatClef
  \tempo "Med.-Slow Swing"
  
  \partial 4. c8 f8 a8 |

  \mark \markup{ \box "A" }
  
  \repeat volta 2 {
    d8 c8 ef8 d8~ d2 | c8 bf8 f'8 bf,8 a8 g4. |
    g8 f8 c'8 f,8 e8 f4 e8~ | e2 ef2 |
    d4 d4 c4 d8 d8~ | d8 c4. a'4 a4 |
    \break
  } \alternative { {
    f1 | r2 r8 c8 f8 a8 |
  } {
    f1~ | f8 a8 a8 a8 a8 a8 a8 b8~ |
  } }
  \bar "||"
    \break

  \mark \markup{ \box "B" }

  \set Score.currentBarNumber = #17

  b1 | r8 a8 a8 a8 a8 a8 a8 b8~ | b1 | r8 a8 a8 a8 a8 a8 b8 e8 |
  b1 | r8 g8 g8 g8 g8 g8 g8 a8~ | a1~ | a2 r8 c,8 f8 a8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d8 c8 ef8 d8~ d2 | c8 bf8 f'8 bf,8 a8 g4. |
  g8 f8 e8 f8 a8 c4 e8~ |
  \break
  e2 ef2 |
  f4 f4 d4 f8 f8~ | f8 d4. c4 a4 | f1~ | f2 r2 |

  \bar "|."
}

\include "paper.ily"

\header {
  title = "I've Got the World on a String"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Harold Arlen"
  copyright = "© 1932 Ted Koehler Music and S.A. Music Co"
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
