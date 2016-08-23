\version "2.18.2"
#(set-default-paper-size "letter")
\header {
  title = "Long did I toil"
  subtitle = \markup { \medium \italic { Oxenbridge } }
  poet = "Henry Francis Lyte"
  composer = "Martin Shaw"

  tagline = ""
}

phraseSpace = {
  \time 3/4
  s2.*3
  \time 4/4
  s1
}

phraseRest = {
  \time 3/4
  R2.*3
  \time 4/4
  R1
}

verseSpace = {
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
}

verseRest = {
  \phraseRest
  \phraseRest
  \phraseRest
  \phraseRest
  \phraseRest
  \phraseRest
}


global = {
  \key f \major
  % for midi only
  % \tempo 4 = 100
  \override Staff.TimeSignature #'stencil = ##f
  \verseSpace \break
  \verseSpace \break
  \verseSpace \break
  \verseSpace \break
}

melodyButOne = {
  f4 g   | a2 g4   | bes2 a4 | g f g2 \bar "||"
  g4 a bes | c2 bes4 | a2 g4   | f a g2 \bar "||"
  c,4 f g  | a2 g4   | bes2 a4 | g f g2 \bar "||"
  g4 a bes | c2 bes4 | a2 g4   | f a g2 \bar "||"
  bes4 a g | a2 f4   | d2 c4   | d f g2 \bar "||"
  bes4 a g | a2 f4   | d2 c4   | d g f2 \bar "||"
}

UnisonNotes = \relative c {
  \clef "bass"
  c4^\p \melodyButOne
  \verseRest
  \verseRest
  \verseRest
}

UnisonLyrics = \lyricmode {
  "1. Long" did I | toil and | know no | earth -- ly rest, |
  far did I | roam and | found no | cer -- tain home |
  at last I | sought them | in his | shelt'r -- ing breast, |
  who opens his | arms and | bids the | wear -- y come |
  with him I | found a | home a | rest di -- vine, |
  and since then | I am | his and | he is mine.
}

firstAltoFBphraseOneSuffix = {
  f4 e | f2 g4 | f4.( g8) a4 | bes a bes2
}

firstAltoFBphraseOneSuffixBreath = {
  f4 e | f2 \breathe g4 | f4.( g8) a4 | bes a bes2
}


firstAltoFBphraseTwo = {
  e,4 f f | f2 d4 | f2 e4 | f f e2
}

% slight rhythmic variations
verseThreeMelodyButOne = {
  f4 g   | a2 g4   | bes2 a4 | g f g2  \bar "||"
  g4 a bes | c2 bes4 | a4 g2   | f4 a g2 \bar "||"
  c,4 f g  | a2 g4   | bes2 a4 | g f g2  \bar "||"
  g4 a bes | c2 bes4 | a2 g4   | f a g2  \bar "||"
  bes4 a g | a2 \breathe f4   | d4 c2 \breathe  | d4 f g2 \bar "||"
  bes4 a g | a2 f4   | d2 \breathe c4   | d g f2  \bar "||"
}


firstAltoMusic = \relative c' {
  \voiceOne
  \verseRest

  f4^\markup { \italic "fauxbourdon" } \firstAltoFBphraseOneSuffix |
  \firstAltoFBphraseTwo |
  c4 \firstAltoFBphraseOneSuffixBreath |
  \firstAltoFBphraseTwo |
  f4 f e | f2 \breathe a4 | f2 \breathe f4 | f f e2 |
  f4 f e | f2 a4 | f2 f4 | bes4 g a2 |

  \relative c' { c4^\f \verseThreeMelodyButOne }

  \oneVoice
  \relative c' {
    c4^\markup { \dynamic pp { Altos} \italic {8vb ad lib.} }
    f4 g   | a2 g4   | bes2 a4 | g f g2  \bar "||"
    g4 a bes | c2 bes4 | a2 g4   | f4 a g2 \bar "||"
    c,4^\markup{\italic {cresc. poco a poco}} f g  | a2 g4   | bes2 a4 | g f \slurDashed g2(  \bar "||"
    g4) a bes | c2 bes4 | a4 g2   | f4 a g2  \bar "||"
  }

  \voiceOne
  \relative c'' {
    << { d4^\markup{Altos div. \italic { à } 3} c c   | a2 f4 | f2 f4 | f f g2 \bar "||" }
       { bes4 a g | f2 s4 | d2 c4 | d d e2 } >>

    << { d'4 c c   | a2 f4 | f2 f4 | f g a2 \bar "|."  }
       { bes4 a g | f2 s4 | d2 c4 | d e f2 } >>
  }
}


