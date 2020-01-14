#Lazer Shot Delete (Respawn I)
#immanuel Prefab
##
###
#### #

live_loop :cosmicBells do
  with_fx :echo, mix: 1, phase: 0.25 do
    sample :guit_em9, rate: rrand(1.25, 1.5), amp: (knit 2, 3, 5, 1).tick
    sample :ambi_dark_woosh, rate: (knit 5, 3.4, 2.7, 5).tick
    sample :loop_compus, amp: 4, rate: 0.5
    sample :ambi_glass_hum, amp: 2, rate: rrand(10, 9)
  end
  sleep rrand(16, 20)
end

live_loop :crierChoir do
  with_fx :reverb, room: 0.4 do
    sample :bd_boom, amp: 1.5, rate: rrand(1, 1.1)
    sample :ambi_choir, amp: 0.55, rate: 1.255
    sample :ambi_glass_rub, amp: 0.18, rate: 1
  end
  sleep 1
end

live_loop :rainPanopticom do
  with_fx :echo, mix: 0.8, room: 0.7, decay: 5, phase: 1.25 do
    sample :elec_chime, rate: 7, amp: 2
    #sample :glitch_robot1, rate: 3
    sleep 3
  end
end

live_loop :jupiterMoons do
  #with_fx :echo, mix: 1, phase: 5 do
  with_fx :reverb, mix: 0.4, room: 0.75 do
    sample :ambi_lunar_land, amp: 4, rate: 0.4
    sample :vinyl_rewind, rate: 0.54, amp: 2.4
  end
  #end
  sleep 12
end

#202001112258