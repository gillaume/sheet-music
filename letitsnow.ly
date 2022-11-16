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
footer = " Let it snow "
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) 
\box \center-column { \footer } }
title = "Let it snow"
%%subtitle = "( Fragment )"
%subsubtitle = "-----"
composer = "--"
%opus = "Opus 45 n° 1"
%instrument = "Piano"
}
%%%%%%%%%%%%%%%%%%%%%
%%% partition piano %%%%


melody = \relative do' {
  \clef treble
  \key sol \major
  \time 4/4

  r8 r re4 r re
  r4 re r re
  r4 re r re
  re8 re' do4 si la
  sol r re r
  sol r8 sol re' re, r do'
  si4 r sib r %% 7
  
  la r re,8 la'4.
  la4 r do r
  la mi la sib
  la r re, r %%11
  sol r r re8 re
  re' re do4 si la
  sol8 re r4 r re8 re %%14
  
  la'4. sol8 la4. sol8
  fad re r4 r8 mi4.
  la4 si, do re
  mi fad sol8 sib4. %%18
  la4 r re, r
  r8 re4. sol4 r
  re r la r
  re r re red %%22
  
  mi r la, r
  re8 re dod4 si la
  re r la r
  re dod do! si %%26
  mi8 r r4 la, r
  re r r re
  sol r re r
  sol r r re8 re %%30
  
  la'4. sol8 la4. sol8
  fad4 re2 r4
  la' r mi r
  la r r sol %%34
  fad4 fad8 mi re4 re8 do 
  si2. fad'8 sol
  la si la4 fad re'
  la2. fad8 la %%38
  
  sol4 sol8 fad mi re mi fad ~
  fad2. la,4
  re r la r
  re dod do si
  mi8 r r4 la2 %%43
  
  re,4 r re sol
  \key do \major
  do,4 r sol r
  do4 r8 do sol'4 fa
  
  mi2 mib %%47
  re4 r sol8 mi4. 
  re4 r la r
  re la re mib
  re sol sol, r
  r sol' sol, r
  do8 r sol'4 r sol
  r sol r sol %%54
  
  r8 do, re mi fa sol la si
  do r sol4 do, r
  \bar "|."
}

\score {
  
  \new Staff \melody
  \layout { }
  \midi { }
}
