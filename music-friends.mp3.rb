# THE PARTY ASSEMBLES
# friends.html

use_bpm 95

live_loop :friendship_theme do
  use_synth :piano
  use_synth_defaults amp: 0.5, release: 0.5
  
  # Hopeful melody
  play :c4, release: 0.5
  sleep 0.5
  play :e4, release: 0.5
  sleep 0.5
  play :g4, release: 1
  sleep 1
  
  play :f4, release: 0.5
  sleep 0.5
  play :e4, release: 0.5
  sleep 0.5
  play :c4, release: 1
  sleep 1
end

live_loop :steady_bass do
  use_synth :fm
  use_synth_defaults amp: 0.4, release: 0.3
  
  play :c2, release: 0.5
  sleep 0.5
  play :c2, release: 0.5
  sleep 0.5
end

live_loop :atmosphere_friends do
  use_synth :pad
  use_synth_defaults amp: 0.3, attack: 2, release: 4
  
  play chord(:c4, :major7), release: 8
  sleep 8
end

