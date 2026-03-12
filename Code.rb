# Welcome to Sonic Pi
use_bpm  140
# VARIABLES TO STORE SAMPLES
do_it = "C:/Users/arianna_rodriguez/Documents/Audacity/Sofia -Do it if we tried.wav"

in_love = "C:/Users/arianna_rodriguez/Documents/Audacity/Sofia - In love with you.wav"

#FUNCTION
define :layer_one_one do
  8.times do 
    use_synth :blade
    play :f4, amp: 0.5
    play :c5, amp: 1
    sleep 0.75
  end
end
define :layer_one_two do
  8.times do
    play :f4, amp: 0.2
    play :b4, amp: 1
    sleep 0.75
  end
end
define :layer_one_three do
  8.times do
    play :e4, amp: 0.2
    play :g4, amp: 1
    sleep 0.75
  end
end
define :layer_one_four do
  8.times do
    play :e4, amp: 0.2
    play :a4, amp: 0.75
    sleep 0.75
  end
end

define :guitar do
  2.times do
    sample :guit_em9, amp: 0.3
    sleep 8
  end
  4.times do
    sample :guit_em9, amp: 0.6
    sleep 8
  end
  2.times do
    sample :guit_em9, amp: 0.3
    sleep 8
  end
end

#Music Coding Begins
live_loop :layer_one do
  3.times do
    layer_one_one
    layer_one_two
    layer_one_three
    layer_one_four
  end
  stop
end

sleep 8

live_loop :layer_two do
  guitar
  stop
end

sleep 16

live_loop :layer_three do
  1.times do
    sample do_it, amp: 0.3
    sleep 7
    sample in_love, amp: 0.4
    sleep 7
  end
  stop
end

sleep 48

sample :vinyl_rewind
sleep 6
sample :drum_cymbal_hard
sleep 1
