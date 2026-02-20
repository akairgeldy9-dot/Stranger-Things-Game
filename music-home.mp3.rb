# STRANGE LIGHTS - Mysterious & Tense
# index.html

use_bpm 80

live_loop :tension_bass do
  use_synth :dark_ambience
  use_synth_defaults amp: 0.5, attack: 1, release: 2
  
  play :c2, release: 4
  sleep 2
  play :eb2, release: 4
  sleep 2
  play :bb1, release: 4
  sleep 2
  play :c2, release: 4
  sleep 2
end

live_loop :flicker do
  use_synth :beep
  use_synth_defaults amp: 0.2, release: 0.1
  
  with_fx :echo, phase: 0.25, decay: 2 do
    if one_in(3)
      play choose([:c5, :eb5, :g5]), release: 0.05
      sleep 0.25
    else
      sleep 0.25
    end
  end
end

live_loop :mystery do
  sample :ambi_dark_woosh, amp: 0.3
  sleep 8
end