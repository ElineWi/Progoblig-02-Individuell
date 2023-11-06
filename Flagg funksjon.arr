use context essentials2021

fun nordiske-flag(left-top, right-top, left-bottom, right-bottom, left-top2, right-top2, left-bottom2, right-bottom2, bottom):
  frame(
    overlay-align("left", "top", rectangle(60, 60, "solid", left-top),
      overlay-align("right", "top", rectangle(120, 60, "solid", right-top),
        overlay-align("left", "bottom", rectangle(60, 60, "solid", left-bottom),
          overlay-align("right", "bottom", rectangle(120, 60, "solid", right-bottom),
            overlay-align("left", "top", rectangle(70, 70, "solid", left-top2),
              overlay-align("right", "top", rectangle(130, 70, "solid", right-top2),
                overlay-align("left", "bottom", rectangle(70, 70, "solid", left-bottom2),
                  overlay-align("right", "bottom", rectangle(130, 70, "solid", right-bottom2),
                    rectangle(220, 160, "solid", bottom))))))))))
end


Norge = nordiske-flag("fire-brick", "fire-brick", "fire-brick", "fire-brick", "white", "white", "white", "white", "navy")

Danmark = nordiske-flag("crimson", "crimson", "crimson", "crimson", "crimson", "crimson", "crimson", "crimson", "white")

Sverige = nordiske-flag("steel-blue", "steel-blue", "steel-blue", "steel-blue", "gold", "gold", "gold", "gold", "gold")

Island = nordiske-flag("navy", "navy", "navy", "navy", "white", "white", "white", "white", "crimson")

Finland = nordiske-flag("white", "white", "white", "white", "navy", "navy", "navy", "navy", "navy")

Faroyene = nordiske-flag("white", "white", "white", "white", "royal-blue", "royal-blue", "royal-blue", "royal-blue", "crimson")


Norge
Danmark
Sverige
Island
Finland
Faroyene
