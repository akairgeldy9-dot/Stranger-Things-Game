# INTO THE DARK WOODS
# woods.html

use_bpm 70

live_loop :dark_drone do
  use_synth :dark_ambience
  use_synth_defaults amp: 0.6, attack: 3, release: 5
  
  with_fx :reverb, room: 0.95 do
    play :c2, release: 8
    sleep 4
    play :bb1, release: 8
    sleep 4
  end
end

live_loop :forest_sounds do
  sample :ambi_haunted_hum, amp: 0.4, rate: 0.8
  sleep 6
  
  sample :ambi_choir, amp: 0.2, rate: 0.5
  sleep 6
end

live_loop :danger_pulse do
  use_synth :prophet
  use_synth_defaults amp: 0.3, attack: 0.5, release: 1
  
  play :c3, release: 2
  sleep 2
  play :eb3, release: 2
  sleep 2
end

live_loop :wind do
  with_fx :reverb, room: 0.9 do
    sample :ambi_swoosh, amp: 0.15, rate: 0.7
  end
  sleep 8
end

