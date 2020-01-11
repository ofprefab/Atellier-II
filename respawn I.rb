#Respawn I
#immanuel Prefab
#
#is mostly constructed by following
#the tutorial for two pages and then
#coding for 2 hours.

live_loop :guit do
  with_fx :echo, mix: 1, phase: 0.25 do
    sample :guit_em9, rate: 1.25
    sample :ambi_dark_woosh, rate: 5
    sample :loop_compus, amp: 4
    sample :ambi_glass_hum, amp: 2, rate: 10
  end
  sleep 16
end

live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 2, rate: 1
    sample :ambi_choir, amp: 1, rate: 1.255
    sample :ambi_glass_rub, rate: 4
  end
  sleep 8
end

with_fx :echo, room: 0.7, decay: 5, phase: 1.25, mix: 0.8 do
  live_loop :rhythm do
    sample :elec_chime, rate: 7
    sample :glitch_robot1, rate: 3
    sample :vinyl_scratch, rate: 2, amp: 2.8
    sleep 3
  end
  #is derived directly from the bottom
  #of example:[Wizard] Blip Rhythm
  #found in the Examples tab in Sonic Pi
end

live_loop :flibble do
  with_fx :echo, mix: 1, phase: 5 do
    sample :ambi_lunar_land, amp: 5, rate: 2
    sample :vinyl_rewind, rate: 0.54, amp: 2.4
  end
  sleep 12
end