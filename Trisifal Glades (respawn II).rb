#Trisifal Glades (respawn II)
#immanuel Prefab
#script for Sonic Pi

live_loop :highwayLights do
  with_fx :reverb, mix: 1, room: 0.2 do
    sample :ambi_choir, rate: rrand(0.55, 0.6), amp: 2.8
    sample :loop_industrial, rate: 0.6, amp: 2
  end
  sleep 2
end

live_loop :factoryFarming do
  with_fx :gverb, mix: 0.1 do
    sample :perc_snap2, rate: 1
    sample :loop_garzul, rate: (knit 1, 3, -5, 1, 5, 1).tick, amp: 1.8
  end
  sleep 8
end

live_loop :eventHorizon do
  with_fx :wobble, mix: 1, wave: 0, probability: 0.6 do
    synth :tb303, release: 3.88, note: :e1, cutoff: (range 90, 60, -10).tick, amp: 0.67
    sleep 4.56549 #originally 4
  end
end

live_loop :slushYuppie do
  with_fx :bitcrusher, mix: 0.3, sample_rate: 8 do
    with_fx :distortion, mix: 1, amp: 1.2 do
      sample :ambi_dark_woosh, rate: -40, amp: 8
      sample :ambi_haunted_hum, rate: -10.3, sustain: 12, amp: 0.7
    end
  end
  sleep 2
end

#202001122328