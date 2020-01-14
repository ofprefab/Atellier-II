#libraryColumnOne (iteration First)
#immanuel Prefab
##
###
#### #

live_loop :truthRay do
  with_fx :gverb, mix: 0.95 do
    sample :ambi_choir, rate: rrand(1.5, 3.4)
    sample :bass_trance_c, rate: (knit, 1, 2, 1.5, 2, 1, 1.55).tick
  end
  sleep rrand(5, 5.8)
end

live_loop :massAnchor do
  with_fx :reverb, room: 0.9 do
    with_fx :distortion, distort: 0.68, mix: 0.987 do
      sample :loop_breakbeat, rate: 0.75
      sample :loop_electric, rate: 0.87
      sample :loop_mehackit1, rate: 0.87
    end
  end
  sleep rrand(2, 2.4)
end

live_loop :pinkLetter do
  with_fx :echo, decay: 0.8, mix: 0.987 do
    sample :ambi_dark_woosh, rate: 2.8
  end
  sleep 10
end

live_loop :pleaseTease do
  with_fx :distortion, distort: 0.987321, mix: 1, amp: 0.7 do
    sample :bd_haus, rate: (knit, 1, 1.2, 1.25, 1, 1.25, 1.75).tick
    sample :bd_gas, rate: 4
  end
  sleep 1.2 # (knit, 1.5, 1.1, 2.5, 0.5, 0.2, 0.5).tick
end