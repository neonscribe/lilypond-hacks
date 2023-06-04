%% -*- Mode: LilyPond -*-

\include "lead-sheets.ily"

refrainLyrics = \lyricmode {
  The bats are in the bel -- fry,
  the dew is on the moor.
  Where are the arms that held me and
  pledged her love be -- fore,
  and pledged her love be -- fore?
  And it's such a sad, old feel -- ing
  all the fields are soft and green.
  It's mem -- o -- ries that I'm steal -- ing,
  But you're in -- no -- cent when you dream, when you dream,
  you're in -- no -- cent when you dream.
  When you dream, you're in -- no -- cent when you dream.
}

introChords = \chordmode {
  f2. f2. f2. f2. f2. f2. f2. f2
}

refrainSheetChords = \chordmode {
  f4
  f2. d2.:7/fs g2.:m g2.:m c2.:7 c2.:7 f2. f2.
  a2.:7 a2.:7 d2.:m d2.:m  bf2. bf2. f2. f2.
  bf2. c2.:7 f2. f2. f2. f2.

  f2. d2.:7/fs g2.:m g2.:m c2.:7 c2.:7 f2. f2.
  f2. f2./ef bf2./d bf2.:m f2./a bf2. f2./a bf2.
  f2./a f2./c bf2. f2./a bf2. f2./c f2./a bf2 c4:7
  f2. f2. f2. f2
}

refrainInternetChords = \chordmode {
  f4
  f2. fs2.:dim7 g2.:m g2.:m c2. c2.:aug f2. f2.
  a2. a2. d2.:m d2.:m  bf2. bf2. f2. f2.
  bf2. c2. f2. f2. f2. f2.

  f2. fs2.:dim7 g2.:m g2.:m c2. c2.:aug f2. f2.
  f2. f2.:7/ef bf2./d bf2. f2. bf2. f2. bf2.
  f2. f2. bf2. f2. bf2. f2. f2. bf2 c4:7
  f2. f2. f2. f2
}

refrainChords = \chordmode {
  f4
  f2. fs2.:dim7 g2.:m g2.:m c2.:7 c2.:aug7 f2. f2.
  a2. a2. d2.:m d2.:m  bf2. bf2. f2. f2.
  bf2. c2.:7 f2. f2. f2. f2.

  f2. fs2.:dim7 g2.:m g2.:m c2.:7 c2.:aug7 f2. f2.
  f2. f2.:7/ef bf2./d bf2. f2. bf2. f2. bf2.
  f2. f2. bf2. f2. bf2. f2. f2. bf2 c4:7
  f2. f2. f2. f2
}

introMelody = \relative f' {
  \time 3/4
  \key f \major
  \clef \whatClef
  \tempo "Waltz" 4 = 180

  \mark \markup { "Intro" }

  <f, a c>2.~ | <f a c>2 r8 <a c f>8 | <a c f>2.~ | <a c f>2 r8 <f' a c>8 |
  <f a c>2.~ | <f a c>2 r8 <a c f>8 | <a c f>2.~ |
  \partial 2 <a c f>2 |

  \bar "||"
  \break
}

refrainMelody = \relative f' {
  \time 3/4
  \key f \major
  \clef \whatClef

  \mark \markup { "Verse" }

  \partial 4 d4 |
  c2 c4 | c2~ c8 c8 | c4 bf2 | r2 d4 |
  c2 d4 | c2~ c8 bf8 | a2. | r2 c4 |
  \break
  cs2 bf4 | a2 g4 | g4 f2 | r2 d'4 |
  d2 bf4 | f2 d'4 | c2. | r2 d4 |
  \break
  c2 bf4 | a2 g 4 | f2. | r2. | r2. | 
  r4 a4 bf4 | 
  \bar "||"
  \break

  \mark \markup { "Chorus" }

  c2 c4 | c2 c4 | c2 bf4 |
  r4 d4. d8 | c2 d4 | c2 bf4 | a2. | r2 c4 |
  \break
  c8 a8 f2 | d'2 c4 | c4 bf2 | c2 bf4 |
  a8 g8 f4 r4 | f2 d4 | c2 r4 | f2 d4 |
  \break
  c4 r4 c'4 | a8 g8 f4 r4 | f2 d4 | c2 r4 |
  f2 d4 | c4 r4 c'4 | a8 g8 f4 r4 | bf2 g4 |
  \break
  f2.~ | f2 r4 | r2. |
  \partial 2 r2 |
  

  \bar "|."
}

\include "paper.ily"

\header {
  title = "Innocent When You Dream"
  subtitle = \instrument
  composer = "Tom Waits"
  copyright = "© 1987 Jalma Music, Inc."
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
	\set chordChanges = ##f
	\transpose f \whatKey {
	  \introChords
	}
      }
    }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose f \whatKey {
	  \introMelody
	  }
	}
    }
  >>
  \layout { ragged-right = ##f }
}

\score {
  <<
    { \context ChordNames 
      {
	\override ChordName.font-size = #+3
	\override ChordName.font-series = #'bold
	\set chordChanges = ##f
	\transpose f \whatKey {
	  #(if sheetChords
	    #{ \refrainSheetChords #}
	    (if internetChords
	     #{ \refrainInternetChords #}
	     #{ \refrainChords #}
	    ) )
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
      \refrainLyrics
    }
  >>
  \layout { }
}

\markup {
  \column {
    \line { \large { I made a golden promise, that we would never part. } }
    \line { \large { I gave my love a locket and then I broke her heart, } }
    \line { \large { and then I broke her heart. } }
  } }

\markup {
  \vspace #1
}

\markup {
  \column {
    \line { \large { We're running through the graveyard and we laughed, my friends and I. } }
    \line { \large { We swore we'd be together until the day we died, } }
    \line { \large { until the day we died. } }
  } }
