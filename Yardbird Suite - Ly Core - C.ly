%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

refrainLyricsAOne = \lyricmode {
It's hard to learn
how tears can burn __ one's heart, __
but that's the thing that I found out. __
Too late I guess, __ ‘cause I'm in a_mess
}

refrainLyricsATwo = \lyricmode {
My faith is gone.
Why lead me on __ this way? __
I thought there'd be no price on love __
}

refrainLyricsRest = \lyricmode {
but I’ve had to pay. __

If \skip 1 \skip 1 \skip 1 I could per -- form a mir' -- cle
I'd re -- vive your thoughts a -- bout me. __
But I know it is hope -- less.
You could nev -- er real -- ly care.
That's why I des -- pair!

I go a -- long
hop -- ing some -- day __ you'll learn. __
This flame in my heart, dear __
\skip 1 \skip 1 for -- ev -- er will __ burn!
}

refrainChords = \chordmode {
  c1:6 f2:m7 bf2:7 c2:maj7 bf2:7 a1:7
  d1:7
  
  g1:7 e2:m7 a2:7 d2:m7 g2:7
  
  g1:7 c1:6 c2:6 b2:7.9-
  
  e1:m7 fs2:m7.5- b2:7.9- e1:m7 a1:7
  d1:m7 e2:m7 a2:7 d1:7 d2:m7 g2:7
  
  c1:6 f2:m7 bf2:7 c2:maj7 bf2:7 a1:7
  
  d1:7
  
  d2:m7 g2:7 c1:6

  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g:7 }
}

refrainMelody = \relative g' {
  \time 4/4
  \key c \major
  \clef \whatClef

  \mark \markup{ \box A1 }
  \bar ".|:"

  \repeat volta 2 {
    r8 c4. g4 a4 | bf4. af4 ef8 f8 g8~ | g2 g4. e8~ | e4. e8 f8 e8 f8 g8 |
    \break
    e8 c8 r8 c8~ c2 |
  }
  \alternative {
    {
      r4 r8 d8 r8 e8 f8 g8~ | g4. a4 e8 f8 g8~ | g2. r4 |
      \break
      }
    {
      r4 r8 c,8 e8 c8 e8 c8~ | c1 | r2 r4 g'16 a16 g16 fs16 |
      \bar "||"
      \break
     }
  }
  \mark \markup{ \box B }
  e4. fs8 g8 e8 r8 a8 | r8 a8 a2. | g8 a8 g8 fs8 e8 b8 c8 cs8~ | cs2 r4 r8 bf8 |
  \break
  a4. a'8 r8 e8 f8 g8 | r8 g4. f8 e8 d8 cs8 | e4 a,8 e'2 a,8 | d8 e8 f8 g8 r2 |
  \bar "||"
  \mark \markup{ \box A3 }
  r8 c4. g4 a4 | bf4. af4 ef8 f8 g8~ | g2 g4. e8~ | e4 e8 f8 r8 ds8 e8 a8 |
  \break
  r8 a4.~ a2 |
  \textToCoda
  r8 a,8 \tuplet 3/2 { b8 c8 d8 } e4 g,8 c8~ | c2. r4 | r1 |
  \bar "||"
}

codaChords = \chordmode {
  d2:m7 g2:7 c1:maj7 c1:maj7
}

codaMelody = \relative g' {
  \time 4/4
  \key c \major
  \clef \whatClef

  \textCoda
  r8 a,8 \tuplet 3/2 { b8 c8 d8 } e8 f8 \tuplet 3/2 { g8 a8 b8 } | d1~ | d1\fermata
  \bar "|."
}

\include "paper.ily"

\header {
  title = "Yardbird Suite"
  subtitle = \instrument
  composer = "Charlie Parker"
  copyright = "© 1946 Atlantic Music Corp."
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
     \transpose c \whatKey {
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
    \new Lyrics \lyricsto "voiceMelody"
    {
      <<
	\refrainLyricsAOne
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \refrainLyricsATwo }
      >>
      \refrainLyricsRest
    }
  >>
  \layout { }
}
\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose c \whatKey {
	\codaChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\transpose c \whatKey {
	  \codaMelody
	  }
	}
    }
  >>
  \layout { ragged-right = ##f }
}

