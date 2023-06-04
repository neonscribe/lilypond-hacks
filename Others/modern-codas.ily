%%% modern-codas.ily

%%% This is a collection of defined variables to automate the placement
%%% and appearance of modern coda directions commonly used in jazz and
%%% popular sheets. Included are symbols for segno, double segno,
%%% D.S. al Coda, D.S. al Coda 1, D.S. al Coda 2, D.S.S. al Coda 2, To
%%% Coda, To Coda 1, To Coda 2, Coda, Coda 1 and Coda 2. The accompanying
%%% "example.ly" demonstrates ways these commands may be used. Any
%%% suggestions for improvement are welcome, of course. comments can be
%%% sent to David Stocker by email: [hidden email]

%%% Known issues: 1) In the case that one of the "To Coda" directions
%%% occurs at the end of a system, the symbol appears at the beginning of
%%% the next system, requiring the use of a manual \break to force the
%%% direction to occur in the middle of a system instead. 2) in the
%%% previous case, if the "To Coda" direction occurs at the end of a
%%% line, it should be aligned such that the "Coda" glyph is
%%% right-aligned with the bar line rather than centered over it. Any
%%% ideas how to automate this behavior?


%%%%%%%%%% MODERN CODAS %%%%%%%%%%

%%%%% D.C. al Coda %%%%%

%%% text "D.C. al Coda" right-aligned

daCapo = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.C. al Coda"
  }
}

%%%%% D.S. al Coda %%%%%

%%% text "D.S. al Coda" right-aligned

dalSegno = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.S. al Coda"
  }
}

dalSegnoNoCoda = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.S."
  }
}

daCapoNoCoda = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.C."
  }
}

%%% includes the words "To Coda" before the Coda sign and centers the coda sign horizontally on the barline

textToCoda = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #0.770
  \mark
  \markup
  \line
  \general-align #Y #CENTER {
    \small
    \bold
    \italic "To Coda  "
    \musicglyph #"scripts.coda"
  }
}

%%% includes the word "Coda" after the coda sign

textCoda = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #-0.15
  \mark
  \markup
  \line
  \general-align #Y #CENTER {
    \musicglyph #"scripts.coda"
    \small
    \bold "Coda"
  }
}

%%%%% D.S. al Coda 1 %%%%%

%%% text "D.S. al Coda 1" right-aligned

dalSegnoI = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.S. al Coda 1"
  }
}

%%% includes the words "To Coda 1" before the Coda sign and centers the coda sign horizontally on the barline

textToCodaI = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #0.80
  \mark
  \markup
  \line
  \general-align #Y #CENTER {
    \small
    \bold
    \italic "To Coda 1  "
    \musicglyph #"scripts.coda"
  }
}

%%% includes the word "Coda 1" after the coda sign

textCodaI = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #-0.3375
  \mark
  \markup
  \line
  \general-align #Y #CENTER {
    \musicglyph #"scripts.coda"
    \small
    \bold "Coda 1"
  }
}

%%%%% D.S. al Coda 2 %%%%%

%%% text "D.S. al Coda 2" right-aligned

dalSegnoII = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.S. al Coda 2"
  }
}

%%% includes the words "To Coda 2" before the Coda sign and centers the coda sign horizontally on the barline

textToCodaII = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #0.80
  \mark
  \markup
  \line
  \general-align #Y #CENTER {
    \small
    \bold
    \italic "To Coda 2  "
    \musicglyph #"scripts.coda"
  }
}

%%% includes the word "Coda 2" after the coda sign

textCodaII = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #-0.3375
  \mark
  \markup
  \line
  \general-align #Y #CENTER {
    \musicglyph #"scripts.coda"
    \small
    \bold "Coda 2"
  }
}

%%%%% D.S.S. al Coda 2 %%%%%

%%% text "D.S.S. al Coda 2" right-aligned

dalSegnoSegnoII = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark
  \markup {
    \small
    \bold
    \italic "D.S.S. al Coda 2"
  }
}

%%% Segno sign

segnoSign = {
  \mark
  \markup {
    \musicglyph #"scripts.segno"
  }
}

%%% Double Segno sign

segnoSegnoSign = {
  \mark
  \markup {
    \musicglyph #"scripts.segno"
    \hspace #0.125
    \musicglyph #"scripts.segno"
  }
}
