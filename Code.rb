# Welcome to Sonic Pi
use_bpm  140
# VARIABLES TO STORE SAMPLES
do_it = "C:/Users/arianna_rodriguez/Documents/Audacity/Sofia -Do it if we tried.wav"

in_love = "C:/Users/arianna_rodriguez/Documents/Audacity/Sofia - In love with you.wav"

#FUNCTION

define :layer_one_two_three_four do |first_note, second_note, first_amp, second_amp|
  8.times do
    use_synth :blade
    play first_note, amp: first_amp
    play second_note, amp: second_amp
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
  stop
end



#Music Coding Begins
live_loop :layer_one do
  3.times do
    layer_one_two_three_four :f4, :c5, 0.5, 1
    layer_one_two_three_four :f4, :b4, 0.2, 1
    layer_one_two_three_four :e4, :g4, 0.2, 1
    layer_one_two_three_four :e4, :a4, 0.2, 0.75
  end
  stop
end

sleep 8

live_loop :layer_two do
  guitar
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
