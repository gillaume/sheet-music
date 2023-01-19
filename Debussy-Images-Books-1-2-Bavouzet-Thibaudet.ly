#(set-global-staff-size 19)

\version "2.22.0"
\include "italiano.ly"


\paper {

  line-width = 186\mm
  #(define left-margin (/ (- paper-width  (* 186 mm)) 2))
  #(define top-margin (/ (- paper-height (* 259 mm)) 2))
  #(define bottom-margin (/ (- paper-height (* 253 mm)) 2))
  between-system-padding = 8\mm
  indent = 10\mm
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
   ))
}

\header {
  title = "Debussy: Images, Books 1 & 2 (Bavouzet, Thibaudet)"
  dedication = \markup \center-column { \fontsize #0.5 \bold "Hommage à Rameau" " " }
  composer = "Debussy"
  tagline = \markup {
    \line { https://youtu.be/3VDUGu8NBmA }
    \line { [ 12 décembre 2022 ] }
  }
}

global = {
  \key si \major
  \time 3/2
}


rightOne = \relative do'' {
  \global
  red,4\(\pp^"Lent et grave" sold fad2 ~ \autoBeamOff fad8 red \autoBeamOn \tuplet 3/2 { dod red fad }
  sold8.. si32 lad4 dod2 lad\)
  r4 lad8\(\< si \tuplet3/2 { sold8 lad fad } red4 fad lad\! ~
  lad\> \tuplet 3/2 { dod8 lad si } \tuplet 3/2 { sold lad fad } red4 dod lad\)\!
  sold'4\rest\p \tuplet 3/2 { sold'8\( sold si } \autoBeamOff si sold \autoBeamOn \tuplet 3/2 { sold8 sold si } si sold sold4\)
  sold,4\rest \tuplet 3/2 { red'8\( red fad } \autoBeamOff fad8 red \autoBeamOn \tuplet 3/2 { red8 red fad } fad8 red red4\)
  r4 \tuplet 3/2 { red8\( dod red } sold,4 \tuplet 3/2 { sold8 fad sold } \clef bass dod,4 ~ \tuplet 3/2 { dod8 si dod }
  red4 ~ \tuplet 3/2 { red8 dod red } \clef treble < sold, lad dodd mid lad >4_. < red' fadd lad red >_. < red fadd lad red >2 ~
  q2.\) si'4\rest si2\rest \clef bass
  \stemDown
  lad,4\pp\(\< red dod2 ~ dod8 lad \tuplet 3/2 {  sold [ lad dod\! ] }
  \clef treble \bar "||"  \time 4/2 red8..\< ( fad32 mi4\! ) \stemUp
  << { sold8..\< ( si32 lad4\! ) dod2 } \\ {  s4 sold4 ~ sold2  } >>

  lad\) ~
  \bar "||" \time 3/2 lad4\( lad8 si \tuplet 3/2 { sold lad fad } red4 fad lad\) ~
  lad4\( \tuplet 3/2 { dod8 lad si } \tuplet 3/2 { sold lad fad } red4 dod ~ <dod mi>\)
  \clef bass r4
  \clef treble si''4 ( la2. )  la4 ~
  la fad ( re2. ) \clef treble re4 ~ ( \bar "||"
  \time 1/2 re si ) \time 3/2

  <sol sol,>2.\p\( <sold sold,>4 <dod dod,> <red red,>\)
  <sol, sol,>2.\p\( <sold sold,>4 <dod dod,> <red red,>\)
  <red red,>8\( <mi mi,> s2 <red fad>8 <mi sold> q4 <dod mi>8 sold'\)

  \stemDown <la, dod mi la>4-.\p\(_\markup { "( très soutenu )" } q2-- \stemUp <la la'>4--  <sold sold'>-- <fad fad'>8 ( sold'\) )

  \stemDown <sold, sid red> <la dod mi> q2 \stemUp <la' la,>4-- <sold sold,>-- <fad fad,>8 <sold sold,>
  <sold, sid red sold>\< <si re fad si> q2\! q8\<\( <dod mid sold dod> q4 <mi sold si mi>8 <dod mid sold dod>
  q <si re fad si> q2\!\) q8\<\( <dod mi sold dod> q4 <mi mi'>8 <fad fad'>\!\)

  <sold sid red sold>1.\f ~ q\p \laissezVibrer

  <sold sid red sold>4 \repeatTie s s2 s


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
  < mi sold >\p red < la dod > \clef bass < fad sold >2
  < mi sold > s2 s2
  s2 s2 s2
  s2.
  s2. s2
  mi'2 mi\> <red fad>\!
  \time 3/2 \bar "||" <dod mi>2.\p <si red>4\< <lad dod> <red fad>\!

  <dod mi>2. <si red>4\> lad la!\!
  s4 \tuplet 3/2 { <sold'' si>8\p ( <fad la> <mi sold> ) } <mi sold>\< <re fad>
  <re fad>2\! \tuplet 3/2 { <mi sold>8 ( <dod mi> <mi sold> ) }
  <mi sold> <re fad> \tuplet 3/2 { <dod mi> ( [ <si re> <la dod> ] ) } <la dod> <sol si>
  <sol si>2 \clef treble \tuplet 3/2 { <la dod>8 [ <fad la> <la dod> ] }
  <la dod> <sol si> \tuplet 3/2 { <fad la> [( <mi sol> <re fad> )] } \bar "||"
  \time 3/2
  <re fad> ( <dod mi> ) q2 \tuplet 3/2 { <re fad>8\< <dod mi> <re fad>  } <sold si>4 <fadd lad>\!
  <re fad>8 ( <dod mi> ) q2 \tuplet 3/2 { <re fad>8\< <dod mi> <re fad>  } <sold si>4 <fadd lad>\!
  <sold dod> <mi dod' mi>2  dod' sold4
  s4 s2 <dod mi>8 <do red> q <si re> \tuplet 3/2 { <lad dod> [ <si re> <sid red> ] }
  \stemUp sold' la la2 \stemDown <dod, mi>8 <do red> q <sid re>
  \tuplet 3/2 { <lad dod> [ <si re> <sid red> ] }
  s1.
  s2 s s4 <sold' si>4
  s1. s4 <sold sold'>4^. <fad fad'>2^\portato <red~ red'>^\portato
  red4 \stemUp sold,-. \> \p ^( fad2-- ~ fad8 red \tuplet 3/2 { dod [ red fad ] } \!
  sold8.. si32 lad4  <dod, mi sold dod>2\portato \> <lad dod red fad lad>\portato ^) \!



}

rightThree = \relative do'' {
  \global
  s2*27
  s2*4
  s2*3
  s2*3
  s2*3
  la,,1\pp s2
  s2 s \stemDown \clef bass re2
  s1
  s1.*6 s2 s
  sol'4\rest s4 s2 s
  fa4\rest  s s2 s2
  sol,4\rest
  


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
  \stemUp
  <dod dod'> <si si'> <lad lad'> <red, red'> ~ <red red'>2 ~ <red red'>2. s4 s2
  s2 s s
  s2 \stemDown mi''2  <mi sold>  <red fad>
  <dod mi>2. <si red>4 <lad dod> <red fad>
  <dod mi>2.  <si red>4 lad la
  s4 \tuplet 3/2 { <sold'' si>8\p ( <fad la> <mi sold> ) }
  <mi sold> <re fad> <re fad>2 \clef treble \tuplet 3/2 { <mi sold>8 ( <dod mi> <mi sold> ) }
  <mi sold> <re fad> \tuplet 3/2 { <dod mi> ([ <si re> <la dod> ]) } <la dod> <sold si>
  <sold si>2 \tuplet 3/2 { <la dod>8 [ <fad la> <la dod> ] } \bar "||"
  \time 1/2 <la dod> <sol si> \tuplet 3/2 { <fad la> [ <mi sol> <re fad> ] } \bar "||" \time 3/2
  \stemUp <lad! lad,!>2\( <dod dod,> <mi mi,>4 <red red,>\)
  <lad lad,>2\( <dod dod,> <mi mi,>4 <red red,>\)
  r \stemDown <sold dod>2 dod s4
  \stemUp <mi, lad dod mi>\arpeggio q2 \stemDown <mi lad> <mi la>4
  <mi la> q2 q q4
  q4 q2 q4 <la red> \clef treble re
  \clef bass la <mi la>2 q4 <la re> \clef treble <re sold si>

}

leftTwo = \relative do' {
  \global
  red,4\( sold fad2 ~ fad8 red \tuplet 3/2 { dod [ red fad ] }
  sold8.. si32 lad4 dod2 lad\)
  dod,4\rest lad'8\( si \tuplet 3/2 { sold lad fad } red4 fad lad ~
  lad \tuplet 3/2 { dod8 lad si } \tuplet 3/2 { sold lad fad } red4 dod lad\)
  do\rest
  < red sold si red >\( < mi la dod mi > < fad si red fad > < mi la dod mi > < red sold si red >\)
  do\rest
  < red sold si red >\( < mi la dod mi > < fad si red fad > < mi la dod mi > < red sold si red >\)
  do4\rest \stemUp < fad lad! > < si, la'! > mi2 red4
  s2 s
  <red lad'>2 ~ <red lad'>2. re4\rest re2\rest

  lad4\( red dod2 ~ dod8 lad \tuplet 3/2 { sold [ lad dod ] } \time 4/2
  \stemDown \bar "||" red8.. fad32 mi4 \stemUp sold8.. si32 <lad sold>4 dod2\) lad ~ \bar "||" \time 3/2
  lad4 lad8 si \stemDown \tuplet 3/2 { sold lad fad } red4 fad lad
  ~ \stemUp lad \stemDown \tuplet 3/2 { dod8 lad si } \tuplet 3/2 { sold lad fad } \stemUp
  red4 dod ~ <dod mi> fa\rest \clef treble
  si' la2. la4 ~ la fad \clef bass re2. re4 ~
  re si
  s1.
  s
  s4 fad'8 sold sold4 <red fad>8 <mi sold> q4 <dod mi>
  s4 s2 <dod mi>8 (<do red>) q (<si re>) \tuplet 3/2 { <lad dod> ([ <si re> <sid red> ] )}
  <sid red> <dod mi> q2 q8 <dod red> q <sid re> \tuplet 3/2 { <lad dod> [ <si re> <sid red> ] }
  <sid red> <re fad> q2 q8 <mid sold> q4 \clef treble <sold si>8 <mid sold>

  \clef bass <re mid sold> <re fad> q2 q8 <mid sold> q4 \clef treble mi8 fad \clef bass



}

leftThree = \relative do' {
  \global
  s2*27
  s2*4
  s2*3
  s2*3
  s2*3
  <re,, re,>1.
}

leftFour = \relative do' {
  \global
  s2*27
  s2*4
  s2*3
  s2*3
  s2*3
  s2 s \clef bass < la la,>2
  s2 s \clef bass < sol, sol,> s4
  s2 s1. s2. s4 s
  <dod dod,>1.
  <la la,>\arpeggio
  r2 q1
  r2 q1 ~ \clef bass
  q2 q1 
  <sold, sold' red' sold sid>1.

}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo \\ \rightThree>>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo \\ \leftThree \\ \leftFour >> }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
