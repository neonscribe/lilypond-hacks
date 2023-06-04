\include "jazz-chords.ily"
\include "english.ly"
\version "2.24.0"

refrainLyrics = \lyricmode {
  Soft -- ly, as in a morn -- ing sun -- rise,
  The light of love comes steal -- ing
  In -- to a new -- born day, oh!
  Flam -- ing, with all the glow of sun -- rise,
  A burn -- ing kiss is seal -- ing
  The vow that all be -- tray.
  For the pas -- sions that thrill love
  And lift you high to heav -- en,
  Are the pas -- sions that kill love
  And let you fall to hell!
  So ends each sto -- ry.
  Soft -- ly, as in an eve -- ning sun -- set,
  The light that gave you glo -- ry
  Will take it all a -- way.
}

refrainChords = \chordmode {
  a1:m b2:m7.5- e2:7.9-
  a1:m d1:m7
  a1:m b2:m7.5- e2:7.9-
  a2:m fs2:7 b2:m7.5- e2:7.9-
  a1:m b2:m7.5- e2:7.9-
  a1:m d1:m7
  a1:m b2:m7.5- e2:7.9-
  a1:m a1:m
  c1:6 c1:6
  a1:7 a1:7
  d2:m7 g2:7 fs2:m7.5- b2:7
  b1:m7.5- e1:7.9-
  a1:m d1:m
  a1:m d1:m
  a1:m b2:m7.5- e2:7.9-
  a2:m fs2:7 b2:m7.5- e2:7.9-
}

refrainMelody = \relative g'' {
  \time 4/4
  \key c \minor
  \clef \whatClef
  \set Score.currentBarNumber = #1

  \mark \markup{ \box A1 }
  \bar ".|:"

  \repeat volta 2 {
  c2 g2 | r8 f8 g8 f8 g4 f4 |
  c'2 ef,2 | r8 d8 ef8 d8 ef4 d4 |
  \break
  g2 c,2 | r8 g'8 af8 g8 ef4 d4 | c1 | g'1 |
  \break
  \mark \markup{ \box A2 }
  c2 g2 | r8 f8 g8 f8 g4 f4 |
  c'2 ef,2 | r8 d8 ef8 d8 ef4 d4 |
  \break
  g2 c,2 | r8 g'8 af8 g8 ef4 d4 | 
    <<
      \new Voice
      { \voiceTwo
	\magnifyMusic 0.63 {
	  c'4\rest c8\rest c8 c8 c4 c8 }
      }
      { \voiceOne
	c,1
	}
      >>
    \oneVoice
  \tuplet 3/2 { r4 d4 ef4 } \tuplet 3/2 { f4 g4 af4 } |
  \break
  \mark \markup{ \box B }
  bf2 ef,2 | r8 bf'8 c8 bf8 c4 bf4 |
  bf2 e,2~ |
  \tuplet 3/2 { e4 e4 f4 } \tuplet 3/2 { g4 af4 bf4 } |
  \break
  c2 f,2 | r8 c'8 d8 c8 d4 c4 | d2. d4 | f4 f4 ef4 d4 |
  \break
  \mark \markup{ \box A3 }
  c2 g2 | r8 f8 g8 f8 g4 f4 |
  c'2 ef,2 | r8 d8 ef8 d8 ef4 d4 |
  g2 c,2 | r8 g'8 af8 g8 ef4 d4 | c1 | 
  \mark \markup { \musicglyph #"scripts.coda" }
  r1 |
  }
}
\include "paper.ily"

\header {
  title = "Softly, as in a Morning Sunrise"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Sigmund Romberg"
  copyright = "© 1928 Warner Bros., Inc."
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
     \transpose a \whatKey {
	\refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\transpose c \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" \refrainLyrics
    }
  >>
  \layout { }
}
