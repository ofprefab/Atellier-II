#Ephemerals in Cascade
#immanuel Prefab
##
###
#### #

use_synth :square
with_fx :reverb, mix: 0.7, amp: 1.2 do
  
  live_loop :nopeTationI do
    play choose([:B4,:E5]), attack: 12, release: 4
    sleep 8
  end
  
  live_loop :nopeTationII do
    play choose([:Fs3,:C4]), attack: 5, release: 7
    sleep 10
  end
  
  live_loop :nopeTationIII do
    play choose([:A5, :Cs5]), attack: 10, release: 5
    sleep 11
  end
  
end

use_synth :bnoise

live_loop :NOtationI do
  play :B5, release: 4.8
  sleep 5
end

live_loop :NOtationII do
  play :C4, release: 3
  sleep 12
end

use_synth :mod_fm
with_fx :echo, decay: 0.5 do
  
  live_loop :dopeTationI do
    play choose([:C3,:D3,:Ff3]), release: rrand(4.9, 2.9)
    sleep 6
  end
  
end

live_loop :great do
  with_fx :distortion, mix: 1, amp: 3.2 do
    with_fx :reverb, mix: 0.9, room: 1 do
      sample :bd_boom, rate: 0.92, amp: 1.2
      sample :elec_ping, rate: 0.44, amp: 1.4
    end
    sleep rrand(5.2, 7)
  end
end

live_loop :speedBump do
  with_fx :pitch_shift, mix: 1 do
    sample :loop_compus, amp: 4.5
    sleep rrand(1, 2)
  end
end

#202001132230