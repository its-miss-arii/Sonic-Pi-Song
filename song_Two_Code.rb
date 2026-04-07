use_bpm  100
# VARIABLES
drum_amp=[0.7, 1, 3, 0.8, 2, 0.78, 4, 0.96, 1.5, 3]
a = 0

miss_me = "C:/Users/arianna_rodriguez/Documents/Audacity/dont smile vocals.wav"


# FUNCTIONS
define :measures do
  use_synth :pretty_bell
  #Measure 1
  play :g4, amp: 0.5
  sleep 0.5
  play :g4, amp: 0.5
  sleep 0.5
  play :g4, amp: 0.5
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :e5; play :b4, amp: 2
  sleep 0.55
  play :b4
  sleep 0.5
  #Measure 2
  play :a4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  #Measure 3
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :e5
  sleep 0.5
  play :e5
  sleep 0.5
  play :e5
  sleep 0.5
  play :e5
  sleep 0.5
  play :e5
  sleep 0.5
  #Measure 4
  play :a4
  sleep 0.5
  play :a4
  sleep 0.5
  play :a4
  sleep 0.5
  play :a4
  sleep 0.5
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  play :a4, amp: 0.5
  sleep 0.5
  play :a4, amp: 0.5
  sleep 0.5
end

define :vocals do
  sample miss_me, start: 0, finish: 0.25, amp: 0.125
  sleep 6.437263794406651/4
  sample miss_me, start: 0.25, finish: 0.5, amp: 0.25
  sleep 6.437263794406651/4
  sample miss_me, start: 0.5, finish: 0.75, amp: 0.50
  sleep 6.437263794406651/4
  sample miss_me, start: 0.75, finish: 1, amp: 0.25
  sleep 6.437263794406651/4
end
#--------------MUSIC STARTS HERE--------------#

#Transition
sample :loop_drone_g_97, amp: 0.75
sleep 8
sample :drum_cymbal_soft
sleep 1
#Layer 2
live_loop :second do
  3.times do
    measures
    sleep 0.1
  end
  stop
end
sleep 6
#Layer 3
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

#Layer 4
3.times do
  vocals
  sleep 2
end

live_loop :outro do
  1.times do
    sample :ambi_glass_hum, amp: 2
    sleep 1
  end
  stop
end
