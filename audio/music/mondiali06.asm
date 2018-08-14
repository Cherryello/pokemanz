; White Stripes - Seven Nation Army
; Demixed by Hyperdriveguy

Music_Mondiali06:
	musicheader 4, 1, Music_Mondiali06_Ch1
	musicheader 1, 2, Music_Mondiali06_Ch2
	musicheader 1, 3, Music_Mondiali06_Ch3
	musicheader 1, 4, Music_Mondiali06_Ch4
	
Music_Mondiali06_Ch1:
	tempo 160
	volume $77
	dutycycle $3
	tone $0002
	vibrato $10, $2f
	notetype $c, $f5
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Main_Medium
	notetype $b, $b5
Music_Mondiali06_Ch1_Loop:
	dutycycle $3
	;callchannel Music_Mondiali06_Main_Silent
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Medium
	;callchannel Music_Mondiali06_Main_Silent
	;callchannel Music_Mondiali06_Main_Silent
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Main_Medium
	intensity $d5
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Ch1_Branch2
	callchannel Music_Mondiali06_Ch1_Branch1
	callchannel Music_Mondiali06_Ch1_Branch1
	callchannel Music_Mondiali06_Ch1_Branch2
	dutycycle $2
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Low
	notetype $a, $b5
	loopchannel 0, Music_Mondiali06_Ch1_Loop
	
Music_Mondiali06_Ch1_Branch1:
	octave 3
	note B_, 8
	octave 4
	note D_, 3
	octave 3
	note B_, 1
	note __, 2
	note A_, 2
	note G_, 8
	note F#, 8
	note B_, 8
	octave 4
	note D_, 3
	octave 3
	note B_, 1
	note __, 2
	note A_, 2
	note G_, 3
	note A_, 3
	note G_, 2
	note F#, 8
	endchannel

Music_Mondiali06_Ch1_Branch2:
	octave 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note E_, 2
	note E_, 2
	note A_, 2
	note A_, 2
	octave 3
	note E_, 2
	note A_, 2
	octave 4
	note C#, 2
	note C#, 2
	endchannel

Music_Mondiali06_Ch2:
	dutycycle $2
	vibrato $1c, $12
	notetype $c, $62
	intensity $f5
	callchannel Music_Mondiali06_Main_High
	callchannel Music_Mondiali06_Main_High
	notetype $b, $d5
Music_Mondiali06_Ch2_Loop:
	callchannel Music_Mondiali06_Main_Silent
	octave 4
	note E_, 6
	note E_, 2
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 8
	octave 3
	note B_, 2
	dutycycle $3
	octave 4
	note E_, 2
	note E_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note E_, 2
	note __, 16
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 4
	note __, 8
	note E_, 2
	note E_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note E_, 2
	note __, 16
	note __, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note __, 2
	note E_, 4
	note E_, 2
	note E_, 2
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 4
	note __, 11
	note E_, 1
	note E_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 2
	note __, 1
	note F#, 2
	note __, 1
	note E_, 4
	note E_, 2
	note E_, 2
	note E_, 2
	note D#, 2
	note __, 1
	note D#, 3
	note E_, 4
	note __, 16
	note __, 14
	note E_, 2
	note E_, 2
	note E_, 3
	note __, 1
	note E_, 2
	note __, 1
	note E_, 2
	note __, 1
	note E_, 4
	note E_, 2
	note E_, 2
	note E_, 2
	note D#, 2
	note __, 1
	note D#, 3
	note E_, 4
	note __, 16
	note __, 10
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note G_, 4
	note E_, 6
	note E_, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note E_, 2
	note E_, 10
	dutycycle $2
	callchannel Music_Mondiali06_Ch2_Branch1
	octave 4
	note E_, 8
	callchannel Music_Mondiali06_Ch2_Branch1
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	octave 2
	note A_, 2
	note A_, 2
	octave 3
	note E_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 2
	note E_, 2
	note E_, 2
	callchannel Music_Mondiali06_Main_High
	callchannel Music_Mondiali06_Main_High
	notetype $a, $d5
	loopchannel 0, Music_Mondiali06_Ch2_Loop

Music_Mondiali06_Ch2_Branch1:
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 8
	octave 3
	note B_, 8
	octave 4
	note E_, 8
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 3
	note D_, 3
	note C_, 2
	octave 3
	note B_, 8
	endchannel

Music_Mondiali06_Ch3:
	stereopanning $ff
	vibrato $12, $24
	notetype $c, $17
	tone $0003
	intensity $17
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Low
	notetype $b, $17
Music_Mondiali06_Ch3_Loop:
	callchannel Music_Mondiali06_Main_Low
	;callchannel Music_Mondiali06_Main_Silent
	intensity $14
	callchannel Music_Mondiali06_Main_Medium
	intensity $17
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Low
	;callchannel Music_Mondiali06_Main_Silent
	;callchannel Music_Mondiali06_Main_Silent
	intensity $14
	callchannel Music_Mondiali06_Main_Medium
	callchannel Music_Mondiali06_Main_Medium
	intensity $17
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Ch3_Branch1
	callchannel Music_Mondiali06_Ch3_Branch2
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Ch3_Branch1
	callchannel Music_Mondiali06_Main_Low
	callchannel Music_Mondiali06_Ch3_Branch1
	callchannel Music_Mondiali06_Ch3_Branch2
	intensity $27
	octave 3
	note E_, 16
	note E_, 16
	note E_, 16
	note E_, 16
	notetype $a, $17
	loopchannel 0, Music_Mondiali06_Ch3_Loop

Music_Mondiali06_Ch3_Branch1:
	octave 2
	note E_, 6
	note E_, 2
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 3
	note D_, 3
	note C_, 2
	octave 1
	note B_, 8
	endchannel
	
Music_Mondiali06_Ch3_Branch2:
	octave 1
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	endchannel

; Shared Across Channels

Music_Mondiali06_Main_Low:
	octave 2
	note E_, 6
	note E_, 2
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 8
	octave 1
	note B_, 8
	endchannel
	
Music_Mondiali06_Main_Medium:
	octave 3
	note E_, 6
	note E_, 2
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 8
	octave 2
	note B_, 8
	endchannel
	
Music_Mondiali06_Main_High:
	octave 4
	note E_, 6
	note E_, 2
	note G_, 3
	note E_, 1
	note __, 2
	note D_, 2
	note C_, 8
	octave 3
	note B_, 8
	endchannel
	
Music_Mondiali06_Main_Silent:
	note __, 16
	note __, 16
	endchannel

Music_Mondiali06_Ch4:
	notetype $c
	togglenoise 3
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	notetype $b
Music_Mondiali06_Ch4_Loop:
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch3
	callchannel Music_Mondiali06_Ch4_Branch3
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch2
	callchannel Music_Mondiali06_Ch4_Branch3
	callchannel Music_Mondiali06_Ch4_Branch3
	callchannel Music_Mondiali06_Main_Silent
	callchannel Music_Mondiali06_Ch4_Branch1
	callchannel Music_Mondiali06_Ch4_Branch1
	notetype $a
	loopchannel 0, Music_Mondiali06_Ch4_Loop

Music_Mondiali06_Ch4_Branch1:
	note D#, 4
	note D#, 4
	note D#, 4
	note D#, 4
	endchannel

Music_Mondiali06_Ch4_Branch2:
	note D#, 4
	note C_, 4
	note D#, 4
	note C_, 4
	endchannel

Music_Mondiali06_Ch4_Branch3:
	note D#, 4
	note B_, 4
	note B_, 4
	note B_, 4
	endchannel