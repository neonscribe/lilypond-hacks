%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "With a Gun"
  subtitle = \instrument
  poet = ""
  composer = "Walter Becker and Donald Fagen"
  copyright = "© 1974 Universal Music Corp."
}

stanzaOneLyrics = \lyricmode {
  I could be wrong, but I have seen your face be -- fore;
  you were the man that I saw run -- ning from his door.
  You owed him mon -- ey, but you gave him some -- thing more
}

stanzaTwoLyrics = \lyricmode {
  You were the found -- ers of the clin -- ic on the hill
  un -- til he caught you with your fin -- gers in the till.
  He slapped your hand _ so you set -- tled up your bill
}

stanzaThreeLyrics = \lyricmode {
  I un -- der -- stand that you will soon be leav -- in' town;
  don't try to call me when they fi -- n'lly run you down.
  Just give fair warn -- ing an -- y time you come a -- round
}

chorusAndBridgeLyrics = \lyricmode {
  with a gun. __
  With a gun __ you will be what you are just the same.

  Did you pay the oth -- er man with the piece in your hand
  and leave him ly'n' in the rain?
  
  rain?

  When you're born to play the fool
  and you've seen all the west -- ern mov -- ies,
  woe to the one who does you wrong.
  You'll hide in the bush -- es, mur -- der the man with Lu -- ger in hand.
  
  rain?
}

refrainChords = \chordmode {
  a1:m a1:m a1:m a1:m

  a1:m g1 f2 g2 a1:m
  a1:m g1 c1 d1:m
  d1:m d1:m c1 bf1 bf4 r2.
  
  g1:m a1:m g1:m a1:m
  bf1 c1 bf1 bf1
  f1 g1 a1 g1
  f1 e1:m
  
  d1:m g1

  d1:m d1:m

  e1:m e1:m e1:m bf1
  a1:m g1 fs1:m fs1:m d2 a2
  c2 g2 e1 d1 e1 d1
  
  c1/bf bf1 c1/bf bf1

  d1:m d1:m d1:m d1:m
  f1 f1 f1 f1
  a1:m
}

refrainKey = a

refrainMelody = \relative f'' {
  \time 2/2
  \key \refrainKey \minor
  \clef \whatClef
  \tempo 2 = 110

  \mark \markup{ "Intro" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar ".|:-||"
  \break

  \segnoSign
  \repeat volta 2 {
  r4
  \mark \markup{ "Verse" }
  c4 c4 c4 | b4 a4 a4 b4 | c4 c4 b4 a4 | a2 r2 |
  r4 c4 c4 c4 | b4 a4 a4 b4 | c4 c4 b4 c4 | d2 r2 |
  r4 f4 f4 e4 | d4 d4 c4 d4 | e4 e4 d4 c4 | d2 r2 |
  \break
  
  \mark \markup{ "Chorus" }
  r2 bf4 c8 d8~ |
  \bar "||"
  d2 r2 | r2 bf4 c8 d8~ | d2 r2 |
  r2 bf4 c4 | d2 c4 d4 | e2 d4 c4 | bf2 r2 |
  r2 bf4 c4 | f4. f8 g8 f4. | d2 f4 d4 | cs2 d4 cs4 |
  b2 r4 b4 | c4 a2. | b2 a4 g4 |
  \textToCoda
  } \alternative {
    { a2 r2 | r1 | }
    { a2 r2 | r2 c4 d4 | }
  }
  \bar "||"
  \break
  
  \mark \markup{ "Bridge" }
  e4. e8 e4 e4 | e2 c4 d4 | e2 e4 g4 | f4 e4 d4 c4 |
  e2 d4 c4 | b4 b4 b4 a4 | cs2 r2 | r2 r4 e4 | e2 e4. e8 |
  d2 d2 | e2 d4 c4 | a2 r4 a4 | e'2 d4 c4 | a2 r2 |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq
  \dalSegno
  \rsq | 
  \bar "||"
  \break

  \textCoda
  a2 r2 |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq\fermata
  \bar "|."
}

\include "paper.ily"

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    } \addlyrics {
      \stanzaOneLyrics
      \chorusAndBridgeLyrics
      } \addlyrics {
	\stanzaTwoLyrics
      } \addlyrics {
	\stanzaThreeLyrics
      }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}
