
\version "2.22.0"
\language "italiano"

\header {
  title = "The black page"
  instrument = "Marimba"
  composer = "Frank Zappa"
  copyright = "15.12.2022"
  tagline = "https://www.youtube.com/watch?v=L4_6Q6Tz0Eg&ab_channel=Mewthic"
}

\paper {
  #(set-paper-size "a4landscape")
}

global = {
  \key la \minor
  \time 4/4
  \tempo 4=60
}

partition = \relative do'' {
  \global
  \set Voice.beatStructure = 1,1,1,1
  
  si4 
  fad'32 fad dod si16 la'8  ~  la16 [ \slashedGrace do8 sol16  sol8 ]
  mi16 mi8 la16  \tuplet 3/2 { sol16 do  fa, }  la8 [ \tuplet 3/2 {  mi16 r re  }  do'8 ]   ~ 
  \tuplet 5/4 { do8 \slashedGrace do8 la sol fa re } 
  dod8.
  
}

\score {
  \new Staff \with {
    instrumentName = "Synthé"
    midiInstrument = "xylophone"
  } \partition
  \layout { }
  \midi { }
}
