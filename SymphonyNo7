%%%%%%%%%%%%%%%%%%% papier
\version "2.22.0"
#(set-global-staff-size 25)
#(set-default-paper-size "a4" 'portrait)
\pointAndClickOff
\include "italiano.ly"
\paper {
top-margin = 5
%%left-margin = 65 
}
%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% en tete

\header {
footer = " Symphony No. 7 "
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) 
\box \center-column { \footer } }
title = "Symphony No. 7 "
%%subtitle = "( Fragment )"
%subsubtitle = "-----"
composer = "--"
%opus = "Opus 45 n° 1"
%instrument = "Piano"
}
%%%%%%%%%%%%%%%%%%%%%

melody = \relative do'' {
  \clef treble
  \key sib \major
  \time 2/4
  \tempo "Allegro" 4 = 76
  \compressMMRests {
  R2*2 }
  sol4 sol8 sol
  fad4 fad
  re4 re8 re
  sol,4 sol
  sol sol8 sol
  fa!4 fa
  fa fa8 fa
  sib4 r
  \bar ".|:"
  
  sib sib8 sib
  la4 la
  la4 la8 la
  sol4 sol
  sol'4 sol8 sol
  fad4 sol
  re re8 re
  sol,4 r \bar ":|."
  
  r8 re' re' re, %%19
  r fad la re,
  r fad la re,
  r re re' re,
  r re re' re,
  r re sib' re, %%24
  
  r la' do fa,
  r re sib' re,
  \bar ".|:"
  
  r re re' re,
  r mi la mi
  r la do la %%29
  r re, sol sol,
  r sol' re' re,
  r la' re re, 
  r la' re re, 
  \set Score.repeatCommands = #'((volta "1."))
  r sol re' sol, \bar ":|."
  \set Score.repeatCommands = #'((volta #f))

  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  r sol re' sol,
  \set Score.repeatCommands = #'((volta #f))
  
  <sol, re'>4 <sol re'>8 <sol re'>
  fad'4 fad
  re4 re8 re
  
  <sol, re'>4 <sol re'>
  <sol re'> <sol re'>8 <sol re'>
  
  fa4 fa
  fa fa8 fa
  sib4 sib
  \bar ".|:"
  
  sib4 sib8 sib
  la4 la
  la la8 la
  sol4 sol
  <sol re'> <sol re'>8 <sol re'>
  fad'4 fad
  re re8 re
  
  \set Score.repeatCommands = #'((volta "1."))
  sol,4 r
  \set Score.repeatCommands = #'((volta #f))
  \bar ":|."
  
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  sol\p r
  \set Score.repeatCommands = #'((volta #f))
  \compressMMRests {
  R2*2 }
  re'4 mi!8 fad
  
  \key sol \major
  \repeat unfold 13 { sol,4 sol'8 sol }
  %\mark\markup\musicglyph "scripts.segno"
  %\once \override Score.RehearsalMark.font-size = #4
  sol,4\mark \markup { "to coda" \musicglyph "scripts.coda" } sol'8 sol
  
  \bar "||"
  
  si,4 si'8 si
  do,4 do'8 do
  si,4 si'8 si
  do,4 do'8 do
  
  si,4 sib8 sib
  mib,4 mib8 mib
  
  fa4 fa8 fa
  sib4 sib8 sib \bar "||"
  
  \key sib \major
  \repeat unfold 5 { sib4 sib8 sib }
  R2*2
  mib8 re do sib 
  la sol fad'8 fad
  R2^"D.S. al Coda" \bar "||" 
  \break
  \key sol \major
  \mark \markup { \musicglyph "scripts.coda" }
  
  \repeat unfold 4 { sol,4 sol'8 sol }
  sol2
  mib
  re
  do
  
  fad,8 r fad r \bar "||"
  \key sib \major
  
  sib4 r
  re re8 re
  sol,8 r r4
  r sol
  r re'
  r re
  r sol
  r sol
  fad sol
  re mi8 fad sol4 r
  \compressMMRests {
  R2*2 }
  
  re4 re8 re
  re4 mi8 fad sol4 r
  sol, r
  \compressMMRests {
  R2*2 }
  \bar ".."
}

\score {
  \new Staff \melody
  \layout { }
  
  \midi { }
}
