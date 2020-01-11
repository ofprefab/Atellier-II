#respawn II
#immanuel Prefab
#code for Sonic Pi
#derived from Examples: [Wizard] Time Machine

live_loop :flibble do
  sample :ambi_choir, rate: 0.45
  sample :loop_industrial, rate: 10, amp: 2
  sleep 1
end

live_loop :machine do
  sample :perc_snap2, rate: 3
  sample :loop_garzul, rate: (knit 1, 3, -1, 1).tick, amp: 2
  sleep 8
end

live_loop :time do
  synth :tb303, release: 3.88, note: :e1, cutoff: (range 90, 60, -10).tick, amp: 0.57
  sleep 4
end

live_loop :moon_bass do
  sample :ambi_dark_woosh, rate: -40, amp: 8
  sample :elec_soft_kick, rate: 12, amp: 10
  sample :ambi_haunted_hum, rate: 0.3, sustain: 12, amp: 4
  sleep 2
end

#20200111