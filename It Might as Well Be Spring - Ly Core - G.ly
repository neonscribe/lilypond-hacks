%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "lead-sheets.ily"

\header {
  title = "It Might as Well Be Spring"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Richard Rodgers"
  %% copyright = "© 1945 Williamson Music"
}

refrainLyricsPre = \lyricmode {
  I'm as
}

refrainLyricsAOne = \lyricmode {
  rest -- less as a wil -- low in a wind -- storm,
  I'm as jump -- y as a pup -- pet on a string.
  I'd say that I had spring fev -- er, but I know it is -- n't spring. I am
}

refrainLyricsATwo = \lyricmode {
  star -- ry eyed and vague -- ly dis -- con -- tent -- ed,
  like a night -- in -- gale with -- out a song to sing.
  Oh, why should I have spring fev -- er when it
}

refrainLyricsBridge = \lyricmode {
   is -- n't ev -- en spring? I keep wish -- ing I were some -- where else
   walk -- ing down a strange new street;
   hear -- ing words that I have nev -- er heard
   from a man I've yet to meet. I'm as
}

refrainLyricsCoda = \lyricmode {
 have -- n't seen a cro -- cus or a rose -- bud, or a rob -- in on the wing.
 But I feel so gay in a mel -- an -- cho -- ly way that it might as well be spring.
 It might __ as well __ be spring.
}

refrainLyricsAThree = \lyricmode {
  bu -- sy as a spi -- der spin -- ning day -- dreams,
  I'm as gid -- dy as a ba -- by on a swing.
  I
}

refrainChords = \chordmode {
  s4 g2:maj7 a2:m7/d g2:maj7 a2:m7/d g1:maj7 d2:m7 g2:7
  c2:maj7 d2:/c g2:/b bf2:7
  
  a2:m7 d2:7 b4:m7 e4:7 a4:m7 d4:7
  
  a2:m7 d2:7 g2:6 d4:m7 g4:7
  
  c2:6 a2:m7 d2:m7 g2:7
  d2:m7 g2:7 c2:maj7 b4:m7.5- e4:7 a2:m7 a2:m7/g fs2:m7.5- b2:7
  e2:m7 a2:7 a2:m7 d2:7

  c2:maj7 d2:/c g2:/b bf2:7
  a2:m7 d2:7 b2:7 e2:7 a1:7 a2:m7 d2:7
  b2:m7 e2:m7 a2:7 bf2:dim7 b2:m7 e2:m7 a2:m7 d2:7
  
  g1:6
  \set chordNameFunction = #begin-parenthesis-ignatzek-chord-names 
  a2:m7
  \set chordNameFunction = #end-parenthesis-ignatzek-chord-names 
  d2:7
  \unset chordNameFunction  
}

refrainMelody = \relative f' {
  \time 2/2
  \key g \major
  \clef \whatClef
  \tempo 4 = 130

  \mark \markup{ \box "A" }

  \partial 4 d8 d8 |
  
  \bar ".|:"

  \segnoSign

  \repeat volta 2 {
    e8 d8 d8 d8 e8 d8 d8 g8 | e4 d2 d8 d8 |
    \break
    d8 b'8 d8 g,8 b8 d,8 g8 d8 | f2. 
    f4 \textToCoda |
    e4 ds8 e8 fs!4. g8 | g4 d!2 d8 d8 |
    \break
  }
  \alternative {
    { c'4 c4 c4 fs,4 | b2. d,8 d8 | }
    { d'4 d4 d4 fs,4 | g1 |  }
  }
    
  \bar "||"
  
  \break
  \set Score.currentBarNumber = #17
  \mark \markup { \box "B" }

  c4 c4 c8 d8 c8b8 | a4 f4 f2 |
  a8 f8 f8 f8 f4 e4 | g1 |
  \break
  c4 c4 c8 d8 c8 b8 | a4 fs4 fs4 g8 a8 |
  b4 b4 cs4 cs4 | d2. d,8 \dalSegno d8 |
  \bar "|."
  \break
  \textCoda
  e8 e8 ds8 e8 fs!8 fs8 es8 fs8 | g4 g2 fs?8 g8 |
  a4 a4 a4 fs4 | b2. b8 c8 |

  \bar "||"
  \break
  cs4 a4 a4 a8 b8 | c!8 a8 a8 a8 a4 a8 as8 |
  b4 g4 g4 b4 | a2. g4 | d4.( b'8) g2 | d4.( c'8) a2 | g1 | r1 |
  
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
      \set chordChanges = ##f
     \transpose g \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose g \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyricsPre
    <<
      { \refrainLyricsAOne }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsATwo }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsAThree }
    >>
    \refrainLyricsBridge
    \refrainLyricsCoda
    }
  >>
  \layout { }
}

$(if #(not (string-contains instrument "Standard"))
     #{ \pageBreak #} )

performanceNotes =
\markup {
  \column {
    \line { \huge { Instrumental intro: last 8, bars 29-36 } }
    \line { \huge { Vocal chorus } }
    \line { \huge { First solo A1 } }
    \line { \huge { Second solo A2 } }
    \line { \huge { Vocal B to end, 3x 33-34 ''might as well be'' iii-vi-ii-V7 } }
  }
}

\include "notes.ily"