secondAltoFBphraseOneSuffix = {
  c4 c | c2 c4 | f2 e4 | d4 d d2 |
}

secondAltoFBphraseTwo = {
  c4 c d | c2 d4 | c2 c4 | c4 c c2 |
}

secondAltoHphraseOneSuffix = {
  \secondAltoFBphraseOneSuffix
}

secondAltoHphraseTwo = {
  e4 f f | f2 d4 | f4 e2 | f4 f e2
}

secondAltoHphraseFour = {
  e4 f f | f2 d4 | f2 e4 | f4 f e2
}


secondAltoMusic = \relative c' {
  \voiceTwo
  \verseRest

  a4 \secondAltoFBphraseOneSuffix |
  \secondAltoFBphraseTwo |
  c4 \secondAltoFBphraseOneSuffix |
  \secondAltoFBphraseTwo |
  d4 c c | c2 c4 | bes2 c4 | bes a c2 |
  d4 c c | c2 c4 | bes2 c4 | d e c2 |

  a4 \secondAltoHphraseOneSuffix |
  \secondAltoHphraseTwo |
  c4 \secondAltoHphraseOneSuffix |
  \secondAltoHphraseFour |
  f4 f e | f2 c4 | bes4 c2 | bes4 a c2 |
  d4 c c | c2 c4 | bes2 c4 | d e f2 |

  \oneVoice
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace

  \voiceTwo
  f4 f e | c2 c4 | bes2 a4 | bes a c2 |
  f4 f e | c2 c4 bes2 a4 | bes c c2 |
}

tenorMusic = \relative c {
  \voiceOne
  \verseRest

  c4 \melodyButOne

  f4 f e | f2 g4 | f4.( g8) a4 | bes a bes2 |
  c4 c d | c2 g4 | c4 c2 | c4 c c2 |
  c,4 f e | f2 g4 | f4.( g8) a4 | bes a bes2 |
  c4 c d | c2 g4 | c2 c4 | c4 c c2 |
  d4 c c | c2 \breathe a4 | f4 f2 \breathe | f4 f e2 |
  f4 f e | f2 a4 | f2 \breathe f4 | bes4 g a2 |

  \oneVoice
  \relative c { c4_\pp
    f4 g   | a2 g4   | bes2 a4 | g f g2  \bar "||"
    g4 a bes | c2 bes4 | a2 g4   | f4 a g2 \bar "||"
    c,4_\markup{\italic {cresc. poco a poco}} f g  | a2 g4   | bes2 a4 | g f \slurDashed g2(  \bar "||"
    g4) a bes | c2 bes4 | a4 g2   | f4 a g2  \bar "||"
  }

  \voiceOne
  \relative c' {
    << d4 bes >> c4 c | a2 a4 | f2 f4 | f f << g2 e >> |
    << d'4 bes >> c4 c | a2 a4 | f2 f4 | f << g e >> << a2 f >> |
  }
}

bassFBphraseOneSuffix = {
  \relative c { a4 c | f2 e4 | d4.( e8) f4 | g4 d g2 }
}

bassFBphraseOneSuffixBreath = {
  \relative c { a4 c | f2 \breathe e4 | d4.( e8) f4 | g4 d g2 }
}


