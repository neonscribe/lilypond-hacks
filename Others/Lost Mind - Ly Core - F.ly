\include "jazz-chords.ily"
\include "english.ly"
\version "2.18.2"

If you could be so kind
To help me find my mind
I'd like to thank you in ad -- vance
Know this be -- fore you start
My soul's been torn a -- part
I lost my mind in a wild ro -- mance
My fu -- ture is my past
Its mem -- o -- ry will last
I'll live to love the days gone by
Each day that comes and goes is like the one be -- fore
My mine is lost 'til the day I die
Words would fail me if I tried to de -- scribe her
Though I know she's not what she should have been
She was the de -- vil with the face of an an -- gel
She was cruel and sweet, sweet and cruel as home -- made sin
If you could be so kind
To help me find my mind
I'd like to thank you in advance
Know this before you start
My soul's been torn apart
I lost my mind in a wild romance

refrainLyricsAOne = \lyricmode {
  I look at you and sud -- den -- ly, some -- thing in your eyes I see
  soon be -- gins be -- witch -- ing me. __
  It's that old de -- vil moon __ that you stole from the skies. __
  It's that
}

refrainLyricsBOne = \lyricmode {
  old de -- vil moon __ in your eyes. __
  You and your glance __ make this ro -- mance __ too hot to han -- dle. __
  Stars in the night __ blaz -- ing their light __ can't hold a can -- dle __
  to your raz -- zle daz -- zle.
}

refrainLyricsATwo = \lyricmode {
  You've got me fly -- in' high and wide on a mag -- ic car -- pet ride
  full of but -- ter -- flies in -- side. __
  Wan -- na cry wan -- na croon, __ wan -- na laugh like a loon, __
  It's that
}

refrainLyricsCoda = \lyricmode {
  old de -- vil moon __ in your eyes. __
  Just when I think I'm __ free as a dove __
  old dev -- il moon deep in your eyes blinds me with love. __
}

refrainChords = \chordmode {
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f1:maj7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  
  af2:m7 df2:7 gf2:maj7 c2:7 f1:maj7 ef1:maj7
  f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 d1:maj7 d1:m7
  d1:m7 g1:7 g1:m7 c1:7
  
  af2:m7 df2:7 gf2:maj7 c2:7 f1:maj7 ef1:maj7
  
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7 f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 f1:maj7

  \set chordNameFunction = #begin-end-parenthesis-ignatzek-chord-names 
  ef1:maj7
  \unset chordNameFunction
}

refrainMelody = \relative f' {
  \time 4/4
  \key f \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \mark \markup{ \box "A" }
  
  \repeat volta 2 {
    f1^\markup { Latin } | ef8 ef8 ef8 ef8 ef4 g4 | f1 | g8 g8 g8 g8 g4 bf4 |
    \break
    a1 | bf8 bf8 bf8 bf8 bf4 d4 | c1~ | c2 c4^\markup { Swing } c4 |
    \bar "||"
    \break

    \mark \markup{ \box "B" }

    c2 bf8 a4 f 8~ | f2 a4 bf4 | c2 bf8 a4 f8~ | f2 a4 bf4 |
    \break
  }
  \alternative {
    {
      df2 cf8 bf4 gf8~ | gf2 a8 g4 f8~ | f1^\markup { Latin } | r2 ef8 c8 ef8 f8~ |
      \bar "||"
      \break

      \mark \markup{ \box "C" }

      f2 ef8 c8 ef8 g8~ | g2 \tuplet 3/2 { ef4 c4 ef4 } | a2^\markup { Swing } a2~ | a2 f8 d8 f8 a8~ |
      \break
      a2 f8 d8 f8 b8~ | b2 \tuplet 3/2 { f4 d4 f4 } | c'2 c2~ | c8^\markup { Stop } d4 af8 g8 f8 d8 c8 |
      \break
    }
    {
      \set Score.currentBarNumber = #37
      df'2 cf8 bf4 gf8~ | gf2 a8 g4 f8~ | f1^\markup { Latin } | r2 ef8 c8 ef4 |
      \bar "||"
      \break
    }
  }

  \mark \markup{ \box "D" }

  f2 f2~ | f2 ef8 c8 ef4 | f1~ | f2 \tuplet 3/2 { ef'4 ef4 ef4 } |
  \break
  c2 \tuplet 3/2 { bf4 c4 bf4 } | a2 \tuplet 3/2 { f4 ef4 g4 } | c1~ | c2 r2 |
  \bar "|."
}

\paper {
  indent = 0.
  tagline = ""
}

\header {
  title = "Lost Mind"
  subtitle = \instrument
  composer = "Percy Mayfield"
  copyright = "© 1955 Venice Music Ltd."
}

\markup {
  % Leave a gap after the header
  \vspace #1
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName #'font-size = #+3
      \override ChordName #'font-series = #'bold
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
    <<
      { \refrainLyricsAOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsATwo }
    >>
    \refrainLyricsBOne
    \refrainLyricsCoda
    }
  >>
  \layout { }
}

\markup {
  \column {
    \line { }
    \line { }
  }
}
