%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "I Let a Song Go Out of My Heart"
  subtitle = \instrument
  poet = "Henry Nemo"
  composer = "Duke Ellington"
  copyright = "© 1938 Famous Music Corporation"
}

verseLyrics = \lyricmode {
  Ev -- 'ry -- one has a fav -- or -- ite song,
  My heart has one too;
  But I lost my fav -- or -- ite song, That's why I'm so blue.
}

refrainLyricsAOne = \lyricmode {
  I let a song __ go out of my heart;
  it was the sweet -- est mel -- o -- dy, __
  I know I lost heav -- en 'cause
}

refrainLyricsBOne = \lyricmode {
  you were the song. __
}

refrainLyricsATwo = \lyricmode {
  Since you and I __ have drift -- ed a -- part,
  life does -- n't mean a thing to me. __
  Please come back, sweet mus -- ic. I
}

refrainLyricsBTwo = \lyricmode {
  know I was wrong. __
}

refrainLyricsAThree = \lyricmode {
  I let a song __ go out of my heart.
  Be -- lieve me dar -- ling, when I say __
  I won't know sweet mus -- ic un -- til you re -- turn some day.
}

refrainLyricsRest = \lyricmode {
  Am I too late __ to make a -- mends? __
  You know that we were meant to be more than just friends, just friends.
}
  
refrainChords = \chordmode {
  ef2 af2:7 ef2 c2:m7 g2:m7 c2:7 g2:m7 c2:7
  af8:6 g4:m7 f4:m7 fs4:dim7 ef8:/g
  ef2:/g af2:7

  ef2 c2:m7 f2:m7.5- bf2:7
  
  ef2 af2:m6 ef4 ef2:/g gf4:dim7
  
  f1:m7 bf1:7 ef1:maj7
  ef2:6 d4:m7 g4:7 c4:m g4:7.5+/b c4:m/bf c4:m/a
  af4:m7 df4:7 gf2:7
  b1:7 bf1:7.5+
  
  ef2 af2:7 ef2 c2:m7 g2:m7 c2:7 g2:m7 c2:7
  af8:6 g4:m7 f4:m7 fs4:dim7 ef8:/g
  ef2:/g af2:7

  ef2 f2:m7/bf ef2
  \set chordNameFunction = #begin-end-parenthesis-ignatzek-chord-names 
  bf2:7.5+
  \unset chordNameFunction  
}

refrainKey = ef

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  %% \set Score.currentBarNumber = #1
  %% \mark "Refrain"
  \mark \markup { \box "A1, A2" }
  \bar ".|:"
  \repeat volta 2 {
    ef8 f8 ef8 ef'8~ ef4. c8 |
    \tuplet 3/2 { bf8 c bf } ef,2. |
    r8 d'4. c8 bf8 g8 d8 |
    d'4 g,8 c8~ c2 |
    \break
    f,8 g4 af4 a4 bf8~ |
    bf8 ef2. c8 |
  \break
  }
  \alternative {
    {
      \tuplet 3/2 { bf8 c bf } ef,2.~ | ef2 r2 |
    }
    {
      \tuplet 3/2 { bf'8 c bf } ef,2.~ | ef4 bf'4 bf4 a4 |
    }
  }
  \bar "||"
  \break
  \set Score.currentBarNumber = #17
  \mark \markup { \box "B" }
  af!1~ | af4 c4 c4 b4 | bf!1~ |
  bf8 bf4. c4 d4 |
  \break
  ef4 ef4 ef4 ef4 | ef4 df4 gf,4 af4 |
  b1 | c8 fs,4.~ fs2 |
  \bar "||"
  \break
  \mark \markup { \box "A3" }
  ef8 f8 ef8 ef'8~ ef4. c8 |
  \tuplet 3/2 { bf8 c bf } ef,2. |
  r8 d'4. c8 bf8 g8 d8 |
  d'4 g,8 c8~ c2 |
  \break
  f,8 g4 af4 a4 bf8~ |
  bf8 ef2. 
  c8 |
  \tuplet 3/2 { bf8 c bf } ef,2 f4 | ef1 |
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
      \set chordChanges = ##t
     \transpose ef \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose ef \whatKey {
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
    \refrainLyricsBTwo
    \refrainLyricsRest
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsAThree }
    }
  >>
  \layout { }
}
