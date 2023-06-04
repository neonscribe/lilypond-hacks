chorusLyrics = \lyricmode {
  Count -- in' Flow -- ers On The Wall, that don't both -- er me at all.
  Play -- in' sol -- i -- taire till dawn with a deck of fif -- ty one.
  Smok -- in' cig -- a rettes and watch -- in' Cap -- tain Kan -- ga -- roo, now don't tell me
  I've noth -- in' to do.
}

verseOneLyrics = \lyricmode {
  I've been hear -- in' you're con -- cerned a -- bout my hap -- pi -- ness;
  but all that thought you're giv -- in' me is con -- science, I guess.
  If I were walk -- in' in your shoes, I would -- n't wor -- ry none.
  While you and your friends are wor -- ryin' bout me I'm hav -- in' lots of fun.
}

verseTwoLyrics = \lyricmode {
  Last night I dressed in tails, pre -- tend -- ed I was on the town;
  as long as I can dream, it's hard to slow this swing -- er down.
  So please don't give a thought to me, I'm real -- ly do -- in' fine.
  You can al -- ways find me here and hav -- in' quite a time.
}

verseThreeLyrics = \lyricmode {
  It's good to see you, I must go, I know I look a fright;
  any -- way, my eyes are not ac -- cus -- tomed to this light.
  And my shoes are not ac -- cus -- tomed to this hard con -- crete
  So I must go back to my room and make my day com -- plete.
}

verseChords = \chordmode {
  bf1 bf1 g1:m g1:m c1:7 c1:7 f1:7 f1:7
  bf1 bf1 g1:m g1:m c1:7 c1:7 f1:7 f1:7
}

chorusChords = \chordmode {
  g1:m g1:m g1:m g1:m g1:m g1:m g1:m g1:m g1:m g1:m
  ef1 ef1 ef1 ef1 f1 ef1 f1 f1
}

verseMelody = \relative g'' {
  \time 4/4
  \key bf \major
  \clef \whatClef
  \partial 2

  r4 d4 | cs8 d4 c4 bf4. | cs8 d4 c8~ c4 bf4 | d4 g,4 g8 fs8 g8~ | g2. r8 g8 | ds'8 e4 d4 c4. |
  ds8 e4 d4 c4. | f4 f4 c4 b8 c8~ | c2 r4 r8 f8 | cs8 d4 c4 bf4. | cs8 d4 c4 bf4. |
  d8 g4. g8 fs4 g8~ | g2. r8 g8 | e8 ds8 e8 d4 c4. | e8 ds8 e8 d4 c4. | f8 d4. ef8 b4 c8~ | c2
}

chorusMelody = \relative g'' {
  \time 4/4
  \key bf \major
  \clef \whatClef
  \partial 2

  bf4 a4 | g4 d4 d4 cs8 d8~ | d2 bf'4 a4 | g4 d4 d4 cs8 d8~ | d1 | r2 bf4 a4 |
  g4 d8 d8~ d4 cs8 d8~ | d2 bf4 a4 | g4 d4 d4 cs8 d8~ | d1 | r2 d4 d4 |
  ef4 ef8 ef8~ ef4 ef4 | ef4 ef4 ef4 ef4 | r4 ef2 d8 ef8~ | ef4 d8 ef4 f4. | f1 | r4 ef4 ef8 ef4 ef8 |
  f1~ | f2
}