bassFBphraseTwo = {
  \relative c { c4 f bes | a2 g4 | f2 c4 | a4 f c'2 }
}

bassHphraseOneSuffix = {
  \bassFBphraseOneSuffix
}

bassHphraseTwo = {
  \relative c { c4 f bes | a2 g4 | f4 c2 | a4 f c'2 }
}

bassHphraseFour = {
  \bassFBphraseTwo
}

bassMusic = \relative c {
  \voiceTwo
  \verseRest

  f,4 \bassFBphraseOneSuffix |
  \bassFBphraseTwo |
  c'4 \bassFBphraseOneSuffixBreath |
  \bassFBphraseTwo |
  bes4 f' c | f2 \breathe f4 | bes,2 \breathe a4 | bes d c2 |
  bes4 f' c | f2 f,4 | bes2 a4 | bes c f,2 |

  \once \override DynamicText.self-alignment-X = #4
  f4_\f
  \bassHphraseOneSuffix |
  \bassHphraseTwo |
  c'4 \bassHphraseOneSuffix |
  \bassHphraseFour |
  bes4 f' c | f2 f4 | bes,4 a2 | bes4 d c2 |
  bes4 f' c | f2 f,4 | bes2 a4 | bes c f,2 |

  \oneVoice
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace

  \voiceTwo
  \relative c {
    << { f4 a g }
       { bes,4 f' c } >> |
    f2 f4 |
    << { d2 c4 | d }
       { bes2 a4 | bes } >>
    d4 c2 |

    << { f4 a g }
       { bes,4 f' c } >> |
    f2 << f4 f, >> |
    << { d'2 c4 | d }
       { bes2 a4 | bes } >>
    c4
    << c2 f,>> |
  }
}


rhythm = \relative c'' {
  \verseRest
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |

  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c4 c2 | c4 c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c4 c2 | c4 c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |

  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c4 c2 | c4 c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
  c4 c c | c2 c4 | c2 c4 | c c c2 |
}

theWords = \lyricmode {
  "2. The" good I | have is | from his | stores sup -- plied |
  the ill is | on -- ly | what he | deems the best |
  he for my | friend, I'm | rich with | nought be -- side |
  and poor with -- | out him | though of | all pos -- sest |
  chan -- ges may | come, I | take, or | I re -- sign |
  con -- tent while | I am | his and | he is mine |

  "3. What" e'er may | change, in | him no | change is seen |
  a glo -- rious | sun that | wanes not | nor de -- clines |
  a -- bove the | clouds and | storms he | walks ser -- ene |
  and on his | peo -- ples | in -- ward | dark -- ness shines |
  All may de -- | part, I | fret not, | nor re -- pine |
  while I my | sav -- iour's | am, and | he is mine |

  "4. While" here, a -- | las! I | know but | half his love |
  but half per -- | ceive him | and but | half a -- dore |
  but when I | meet him | in the | realms a -- bove |
  I hope to | love him | bet -- ter, | praise him more |
  and feel, and | tell a -- | mid the | choir di -- vine |
  now ful -- ly | I am | his and | he is mine.

}

\book {
\score {
  <<
    \new Voice = "UnisonVoice" << \global \UnisonNotes >>
    \new Lyrics \lyricsto "UnisonVoice" \UnisonLyrics


    \new ChoirStaff <<
      \new Staff = "altoStaff" <<
        \new Voice = "alto1" { << \global \firstAltoMusic >> }
        \new Voice = "alto2" { << \global \secondAltoMusic >> }
        \new NullVoice = "rhythm" \rhythm
      >>

      \new Lyrics = "theLyrics"

      \new Staff = "tbStaff" <<
        \clef bass
        \new Voice = "tenors" { << \global \tenorMusic >> }
        \new Voice = "basses" { << \global \bassMusic >> }
      >>
      \context Lyrics = "theLyrics" \lyricsto "rhythm" \theWords
    >>
  >>
  \layout {
    indent = #0
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    %\context { % lyrics avoid barlines
    %  \Lyrics
    %  \consists "Bar_engraver"
    %  \consists "Separating_line_group_engraver"
    %  \hide BarLine
    %}
  }

  % \midi { }
}
\paper {
  % print page numbers centered at the bottom
  print-page-number = ##t
  print-first-page-number = ##t
  oddHeaderMarkup = \markup \fill-line { " " }
  evenHeaderMarkup = \markup \fill-line { " " }
  oddFooterMarkup = \markup { \fill-line {
    \fontsize #1 \on-the-fly #print-page-number-check-first
    \fromproperty #'page:page-number-string } }
  evenFooterMarkup = \markup { \fill-line {
    \fontsize #1 \on-the-fly #print-page-number-check-first
    \fromproperty #'page:page-number-string } }
}

}