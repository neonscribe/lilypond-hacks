\include "jazz-chords.ily"
\include "modern-codas.ily"
\include "english.ly"
\version "2.18.2"

refrainLyricsAOne = \lyricmode {
  It be -- gins to tell 'round mid -- night, 'round mid -- night,
  I do pret -- ty well 'til af -- ter sun -- down;
  Sup -- per -- time I'm feel -- in' sad,
  But it
}

refrainLyricsBOne = \lyricmode {
  real -- ly gets bad 'round mid -- night.
}

refrainLyricsATwo = \lyricmode {
  Mem -- 'ries al -- ways start, 'round mid -- night, 'round mid -- night,
  Have -- n't got the heart to stand those mem -- 'ries
  When my heart is still with you
  And old
}

refrainLyricsBTwo = \lyricmode {
  mid -- night knows it too, When some
}

refrainLyricsAThree = \lyricmode {
  Let our love take wing, some mid -- night, 'round mid -- night
  Let the an -- gels sing for your re -- turn -- ing,
  Let our love be safe and sound 
  When old
}

refrainLyricsRest = \lyricmode {
  quar -- rel we had needs mend -- ing
  Does it mean that our love is end -- ing?
  Dar -- ling I need you, late -- ly I find
  You're out of my arms and I'm out of my mind!
}

refrainLyricsCoda = \lyricmode {
  mid -- night comes a -- round.
}

refrainChords = \chordmode {
  ef2:m/d ef2:m/df c4:m7.5- f4:7.9- af4:m7 df4:7
  c2:m7.5- f2:7.9- b4:m7 e4:7 bf4:m7 ef4:7
  af2:m7 df2:7 ef2:m7 af2:7.5- 
  c2:m7.5- f2:aug7 f2:m7.5- bf2:7.9-

  c4:m7.5- f4:7 f4:m7.5- bf4:7.9- ef1:maj7

  c2:m7.5- f2:aug7.9- bf1:7.5-
  c2:m7.5- f2:aug7.9- bf1:7.5-
  af2:m7 f4:m7.5- bf4:aug7 c2:m7.5- f2:aug7
  bf4:m7 ef4:7 af4:m7 df4:7 fs4:m7 b4:7 f4:m7.5- bf4:7.9-

  c4:m7.5- f4:7 f4:m7.5- bf4:7.9- ef1:maj7
}

refrainMelody = \relative c' {
  \time 4/4
  \key ef \major
  \clef \whatClef
  \tempo "Slowly"

  \mark \markup { \box "A" }
  \bar ".|:"
  \repeat volta 2 {
    r4 bf16 ef16 f16 bf16 gf4. bf,8 | ef8 ef4 ef8 bf'8 af4. |
    r4 ef16 gf16 bf16 df16 c4. ef,8 | a4 af4 af4 g4 |
    r4 af16 cf16 ef16 gf16 f4. cf8 | bf2 r4 ef,8
    \textToCoda
    f8 |
  }
  \alternative {
    {
      \tuplet 3/2 { gf8 f8 gf8 } f4~ f4. ef8 | d8 bf8~ bf2. |
    }
    {
      gf'4 f4 ef4 d4 | ef2 r4 ef8 f8 |
    }
  }
  \bar "||"
  \set Score.currentBarNumber = #17
  \mark \markup { \box "B" }
  \tuplet 3/2 { gf8 f8 gf8 } f4~ f4. ef8 | d8 bf8~ bf2 ef8 f8 |
  \tuplet 3/2 { gf8 f8 gf8 } f4~ f4. ef8 | d8 bf'4. r2 |
  cf4 cf8 cf8 bf8 bf4. | gf8 gf4 gf8 f4. bf8 |
  ef4 ef8 ef8 df4 df8 df8 | b4 cs8 b8
  \daCapo
  bf2 |
  \bar "||"
  \break
  \textCoda
  gf4 f4 ef4 d4 | ef1 |
  \bar "|."
}

\paper {
  indent = 0.
  tagline = ""
}

\header {
  title = "'Round Midnight"
  subtitle = \instrument
  poet = "Bernie Hanighen"
  composer = "Cootie Williams and Thelonius Monk"
  copyright = "© 1944 Advanced Music Corporation"
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
      \set chordChanges = ##f
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
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsAThree }
    >>
    \refrainLyricsBOne
    \refrainLyricsBTwo
    \refrainLyricsRest
    \refrainLyricsCoda
    }
  >>
  \layout { }
}
