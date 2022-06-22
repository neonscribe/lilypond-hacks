%% -*- Mode: LilyPond -*-

\include "jazz-chords.ily"
\include "english.ly"
\version "2.18.2"

refrainLyricsP = \lyricmode {
  Um can -- ti -- nho,_um vi -- o lão
  es -- te_a -- mor, u -- ma __ can -- ção
  Pra fa -- zer fe -- liz a quem se a -- ma __
  Mui -- ta cal -- ma pra pen -- sar __
  E ter tem -- po pra so -- nhar
  Da ja -- ne -- la vê -- se_o 
  Cor -- co -- va -- do_O Re -- den -- tor, __ que lin -- do!
  
  Que -- ro_a vi -- da sem -- pre_as -- sim
  Com vo -- cê per -- to __ de mim
  A té __ o a -- pa -- gar da ve -- lha cha -- ma __
  E eu que e -- ra tris -- te __
  Des -- cren -- te des -- se mun -- do
  Ao en -- con -- trar vo -- cê
  Eu co -- nhe -- ci
  O que_é fe -- li -- ci -- da -- de, Meu a -- mor__
}

refrainLyricsE = \lyricmode {
  Qui -- et nights of qui -- et stars,
  qui -- et chords from my __ gui -- tar
  float -- ing on the si -- lence that sur -- rounds us. __
  Qui -- et thoughts and qui -- et dreams, __
  qui -- et walks by qui -- et streams,
  and a win -- dow look -- ing on the moun -- tains and the sea. __
  How love -- ly!
  This is where I want __ to be.
  Here, with you so close __ to me
  un -- til __ the fi -- nal flick -- er of life's em -- ber. __
  I who was lost and  lone -- ly, __
  be -- lie -- ving life was on -- ly __
  a bit -- ter tra -- gic joke,
  have found with you, __
  the mean -- ing of ex -- ist -- ence. 
  Oh, my love. __
}

refrainChordsBossaSongbook = \chordmode {
  s2 s1
  a1:m6 af1:dim7.13- g1:m6 c1:9
  f1:maj7 f1:m6 e1:m7 a1:m7 a1:m6 af1:dim7.13-
  

  a1:m6 a1:m6 af1:dim7.13- af1:dim7.13-
  g1:m7 c1:sus9 f1:maj7 f1:6
  f1:m7 bf1:9 e1:7.9- a1:7.9-
  a1:m6 a1:m6 bf1:9 bf1:9

  a1:m6 a1:m6 af1:dim7.13- af1:dim7.13-
  g1:m7 c1:sus9 f1:maj7 f1:6
  f1:m7 bf1:9 e1:m7 a1:m7
  d1:m7 g2:sus9 g2:7.9- e1:m7 a1:7.9-.13-
  d1:m7 g2:sus9 af2:dim7 a1:m6 a1:m6
}

refrainChordsRealBookSixth = \chordmode {
  d1:7/a d1:7/a af1:dim7 af1:dim7
  g1:m7 c1:7 f2:dim7 f2:maj7 f1:maj7
  f1:m7 bf1:7 e1:m7 a1:7.5+
  d1:7 d1:7 d1:m7 af1:dim7

  d1:7/a d1:7/a af1:dim7 af1:dim7
  g1:m7 c1:7 f2:dim7 f2:maj7 f1:maj7
  f1:m7 bf1:7.5- e1:m7 a1:m7
  d1:7 g1:7.9- e1:m7 a1:7.5+

  d1:m7 g1:7 c1:6
  \set chordNameFunction = #begin-end-parenthesis-ignatzek-chord-names
  af1:7
  \unset chordNameFunction
}

refrainChords = \refrainChordsBossaSongbook

