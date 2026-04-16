use_bpm  100
# VARIABLES
drum_amp=[0.7, 1, 3, 0.8, 2, 0.78, 4, 0.96, 1.5, 2]
a = 0

vocal_amp=[1, 1.3, 1.5, 1.7, 1.8, 1.9, 0.89, 0.79, 0.69, 0.5]
v = 0
s = 0
f = 0.1

miss_me = "C:/Users/arianna_rodriguez/Documents/Audacity/dont smile vocals2.wav"
oh_boy = "C:/Users/arianna_rodriguez/Documents/Audacity/manchildAudio.wav"
funny_way = "C:/Users/arianna_rodriguez/Documents/Audacity/Funny_way.wav"
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
  play :e5
  play :b4, amp: 2
  sleep 0.5
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
  sleep 0.5
end
define :vocals do
  10.times do
    sample miss_me, start: s, finish: f, amp: (vocal_amp[v])
    sleep 6.437263794406651/10
    v = v + 1
    s = s + 0.1
    f = f + 0.1
  end
  s = 0
  f = 0.1
  v = 0
end

#--------------MUSIC STARTS HERE--------------#

#Transition
sample funny_way
sleep 10
sample :drum_cymbal_open, amp: 0.3
sleep 1
#Layer 2-main melody begins-Don't Smile beat
live_loop :second do
  3.times do
    measures
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
2.times do
  print "vocals"
  vocals
  sleep 3
end
print "vocals"
vocals
#Outro sample comes in to end song
measures
sample oh_boy
