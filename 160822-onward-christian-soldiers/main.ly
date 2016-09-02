\version "2.18.2"
#(set-default-paper-size "letter")
\header {
  title = "Onward, Christian Soldiers"
  subtitle = \markup { \medium \italic { Prince Rupert } }
  poet = "Sabine Baring-Gould"
  composer = "Gustav Holst, based on 17th-century marches"
  arranger = "arr. GWB"

  tagline = ""
}

global = {
  \key aes \major
  \tempo \markup { \medium "Lightly" }
  % for midi only
  % \tempo 4 = 120
}

phraseRest = { R1*4 }

verseRest = {
  \phraseRest
  \phraseRest
  \phraseRest
  \phraseRest
  \phraseRest
  \phraseRest
}

phraseSpace = { s1*4 }

verseSpace = {
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
}


UnisonNotesOne = \relative c {
  \oneVoice
  f4^\mp c f g | aes4.( bes8) aes2 | g4 f f e | f1 |
  f4 c f g | aes4.( bes8) aes2 | g4 f f e | f1 |
  g4. f8 \once \hide Slur g( aes) bes4 | ees,4.( f8) ees2 | aes4 aes \once \hide Slur bes8( c) bes4 | aes 1 |
  g4. f8 \once \hide Slur g( aes) bes4 | ees,2 aes | g4 f f e | f1 |
  aes4^"Refrain" ees c ees | aes2 ees |
  \voiceOne
  aes2^\markup {\halign #1 \italic "div." } bes | \once \hide Slur c8( des) c4 bes2 |
  aes4 ees c ees | aes2 ees |
  \once \hide Slur aes8( bes) aes4 bes4. aes8 | aes1 \bar "||" \break
}

UnisonNotesTwo = \relative c {
  \phraseSpace
  \phraseSpace
  \phraseSpace
  \phraseSpace
  s1*2 |
  \voiceTwo
  f2 g | aes4 aes bes2 |
  aes4 ees c ees | aes2 ees |
  f4 f ees4. aes8 | aes1 |
}

UnisonLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT

  \once \override LyricText.self-alignment-X = #0.5
  "1. On" -- ward, Christ -- ian | sol -- diers! | march -- ing as to | war, |
  with the cross of | Je -- sus | go -- ing on be -- | fore. |
  Christ the ro -- yal | Mas -- ter | leads a -- gainst the | foe; |
  for -- ward in -- to | bat -- tle, | see, his ban -- ners | go:

  On -- ward, Christ -- ian | sol -- diers, | march -- ing | as to war, |
  with the cross of | Je -- sus | go -- ing on be -- | fore! |
}

firstAltoMusic =
  \relative c' {
    \voiceOne
    \verseRest
    f4^\markup { \italic "fauxbourdon" } c f e | f4.( g8) aes4( c) | bes aes g g | f1 |
    g4 aes c bes | aes2 ees4( f) | g aes g g | f1 |
    bes4. aes8 \once \hide Slur bes( aes) g4 | g4.( aes8) g2 | aes4 aes g g | aes1 |
    bes4. aes8 \once \hide Slur bes( aes) g4 | g2. c4 | bes aes g g | f1 |
    c1~^"Refrain" | c4 bes c des | ees( des) f( ees) | g f aes( g) |
    aes2. aes4 | c bes aes g | f f f4. aes8 | aes1 \bar "||"\pageBreak

    f4^\markup{ \dynamic f \italic { non troppo }} c f g | aes4.( bes8) aes2 | g4 f f e | f1 |
    f4 c f g | aes4.( bes8) aes2 | g4 f f e! | f1 |
    g4. f8 \once \hide Slur g( aes) bes4 | ees,4.( f8) ees2 | aes4 aes \once \hide Slur bes8( c) bes4 | aes1 |
    g4. f8 \once \hide Slur g( aes) bes4 | ees,2 aes2 | g4 f f e | f1 |
    aes4^"Refrain" ees c ees | aes2 ees | aes bes | \once \hide Slur c8( des) c4 bes2 |
    aes4 ees c ees | aes2 ees | \once \hide Slur aes8( bes) aes4 bes4. aes8 | aes1 \bar "|."
  }

firstAltoTopRhythm = {
  \verseRest

  \phraseRest
  \phraseRest
  c4. c8 c( c) c4 | c4.( c8) c4 c4 | s1*2
  c4. c8 c( c) c4 | c4 c c c | s1*2
  \phraseRest
  \phraseRest

  \phraseRest
  \phraseRest
  c4. c8 c( c) c4 | c4.( c8) c2 | s1*2
  c4. c8 c( c) c4 | c2 c2 | s1*2
  \phraseRest
  \phraseRest
}

firstAltoTopLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT

  we are not di -- | vi -- ded, __ _
  one in faith and | hope, __ _ _ and

  glo -- ry, laud, and | ho -- nor |
  this through count -- less | ag -- es
}

secondAltoMusic = \relative c' {
  \voiceTwo
  \verseRest
  f4 c c bes | c2 f4( ees) | des des des c | c2( bes) |
  des4 c ees des | c2 c4( d) | e c c c | aes1 |
  ees'2 ees | ees4 bes ees des | ees c ees ees | c1 |
  ees2 ees | ees4 bes ees \once \hide Slur f8( ees) | des4 des c c | f,1 |
  aes1~ | aes4 g aes bes | ees( des) f( ees) | g f des2 |
  c2. c4 | ees des c bes | c c des4. c8 | c1 |

  f4 c c bes | c2 f4( ees) | des des des c | c2( bes) |
  des4 c ees des | c2 c4( d) | e c c c | c1 |
  ees2 ees | ees4 bes ees des | ees4 c ees ees | ees1 |
  ees2 ees | ees4 bes ees \once \hide Slur f8( ees) | des4 des c c | f1 |
  aes4 ees c ees | aes2 ees2 | ees4( des) f( ees) | g f aes( g) |
  aes4 ees c ees | aes2 ees2 | ees4 \once \hide Slur ees8( f) g4. ees8 | ees1 |
}

tenorMusic = \relative c {
  \voiceOne
  \verseRest

  f4 c f g | aes4.( bes8) aes2 | g4 f f e | f1 |
  f4 c f g | aes4.( bes8) aes2 | g4 f f e | f1 |
  g4. f8 \once \hide Slur g8( aes) bes4 | ees,4.( f8) ees2 | aes4 aes \once \hide Slur bes8( c) bes4 | aes1 |
  g4. f8 \once \hide Slur g8( aes) bes4 | ees,2. aes4 | g4 f f e | f1 |
  aes4 ees c ees | aes2 ees | aes2 bes | \once \hide Slur c8( des) c4 bes2 |
  aes4 ees c ees | aes2 ees | \once \hide Slur aes8( bes) aes4 bes4. aes8 | aes1 |

  f4 c f e | f4.( g8) aes4( c) | bes aes g g | f1 |
  g4 aes c bes | aes2 ees4( f) | g aes g g | aes1 |
  bes4. aes8 \once \hide Slur bes( aes) g4 | g2 g | aes4 aes g g | c1 |
  bes4. aes8 \once \hide Slur bes( aes) g4 | g2 c | bes4 aes g g | f1 |
  aes4 ees c ees | aes2 ees2 | aes des | c4 c des2 |
  aes4 ees c ees | aes2 bes | \once \hide Slur c8( des) c4 des4. c8 | c1 |
}

tenorTopRhythm = \relative c' {
  \verseRest

  \phraseRest
  \phraseRest
  c4. c8 c4 c4 | c2 c4 c | s1*2
  c4. c8 c4 c4 | c4 c c c | s1*2
  \phraseRest
  \phraseRest

  \phraseRest
  \phraseRest
  c4. c8 c4 c4 | c2 c2 | s1*2
  c4. c8 c4 c4 | c2 c2 | s1*2
  \phraseRest
  \phraseRest
}

tenorTopLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT

  we are not di -- vi -- ded, __ _
  one in faith and | hope, __ _ _ and

  glo -- ry, laud, and | ho -- nor |
  this through count -- less | ag -- es
}


bassMusic = \relative c {
  \voiceTwo
  \verseRest
  f4 c aes g | f2 f | g4 aes bes c | des1 |
  bes4 c des es | aes,2 aes | c4 aes c c | f1 |
  ees2 ees | ees4 des c bes | c aes ees' ees | aes1 |
  ees2 ees | ees4 des c aes | bes bes c c | f1 |
  aes4 ees c ees | aes2 ees | f2 g | aes4 aes bes2 |
  aes4 ees c ees | aes2 ees | f4 f des4. aes8 | aes1 |

  f'4_\markup{ \dynamic f \italic { non troppo }} c aes g | f2 f | g4 aes bes c | des1 |
  bes4 c des ees | aes2 aes, | c4 aes c c | f1 |
  ees2 ees | ees4 des c bes | c aes ees' ees | aes1 |
  ees2 ees | ees4 des c aes | bes bes c c | f1 |
  aes4 ees c ees | aes2 ees | f2 g | aes4 aes bes2 |
  aes4 ees c ees | aes2 g2 | f4 f ees4. aes8 | aes1 |
}

bassBottomRhythm = \relative c {
  \verseRest

  \phraseRest
  \phraseRest
  c4. c8 c4 c | c4 c c c | s1*2
  c4. c8 c4 c | c4 c c c4 | s1*2
  c4 c c c | c2 c2 | s1*2
  c4 c c c | c2 c2 | s1*2

  \phraseRest
  \phraseRest
  c2 c | c4 c c c | s1*2
  c2 c | c4 c c c | s1*2
  \phraseRest
  \phraseRest

}

