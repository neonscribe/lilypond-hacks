%% -*- Mode: LilyPond -*-

\include "jazz-chords.ily"
\include "modern-codas.ily"
\include "english.ly"
\version "2.18.1"

verseChords = \chordmode {
  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 f1:7 f1:7
  c1:7 bf1:7 f1:7 f1:7
}

verseMelody = \relative f' {
  \time 4/4
  \key f \major
  \clef \whatClef
  \tempo 4 = 145
  
  \mark "Verse"
  
  f4. a4. ef'8 a,8 | f4. a4. ef'8 a,8 | f4. a4. ef'8 a,8 | f4. a4. ef'8 a,8 |
  \break
  bf4. d4. af'8 d,8 | bf4. d4. af'8 d,8 | f,4. a4. ef'8 a,8 | f4. a4. ef'8 a,8 |
  \break
  c4. e4. bf'8 e,8 | bf4. d4. af'8 d,8 | f,4. a4. ef'8 a,8 | f4. a4. ef'8 a,8 |

  \bar "|."
}

bridgeChords = \chordmode {
  c1:7 c1:7 bf1:7 bf1:7
}

bridgeMelody = \relative f'' {
  \time 4/4
  \key f \major
  \clef \whatClef
  \tempo 4 = 145
  
  \mark "Bridge"
  
  c4. e4. bf'8 e,8 | c4. e4. bf'8 e,8 | bf4. d4 af'8 d,4 | bf4 r4 r2 |

  \bar "|."
}

\paper {
  indent = 0.
  tagline = ""
  oddHeaderMarkup = \markup { 
    \fill-line 
    { 
      "" %% \fromproperty #'page:page-number-string 
      %% left 
      \on-the-fly #not-first-page \fromproperty #'header:title 
      %% center 
      " " 
      %% right 
    } 
  } 
  evenHeaderMarkup = \oddHeaderMarkup 
}

\header {
  title = "Everything Is Broken"
  subtitle = \instrument
  composer = "Bob Dylan"
  copyright = "© 1989 Special Rider Music"
}

\markup { \vspace #1 }

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName #'font-size = #+3
      \override ChordName #'font-series = #'bold
      \set chordChanges = ##f
     \transpose f \whatKey {
       \verseChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose f \whatKey {
	  \verseMelody
	  }
	}
    }
  >>
  \layout { }
}

\markup { \vspace #2 }

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName #'font-size = #+3
      \override ChordName #'font-series = #'bold
      \set chordChanges = ##f
     \transpose f \whatKey {
       \bridgeChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose f \whatKey {
	  \bridgeMelody
	  }
	}
    }
  >>
  \layout { }
}
