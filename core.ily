%% -*- Mode: LilyPond -*-

\include "jazz-chords.ily"
\include "modern-codas.ily"
\include "english.ly"
\version "2.18.2"

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
}

refrainMelody = \relative f' {
  \time 4/4
  \key x \major
  \clef \whatClef
  \tempo "Medium"

  \mark \markup{ \box "A1" }

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

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
  title = ""
  subtitle = \instrument
  poet = ""
  composer = ""
  copyright = "© 19xx Co., Inc."
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
     \transpose x \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose x \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
  >>
  \layout { }
}