bassBottomLyrics = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT

  we __ _ are __ _ not di -- vi -- ded, |
  one __ _ in __ _ | faith and hope, and
  On -- ward, Christ -- ian sol -- diers,
  with the cross of Je -- sus

  glo -- ry, | laud, and ho -- nor |
  this through | count -- less ag -- es
}

rhythm = \relative c'' {
  \verseRest

  c4 c c c | c2 c2 | c4 c c c | c1 |
  c4 c c c | c2 c2 | c4 c c c | c1 |
  c4. c8 c4 c | c4 c c c | c4 c c c | c1 |
  c4. c8 c4 c | c4 c c c4 | c4 c c c | c1 |
  c1~ | c4 c c c | c2 c | c4 c4 c2 |
  c2 c4 c4 | c c c c | c4 c4 c4. c8 | c1 |

  c4 c c c | c2 c2 | c4 c c c | c2 c2 |
  c4 c c c | c2 c2 | c4 c c c | c1 |
  c4. c8 c4 c | c4 c c c | c4 c c c | c1 |
  c4. c8 c4 c | c4 c c c | c4 c c c | c1 |
  c4 c c c | c2 c2 | c2 c | c4 c c2 |
  c4 c c c | c2 c | c4 c4 c4. c8 | c1 |

}

theWords = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT

  \once \override LyricText.self-alignment-X = #CENTER
  "2. Like" a might -- y | ar -- my __ | moves the Church of | God; __ |
  bro -- thers, we are | tread -- ing __ | where the saints have | trod; |
  we __ _ are __ _ not di -- vi -- ded, | all one bo -- dy | we,
  one __ _ in __ _ | faith and hope, and | one in cha -- ri --  | ty: |
  On -- ward, Christ -- ians, | march -- ing | as to war,  |
  with __ _ the cross of Je -- sus | go -- ing on be -- | fore! |

  \once \override LyricText.self-alignment-X = #0.5
  "3. On" -- ward, then, ye | peo -- ple, | join our hap -- py | throng, _ |
  blend with ours your | voi -- ces | in the tri -- umph | song; |
  glo -- _ ry, __ _ | laud, and ho -- nor | un -- to Christ the | King; |
  this __ _ through __ _ | count -- less ag -- es | men and an -- gels | sing: |
  On -- ward, Christ -- ian | sol -- diers, | march -- ing | as to war, |
  with the cross of | Je -- sus | go -- ing on be -- | fore! |
}

\book {
\score {
  <<
    \new Staff <<
      \clef "bass"
      \new Voice = "UnisonVoiceOne" << \global \UnisonNotesOne >>
      \new Voice = "UnisonVoiceTwo" << \global \UnisonNotesTwo >>
      \new Lyrics \lyricsto "UnisonVoiceOne" \UnisonLyrics
    >>
    \new ChoirStaff <<
      \new Staff = "altoStaff" <<
        \new Voice = "alto1" { << \global \firstAltoMusic >> }
        \new Voice = "alto2" { << \global \secondAltoMusic >> }
        \new NullVoice = "rhythm" \rhythm
        \new NullVoice = "firstAltoTopVoice" { << \global \firstAltoTopRhythm >> }
      >>
      \new Lyrics \with { alignAboveContext = #"altoStaff" } {
        \lyricsto "firstAltoTopVoice" \firstAltoTopLyrics
      }


      \new Lyrics {
        \lyricsto "rhythm" \theWords
      }

      \new Staff = "tbStaff" <<
        \clef bass
        \new Voice = "tenors" { << \global \tenorMusic >> }
        \new Voice = "basses" { << \global \bassMusic >> }
        \new NullVoice = "tenorTopVoice" { << \global \tenorTopRhythm >> }
        \new NullVoice = "bassBottomVoice" { << \global \bassBottomRhythm >> }
      >>
      \new Lyrics \with { alignAboveContext = #"tbStaff" } {
        \lyricsto "tenorTopVoice" {
          \tenorTopLyrics
        }
      }
      \new Lyrics {
        \lyricsto "bassBottomVoice" {
          \bassBottomLyrics
        }
      }
    >>
  >>
  \layout {
   indent = #0
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    \context { % lyrics avoid barlines
      \Lyrics
      \consists "Bar_engraver"
      \consists "Separating_line_group_engraver"
      \hide BarLine
    }
  }

  % \midi { }
}
\paper {
  % annotate-spacing = ##t
 % system-system-spacing = #'((basic-distance . 0.1) (padding . 4))
  ragged-bottom = ##f
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