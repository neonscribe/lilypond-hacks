%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

\header {
  title = "I'm Beginning to See the Light"
  subtitle = \instrument
  poet = "Don George"
  composer = "Johnny Hodges, Duke Ellington, Harry James"
  copyright = "© 1944 Famous Music Corporation"
}

refrainLyricsPre = \lyricmode {
  I
}

refrainLyricsAOne = \lyricmode {
  nev -- er cared much for moon -- lit skies
  I nev -- er wink back at fi -- re -- flies
  But now that the stars are in your eyes
  I'm be -- gin -- ning to see the light __
  I
}

refrainLyricsATwo = \lyricmode {
  nev -- er went in for af -- ter -- glow
  Or can -- dle -- light on the mis -- tle -- toe
  But now when you turn the lamp down low
  I'm be -- gin -- ning to see the light __
}

refrainLyricsBridge = \lyricmode {
  Used to ram -- ble through the park __
  Sha -- dow box -- ing in the dark __
  Then you came and caused a spark
  That's a four a -- larm fi -- re, now __
  I
}

refrainLyricsAThree = \lyricmode {
  nev -- er made love by lan -- tern shine
  I ne -- ver saw rain -- bows in my wine
  But now that your lips are bur -- ning mine
  I'm be -- gin -- ning to see the light __
  I
}

refrainLyricsCoda = \lyricmode {
  -gin -- ning to see the light. __
  I'm be -- gin -- ning to see the light __
}

refrainChords = \chordmode {
  s8

  g2:6 c2:m6 g2:6 e2:7 a2:7 d2:7 bf2:m7 ef2:7
  g2:6 fs2:7 f2:7 e2:7 a2:7 d2:7
  
  g2 a4:m7 d4:7
  
  g2:6 c2:m6 g2:6 e2:7 a2:7 d2:7 bf2:m7 ef2:7
  g2:6 fs2:7 f2:7 e2:7 a2:7 d2:7
  
  g1
  
  b1:7 b1:7 bf1:7 bf1:7 a1:7 a1:7 bf2:m7 ef2:7 a2:m7 d2:7
  
  g2:6 c2:m6 g2:6 e2:7 a2:7 d2:7 bf2:m7 ef2:7
  g2:6 fs2:7 f2:7 e2:7
  
  a2:7 d2:7 g2

  \set chordNameFunction = #begin-parenthesis-ignatzek-chord-names
  a4:m7
  \set chordNameFunction = #end-parenthesis-ignatzek-chord-names
  d4:7
  \unset chordNameFunction

  a2:7 d2:7 b1:7

  a2:7 d2:7 g1
}

refrainMelody = \relative f' {
  \time 4/4
  \key g \major
  \clef \whatClef
  \tempo "Med. Swing" 4 = 130

  \mark \markup{ \box "A1" }

  \partial 8 ds8 |
  
  \bar ".|:"

  \repeat volta 2 {

  e8 g8 e4 g4 a4 | b8 e,4 e2 ds8 | e8 g8 e4 g4 a4 | bf8 ef,4 ef2 ef8 |
  \break
  e8 g8 e4 g4 a4 | b8 d4 d4. d8 c8 | b8 g8 e4 g8 a4 g8~
  g2 r4 r8 ds8

  \mark \markup{ \box "A2" }

  \bar "||"


  e8 g8 e4 g4 a4 | b8 e,4 e2 ds8 | e8 g8 e4 g4 a4 | bf8 ef,4 ef2 ef8 |
  \break
  e8 g8 e4 g4 a4 | b8 d4 d4. d8 c8 | b8 g8 e4 g8 a4 g8~
  g2. r4
    
  \bar "||"
  
  \break
  
  \mark \markup { \box "B" }

  r8 b4 fs8 b4 fs4 | ds8 fs4 b8~ b2 | r8 bf4 f8 bf4 f4 | d8 f4 bf8~ bf2 |
  \break
  r8 a4 e8 a4 e4 | cs8 e4 a4. a8 a8 | bf8 bf8 bf4 bf8 g4 a8~ | a2. r8 ds,8 

  \bar "||"
  \break

  \mark \markup { \box "A3" }

  e8 g8 e4 g4 a4 | b8 e,4 e2 ds8 | e8 g8 e4 g4 a4 | bf8 ef,4 ef2 ef8 |
  \break
  e8 g8 e4 g4 a4 | b8 d4 d4. d8 c8 |
  }
  \alternative {
    { b8 g8 e4 g8 a4 g8~ |
      g2. r8 ds8 | }
    { b'8 g8 e4 g8 a4 b8~ |
      b2. d8 c8 |
      b8 g8 e4 g8 a4 g8~ |
      g2. r4 | }
  }

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
      \refrainLyricsAOne
      \refrainLyricsATwo
      \refrainLyricsBridge
      \refrainLyricsAThree
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
    \line { \huge { last 8 clarinet, vocal chorus, clarinet chorus, } }
    \line { \huge { guitar chorus, vocal from B with second ending } }
  }
}

\include "notes.ily"