refrainMelody = \relative f' {
  \time 2/2
  \key c \major
  \clef \whatClef
  \tempo "Medium Bossa"

  \mark \markup { "Intro" }
  
    <<
      \new Voice
      { \voiceTwo
	\partial 2 \tuplet 3/2 {a4 b4 c4 } |
	b8 a4 e4 d4 e8~ | e1~ |
	e8 b4 e4 ef4 d8~ |  d2 \tuplet 3/2 { g4 a4 bf4 } |
	a8 g4 c4 a4 g8~ | g4 a4~ \tuplet 3/2 { a4 d,4 c4 } |
	d2. c4 | d2 e2~ |
	e2 \tuplet 3/2 { g4 d4 c4 } | d2 \tuplet 3/2 { c4 b4 c4 } |
	b2. d4 |

	\bar "||"
	\pageBreak
	\set Score.currentBarNumber = #1
  
	\bar ".|:"

	\mark \markup{ \box "A" }

	c4 s4 s2 |
      }
      { \voiceOne
	\partial 2 s2 |
	s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
	r8 e4 d8 e8 d4 e8~ |
	}
    >>
  \oneVoice

  e8 d8 e2. |
  r8 e4 d8 e8 d4 e8~ | e8 d8 e2. |
  \break
  r8 d4 c8 d8 c4 d8~ | d8 c4 f4 e4 e8~ |
  e4. d8~ d2~ | d2. r4 |
  \break
  r8 g4 f8 g8 f4 g8~ | g8 f4 g8~ g2 |
  r8 f4 e8 f8 e4 f8~ | f8 e8 f2. |
  \break
  r8 e4 d8 e8 d4 e8~ | e8 d4 e4 d8 f4~ |
  f8 e4 f8 e4 f4~ | f8 e4 d4 c4. |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r8 e4 d8 e8 d4 e8~ | e8 d4 e8~ e2 |
  r8 e4 d8 e8 d4 e8~ | e8 d8 e4. g4 d8~ |
  \break
  d2 \tuplet 3/2 { c4 d4 c4 } | d8 c4 f4 e4 e8~ |
  e4. d8~ d2~ | d2. r4 |
  \break
  r8 c'4 bf4 af8 g8 f8 | e4. d8~ d2 |
  r4 r8 b'8 a8 g8 f8 e8 | d4. c8~ c2 |
  \break
  r4 r8 a'8 g8 f8 e8 d8 | c8 b4 c4 d4 g8~ |
  g1~ | g2. r4 |
  \break
  r4 r8 a8 g8 f8 e8 d8 | c8 b4 c4 d4 c8~ |
  c1 | r1 |

  \bar ":|."
}

\paper {
  indent = 0.
  tagline = ""
  ragged-bottom = ##t
  
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
  title = "Corcovado (Quiet Nights of Quiet Stars)"
  subtitle = \instrument
  poet = "Gene Lees"
  composer = "Antonio Carlos Jobim"
  copyright = "© 1960 Jobim Music Ltda."
}

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "predefined-guitar-fretboards.ly"

#(define (text-interface::print-X-centered grob)
  (ly:stencil-aligned-to (ly:text-interface::print grob) X CENTER ))

\include "fret-diagrams.ily"

diagrams = \chordmode {
  a:m6 s af:dim7.13- s g:m6 s c:9 s f:maj7 s f:m6 s e:m7
  a:m7 g:m7 c:sus9 f:6 f:m7 s bf:9 s
  e:7.9- s a:7.9- s d:m7 s g:sus9 s g:7.9- a:7.9-.13- s af:dim7
}

\markup {
  \fill-line {
    \score
    {
      <<
	\set Score.barNumberVisibility = ##f
	\new ChordNames
	<< \diagrams >>
	\new FretBoards
	<< \diagrams >>
      >>
      \layout {
        \context {
          \ChordNames
	  \override ChordName #'font-size = #+3
	  \override ChordName #'font-series = #'bold
          \override ChordName.stencil = #text-interface::print-X-centered
        }
        \context {
          \FretBoards
	  \override FretBoard.fret-diagram-details.number-type = #'arabic
	  \override FretBoard.size = #'1.5
          \override FretBoard.align-dir = #CENTER
        }
      }
    }
  }
}

\markup {
  % Leave a gap after the chords
  \vspace #3
}

emphasize = {
  \override Lyrics.LyricText.font-shape = #'italic
}

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName #'font-size = #+3
      \override ChordName #'font-series = #'bold
      \set chordChanges = ##f
     \transpose c \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff {
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose c \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new Lyrics \lyricsto "voiceMelody"
    {
    <<
      { \refrainLyricsP }
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\emphasize \refrainLyricsE }
    >>
    }
  >>
  \layout {  }
}

\markup {
  % Leave a gap before the chord chart
  \vspace #2
}

