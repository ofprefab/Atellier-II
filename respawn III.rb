#respawnIII
#immanuel Prefab
##
###
#### #

live_loop :paceSayer do
  sample :elec_fuzz_tom, rate: 1.2
  sample :ambi_soft_buzz, rate: 0.88, amp: 4
  sample :elec_blip2, rate: 0.84
  sleep 1.5
end

live_loop :toll do
  sample :ambi_dark_woosh, rate: 1.5
  sample :ambi_swoosh, rate: 4, amp: 2
  sample :ambi_sauna, rate: 2.4
  sleep 4
end

live_loop :coilSeen do
  sample :ambi_glass_rub, rate: 0.4
  sample :elec_tick, rate: 0.9, amp: 10
  sleep 6
end

live_loop :acolyteTempo do
  sample :bd_boom, rate: 1.92, amp: 1.2
  sample :elec_ping, rate: 0.55, amp: 1.4
  sleep rrand(4.2, 5)
end

live_loop :templeRow do
  with_fx :echo, mix: 0.8, decay: 0.4, phase: 2 do
    sample :ambi_piano, rate: rrand(0.6, 1.2), amp: 8
    sleep rrand(5, 12)
  end
end

live_loop :choirios do
  with_fx :gverb, amp: 0.76 do
    sample :ambi_choir, rate: rrand(0.8, 1.2)
    sleep 4
  end
end

#202001132322