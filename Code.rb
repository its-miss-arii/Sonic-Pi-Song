# Welcome to Sonic Pi
use_bpm  140
# VARIABLES TO STORE SAMPLES
do_it = "C:/Users/arianna_rodriguez/Documents/Audacity/Sofia -Do it if we tried.wav"

in_love = "C:/Users/arianna_rodriguez/Documents/Audacity/Sofia - In love with you.wav"

#FUNCTION
define :layer_one do
  1.times do
    8.times do
      use_synth :blade
      play :f4
      
      play :c5
      sleep 0.75
    end
    8.times do
      play :f4, amp: 0.5
      play :b4
      sleep 0.75
    end
    8.times do
      play :e4, amp: 0.5
      play :g4
      sleep 0.75
    end
    8.times do
      play :e4, amp: 0.5
      play :a4
      sleep 0.75
    end
  end
end

#Music Coding Begins
live_loop :layer_one do
  3.times do
    layer_one
  end
  stop
end

sleep 8

live_loop :layer_two do
  8.times do
    sample :guit_em9, amp: 0.6
    sleep 8
  end
  stop
end

sleep 16

live_loop :layer_three do
  1.times do
    sample do_it, amp: 0.5
    sleep 7
    sample in_love, amp: 0.5
    sleep 7
  end
  stop
end

sleep 48

sample :vinyl_rewind
sleep 6
sample :drum_cymbal_hard
sleep 1
