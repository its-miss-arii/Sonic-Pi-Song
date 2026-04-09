use_bpm  100
# VARIABLES
drum_amp=[0.7, 1, 3, 0.8, 2, 0.78, 4, 0.96, 1.5, 3]
a = 0

miss_me = "C:/Users/arianna_rodriguez/Documents/Audacity/dont smile vocals.wav"


# FUNCTIONS
define :measures do
  use_synth :pretty_bell
  #Measure 1
  3.times do
    play :g4, amp: 0.5
    sleep 0.5
  end
  3.times do
    play :b4
    sleep 0.5
  end
  play :e5; play :b4, amp: 2
  sleep 0.55
  play :b4
  sleep 0.5
  #Measure 2
  play :a4
  sleep 0.5
  5.times do
    play :b4
    sleep 0.5
  end
  2.times do
    play :c5
    sleep 0.5
  end
  #Measure 3
  3.times do
    play :b4
    sleep 0.5
  end
  5.times do
    play :e5
    sleep 0.5
  end
  #Measure 4
  5.times do
    play :a4
    sleep 0.5
  end
  play :g4
  sleep 0.5
  2.times do
    play :a4, amp: 0.5
    sleep 0.5
  end
  play :a4, amp: 0.5
  sleep 0.4
end

define :vocals do
  sample miss_me, start: 0, finish: 0.1, amp: 0.125
  sleep 6.437263794406651/10
  sample miss_me, start: 0.1, finish: 0.2, amp: 0.35
  sleep 6.437263794406651/10
  sample miss_me, start: 0.2, finish: 0.3, amp: 0.7
  sleep 6.437263794406651/10
  sample miss_me, start: 0.3, finish: 0.4, amp: 1.1
  sleep 6.437263794406651/10
  sample miss_me, start: 0.4, finish: 0.5, amp: 0.7
  sleep 6.437263794406651/10
  sample miss_me, start: 0.5, finish: 0.6, amp: 0.55
  sleep 6.437263794406651/10
  sample miss_me, start: 0.6, finish: 0.7, amp: 0.3
  sleep 6.437263794406651/10
  sample miss_me, start: 0.7, finish: 0.8, amp: 0.2
  sleep 6.437263794406651/10
  sample miss_me, start: 0.8, finish: 0.9, amp: 0.125
  sleep 6.437263794406651/10
  sample miss_me, start: 0.9, finish: 1, amp: 0.025
  sleep 6.437263794406651/10
  
end

#--------------MUSIC STARTS HERE--------------#


#Transition
sample :loop_drone_g_97, amp: 0.75
sleep 8
sample :drum_cymbal_soft
sleep 1
#Layer 2-main melody begins-Don't Smile beat
live_loop :second do
  3.times do
    measures
    sleep 0.1
  end
  stop
end
sleep 6
#Layer 3-Drums enter-need to sync w/ notes
live_loop :drums do
  6.times do
    7.times do
      sample :drum_bass_soft, amp: (drum_amp[a])
      sleep 1
      a = a + 1
    end
    a = 0
  end
  stop
end
sleep 21
#Layer 4-vocal sample-miss_me-make louder

3.times do
  print ("vocals")
  vocals
  sleep 3
end
#Outro sample comes in to end song
live_loop :outro do
  1.times do
    sample :ambi_glass_hum, amp: 2
    sleep 1
  end
  stop
end
