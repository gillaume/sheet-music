\version "2.22.0"
\include "italiano.ly"
global = {
  \key si \major
  \time 3/2
}

\header {
  title = "Debussy: Images, Books 1 & 2 (Bavouzet, Thibaudet)"
  composer = "Debussy"
  tagline = \markup {
    \line { https://www.youtube.com/watch?v=3VDUGu8NBmA&ab_channel=AshishXiangyiKumar }
    \center-column { a bbb c } 
  }
}


rightOne = \relative do'' {
  \global
  red,4\(\pp sold fad2 ~ \autoBeamOff fad8 red \autoBeamOn \tuplet 3/2 { dod red fad }
  sold8.. si32 lad4 dod2 lad\)
  r4 lad8\(\< si \tuplet3/2 { sold8 lad fad } red4 fad lad\! ~
  lad\> \tuplet 3/2 { dod8 lad si } \tuplet 3/2 { sold lad fad } red4 dod lad\)\!
  sold'4\rest\p \tuplet 3/2 { sold'8\( sold si } \autoBeamOff si sold \autoBeamOn \tuplet 3/2 { sold8 sold si } si sold sold4\)
  sold,4\rest \tuplet 3/2 { red'8\( red fad } \autoBeamOff fad8 red \autoBeamOn \tuplet 3/2 { red8 red fad } fad8 red red4\)
  r4 \tuplet 3/2 { red8 dod red } sold,4 \tuplet 3/2 { sold8 fad sold } \clef bass dod,4 ~ \tuplet 3/2 { dod8 si dod } 
  red4 ~ \tuplet 3/2 { red8 dod red } \clef treble < sold, lad dodd mid lad >4_. < red' fadd lad red >_. < red fadd lad red >2 ~
  q2. si'4\rest si2\rest \clef bass
  

}

rightTwo = \relative do'' {
  \global
  s1.
  s1.
  s1.
  s1.
  
  s4 <sold si>4 <la dod> <si red> <la dod> <sold si>
  s4 <sold si>4 <la dod> <si red> <la dod> <sold si>
  s4
  < mi sold > red < la dod > \clef bass < fad sold >2 
  < mi sold > s2 s2
  s2 s2 s2
}

leftOne = \relative do' {
  \global
  s1.
  s1.
  s1.
  s1.
  sold,,1.\pp
  sold1.
  
  \stemDown sold4 s2 la'4 mi red
}

leftTwo = \relative do' {
  \global
  red,4\( sold fad2 ~ fad8 red \tuplet 3/2 { dod red fad }
  sold8.. si32 lad4 dod2 lad\)
  dod,4\rest lad'8\( si \tuplet 3/2 { sold lad fad } red4 fad lad ~
  lad \tuplet 3/2 { dod8 lad si } \tuplet 3/2 { sold lad fad } red4 dod lad\)
  do\rest 
  < red sold si red >\( < mi la dod mi > < fad si red fad > < mi la dod mi > < red sold si red >\)
  do\rest
  < red sold si red >\( < mi la dod mi > < fad si red fad > < mi la dod mi > < red sold si red >\)
  do4\rest \stemUp < fad lad! > < si, la'! > mi2 red4
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
