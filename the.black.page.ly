\version "2.22.0"
\language "italiano"

\header {
  title = "The black page"
  instrument = "Marimba"
  composer = "Frank Zappa"
  copyright = "[ 15.12.2022 ]"
  tagline = "https://www.youtube.com/watch?v=WDR1j1fwhtA&ab_channel=brennenrigley"
}

\paper {
  #(set-paper-size "a4portrait")
  top-margin = 30
}

global = {
  \key la \minor
  \time 4/4
  \tempo 4=60
}

partition = \relative do'' {
  \global
  \set Voice.beatStructure = 1,1,1,1
  \override TupletBracket.bracket-visibility = ##t
  
  si4 
  fad'32 fad dod si la'8  ~  la16  \slashedGrace do8 sol16  mi8 
  mi16 la8 fad16  \tuplet 3/2 { sol16 do  fa, }  la8  \tuplet 3/2 {  mi16 r re  }  do'8   ~ 
  \tuplet 5/4 { do8 \slashedGrace do8 la sol fa re } 
  dod8. [ re32 sol ] mi2.
  do32 mi re fa mi sol, fa' re 
  \tuplet 3/2 { la'16 do mi, } \tuplet 5/4 { mi32 fa mi re la } \tuplet 7/4 { sib16 do do re re mi fa }
  \tuplet 7/4 { la sol, sol re' fa, fa mi } 
  
  si'2
  \tuplet 3/2 {
  \tuplet 5/4 { si16 dod dod si re  }
  \tuplet 5/4 { fa la, la sib do }
  \tuplet 6/4 { mi la sib fa do! sol } 
              }
  
  la4 ~ la16 la'8. ~ la8 la8 ~ la8. la,16 ~
  la4 si' ~ si16 dod,8. ~ dod8 mi ~
  mi8. dod16 ~ dod4
  \tuplet 3/2 {
  \tuplet 5/4 { si16 do do la re }
  \tuplet 5/4 { mib sol, sol la fa }
  \tuplet 6/4 { mib sol sol fa fa re'   }
  }
  dod1 ~ 
  dod4 si8 si32 la sold re' \tuplet 3/2 { mi,16 si' la } 
  \tuplet 5/4 { dod32 la la si sold } \tuplet 5/4 { r16 la sol fa mi }
  
  \tuplet 5/4 { sold'16 fad dod mi fad, } \tuplet 5/4 { sold'16 fad dod mi fad, ~ } fad2 ~
  fad fad'32 la fad16 fad32 la fad16 fad si,32 la' fad dod si' fad
  
  sold mi mi dod fad sold sold si la sold sold si fad fad, fad si dod la si mi
  sold fad, si dod re la' fad mi fad sold mi si
  %14
  r8 fad'32 sold mi si r4 fad'32 sold mi si r4 fad'32 sold mi si
  
  \tuplet 3/2 {
  la'4 sold8 fad \tuplet 7/4 { mi'4 fad, fad8 si sold } do16 si la la 
  \tuplet 5/4 { sold la fad mi mi } 
  }
  %16
  fad4 fad,32 si si la si8 ~ si16 \slashedGrace dod8 si16 fad8 ~ fad16 sold8 si,16
  \tuplet 3/2 { do16 sib' fa } mib'8 \tuplet 3/2 { reb16 r sib  } do8 ~ 
  \tuplet 5/4 { do lab reb solb sib, }
  mib8. reb32 fa do2.
  
  do32 mi re fa mi sol, fa' re \tuplet 3/2 { la'16 do mi, } \tuplet 5/4 { mi32 fa mi re la }
  \tuplet 7/4 { sib16 do do re re mi fa } \tuplet 7/4 { la sol, sol re' fa, fa mi  }
  si'2 
  \tuplet 3/2 {
  \tuplet 5/4 { si16 dod dod si re } \tuplet 5/4 { fa la, la sib dod } 
  \tuplet 6/4 { mi la sib fa do! sol }
  }
  la4 ~ la16 la'8. ~ la8 la ~ la8. la,16 ~
  la4 si'4 ~ si16 dod,8. ~ dod8 mi ~
  mi8. dod16 ~ dod4 
  
  \tuplet 3/2 {
  \tuplet 5/4 { si16 dod dod la re } \tuplet 5/4 { mib sol, sol la fa } 
  \tuplet 6/4 { mi sol sol fa fa sib }
  }
  sib1 ~
  sib4 la8 la32 sol fad do' \tuplet 3/2 { re,16 la' sol } \tuplet 5/4 { si32 sol sol la fad }
  \tuplet 5/4 { r16 si mi, la fad }
  
  \tuplet 5/4 { fad' mi si re mi, }
  \tuplet 5/4 { fad' mi si re mi, ~ } mi2
  
  r8 \tuplet 5/4 { r32 fa sol do si } \tuplet 5/4 { fad' sol mi la fad } sol fad fad mi
  \tuplet 11/8 { re'32 la la si do mi si si do si, la' }
  \tuplet 11/8 { si mi, mi sol sol re' fad, fad la mi si  }
  \tuplet 3/2 { la'4 do, do } sol'2
  
  \tuplet 3/2 {
  \tuplet 5/4 { r16 mib sib' lab fa } \tuplet 5/4 { fa sol mib sib lab' }
  \tuplet 6/4 { do sib sib lab lab fa  }
  }
  \tuplet 11/8 { sib32 solb solb lab fa reb reb mib sol, lab' fa }
  \tuplet 11/8 { fa mib solb fa reb mib lab reb, solb fa, mib }
  do'1
}

\score {
  \new Staff \with {
    instrumentName = "Synth"
    midiInstrument = "xylophone"
  } \partition
  \layout { }
  \midi { }
}
