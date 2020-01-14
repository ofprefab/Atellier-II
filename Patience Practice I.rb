#Patience Practice I
#immanuel Preab
##
###
#### #

live_loop :steelGum do
  with_fx :reverb, mix: 0.88, room: 0.7 do
    with_fx :distortion, mix: 1, amp: 1.7 do
      sample :loop_breakbeat, rate: 0.8, amp: 3
      sample :loop_electric, rate: rrand(2, 2.4), amp: rrand(2, 4)
      sleep rrand(4, 4.5)
    end
  end
end

live_loop :pewFlood do
  with_fx :flanger, mix: 0.4, delay: 1 do
    sample :ambi_glass_hum, rate: (knit, 0.5, 0.7, 0.7, 0.5, 0.7, 0.55).tick, release: 3.8
    sleep rrand(4, 5)
    #sample :ambi_choir, rate: 1.48
    sleep 4
  end
end

live_loop :iceFishing do
  sample :loop_weirdo, amp: 2, rate: rrand(0.75, 0.68)
  sleep 4 #(knit 5, 4).tick
end

use_synth :pulse
with_fx :reverb, room: 1 do
  
  live_loop :notationMain do
    play choose([:C4, :D3]), attack: 1.5, release: 2.7, amp: 1
    sleep 24
  end
  
  live_loop :notationSec do
    play choose([:A1, :C2]), attack: 2.2, release: rrand(1.4, 1.5), amp: 1
    sleep 12
  end
end

use_synth :hollow

live_loop :acolyteHigh do
  play choose([:C5, :D6]), attack: 1.5, release: 1.7, amp: 1.2
  sleep 12
end

live_loop :acolyteLow do
  play choose([:A4, :G4]), attack: 2.2, release: rrand(1.4, 1.5), amp: 1.2
  sleep 9
end

live_loop :acolyteMinus do
  play choose([:A5, :F6]), attack: 2.2, release: rrand(1.1, 1.8), amp: 1.2
  sleep 6
end

202001112315